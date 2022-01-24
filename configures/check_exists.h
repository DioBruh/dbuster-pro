/*************************************************************
* THIS IS A LEGAL PROGRAM, DON'T USE THIS FOR ILLEGAL ATTACKS! 
* ONLY ASSHOLES ATTACK PRIVATE ORGS! 
* RESPECT!
* COPYRIGHT DIO-BRANDO, JOSH WASH 2021-2022
**************************************************************/


#ifndef EXISTS
#include <stdio.h>
#include <unistd.h>
#include <stdbool.h>
bool check(const char *file)
{
    if(access(file, F_OK) == 0)
    {
        return true;
    } 
    else 
    {
        return false;
    }
}
#endif