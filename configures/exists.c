/*************************************************************
* THIS IS A LEGAL PROGRAM, DON'T USE THIS FOR ILLEGAL ATTACKS! 
* ONLY ASSHOLES ATTACK PRIVATE ORGS! 
* RESPECT!
* COPYRIGHT DIO-BRANDO, JOSH WASH 2021-2022
**************************************************************/

#include "check_exists.h"
#include <stdio.h>

int main(int argc, char **argv)
{
    if(argv[1] == "-f" || "--file")
    {
        if(check(argv[2]))
        {
            puts("fil");
        }
        else
        {
            puts("not");
        }
    }
    return 0;
}