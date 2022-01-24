#!/bin/ruby

##############################################################
# THIS IS A LEGAL PROGRAM, DON'T USE THIS FOR ILLEGAL ATTACKS! 
# ONLY ASSHOLES ATTACK PRIVATE ORGS! 
# RESPECT!
# COPYRIGHT DIO-BRANDO, JOSH WASH 2021-2022
##############################################################

def init_message()
    red = "\033[1;31m"
    green = "\033[1;32m"
    yellow = "\033[1;33m"
    cyan = "\033[1;36m"
    reset = "\033[0;0m"
    initial_message = "
#{reset}[#{green}##{reset}] This is a free software
#{reset}[#{green}##{reset}] Do not use this for commercial
#{reset}[#{cyan}+#{reset}] Initiliazing program
"
    loading_message = "#{reset}[#{cyan}+#{reset}] Loading scripts...
"
    begin
        print initial_message
        sleep 2
        print loading_message
    rescue SignalException => e
        puts "\n#{reset}[#{red}!#{reset}] Control+C detected. Quitting!"    
        exit(0)
    end
end
def error_initial()
    red = "\033[1;31m"
    reset = "\033[0;0m"
    puts "#{reset}[#{red}!#{reset}] Missing files! Ocurred an error while initiliazing program" 
    exit(0)
end
def current_message(url)
    red = "\033[1;31m"
    green = "\033[1;32m"
    yellow = "\033[1;33m"
    cyan = "\033[1;36m"
    reset = "\033[0;0m"
    puts "#{reset}[#{green}##{reset}] Attacking #{url}" 
end