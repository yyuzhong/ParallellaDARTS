/* 
 * Copyright (c) 2011-2014, University of Delaware
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */


#include <iostream>
#include <stdlib.h>
#include <stdint.h>
#include "getClock.h"
#include "darts.h"

using namespace darts;

class cd1 : public Codelet
{
public:
  cd1(uint32_t dep, uint32_t res, ThreadedProcedure * myTP, uint32_t stat):
  Codelet(dep,res,myTP,stat) { }
  
  virtual void fire(void);
};

//This codelet is the continuation of the intiated split phase
class cd2 : public Codelet
{
public:
  cd2(uint32_t dep, uint32_t res, ThreadedProcedure * myTP, uint32_t stat):
  Codelet(dep,res,myTP,stat) { }
  
  virtual void fire(void);
};

//This is the Fib threaded proceduer
class fib : public ThreadedProcedure
{
public:
    //These are the frame variables
    int num;
    int x;
    int y;
    int * result;
    cd1 check;
    cd2 adder;
    //This is who to signal when complete
    Codelet * toSignal;
    
    //Constructor
    fib(int n, int * res, Codelet * toSig):
    ThreadedProcedure(),
    num(n),
    x(0),
    y(0),
    result(res),
    check(0,0,this,SHORTWAIT),
    adder(2,2,this,LONGWAIT),
    toSignal(toSig) 
    {  
        add(&check); 
    }
    
    //~fib(void)
    //{
    //    std::cout << "dieing "<< num << std::endl;
    //}
    
};

void
cd1::fire(void)
{
    fib * myFib = static_cast<fib*>(myTP_);
    
    //std::cout << "check " << myFib->num << std::endl;
    
    if(myFib->num<2)
    {
        (*myFib->result) = myFib->num;
        myFib->toSignal->decDep();
    }
    else
    {
        invoke<fib>(myFib,myFib->num-1,&myFib->x,&myFib->adder);
        invoke<fib>(myFib,myFib->num-2,&myFib->y,&myFib->adder);
    }
}
 
void 
cd2::fire(void)
{ 
    fib * myFib = static_cast<fib*>(myTP_);    
    //std::cout << "add " << myFib->num << std::endl;
    (*myFib->result) = myFib->x + myFib->y;
    myFib->toSignal->decDep();
}

int
main(int argc, char *argv[])
{
    int fibnum;
    int result = 0;
    timespec start, end;

    if (argc != 2)
    {
        std::cout << "error need a num" << std::endl;
        return 0;
    }

    fibnum = atoi(argv[1]);

    ThreadAffinity affin(3U, 1U, COMPACT, TPDYNAMIC, MCDYNAMIC);
    if (affin.generateMask())
    {
        std::cout << "fib(" << fibnum << ")" << std::endl;
        getTime(&start);
        Runtime(&affin).run(launch<fib >(fibnum, &result, &Runtime::finalSignal));
        getTime(&end);

        std::cout << result << std::endl;
        std::cout << "Total Time Taken: " << seconds(end - start) << " sec" << std::endl;
    }

    return 0;
}
