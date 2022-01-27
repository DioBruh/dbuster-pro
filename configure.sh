##############################################################
# THIS IS A LEGAL PROGRAM, DON'T USE THIS FOR ILLEGAL ATTACKS! 
# ONLY ASSHOLES ATTACK PRIVATE ORGS! 
# RESPECT!
# COPYRIGHT DIO-BRANDO, JOSH WASH 2021-2022
##############################################################

cyan='\e[0;36m'
green='\e[0;32m'
red='\e[1;31m'
Escape="\033";
Reset="${Escape}[0m";

if [ $1 == '-h' ] || [ $1 == '--help' ]; then
    echo -e "Usage: ./configure.sh [OPTION]
./configure.sh -h   --help    to show this message and exit
./configure.sh -r   --root    to use this cfg in sudo mode
,/configure.sh -n   --no-root to use this cfg not in sudo mode
./configure.sh -t   --termux  to configure this tool in termux android
"
    exit 1
fi


if [ $1 == '-r' ] || [ $1 == '--root' ]; then
    echo -en $Reset"["; echo -en $green"#"; echo -e $Reset"]" "Starting config script!"
    sleep 2
    [[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { 
        echo -en $Reset"["; echo -en $red"!"; echo -en $Reset"]"; echo -en " You must be root to run the script"; echo -e $Reset ; exit 1;
    } 
    { # try
        gcc configures/*.c -o main
    } || { # catch
        echo gcc does not exist
        echo installing!
        apt install gcc
        #clear
        exit 1 
    }
    gcc configures/*.c -o main
    if ./main --file wordlists/common.txt | grep -q 'fil'; then
        echo continuing...
        clear
    else
        echo -e $red "error, missing files!" echo -e $Reset
        while true; do
            read -p "Do you wish to clone repo again (Y/n)" yn
            case $yn in
                [Yy]* ) cd .. && rm -rf penis && git clone "url mt fodakkk"; break;;
                [Nn]* ) exit;;
                * ) exit 1;;
            esac
        done
        exit 1
    fi
    {
        cp -r lib/ src/  wordlists/ configures/ /usr/bin/
        cp dbuster /usr/bin/   
    } || { # catch
        echo run this program with admin permissions!
        exit 1
    }
    { # try
        chmod +x dbuster
        chmod +x src/init
        chmod +x lib/reqs
    } || { # catch
        echo error, missing files!
        echo creating!
        
        exit 1 
    }
    exit 1
fi

if [ $1 == '-n' ] || [ $1 == '--no-root' ]; then
    clear 
    echo -en $Reset"["; echo -en $green"#"; echo -e $Reset"]" "Starting config script!"
    sleep 2
    { # try
        gcc configures/*.c -o main
    } || { # catch
        echo gcc does not exist
        echo installing!
        apt install gcc
        #clear
        exit 1 
    }
    gcc configures/*.c -o main
    if ./main --file wordlists/common.txt | grep -q 'fil'; then
        echo continuing...
        clear
    else
        echo -e $red "error, missing files!" echo -e $Reset
        while true; do
            read -p "Do you wish to clone repo again (Y/n)" yn
            case $yn in
                [Yy]* ) cd .. && rm -rf penis && git clone "url mt fodakkk"; break;;
                [Nn]* ) exit;;
                * ) exit 1;;
            esac
        done
        exit 1
    fi
    {
        cp -r lib/ src/  wordlists/ configures/ /usr/bin/
        cp dbuster /usr/bin/   
    } || { # catch
        echo bin/local not found, are you using windows? use configure_windows.sh!
        exit 1
    }
    { # try
        chmod +x dbuster
        chmod +x src/init
        chmod +x lib/reqs
    } || { # catch
        echo error, missing files!
        echo creating!
        
        exit 1 
    }
fi

if [ $1 == '-t' ] || [ $1 == '--termux' ]; then
    clear 
    echo -en $Reset"["; echo -en $green"#"; echo -e $Reset"]" "Starting config script!"
    sleep 2
    { # try
        gcc configures/*.c -o main
    } || { # catch
        echo gcc does not exist
        echo installing!
        apt install gcc
        #clear
        exit 1 
    }
    gcc configures/*.c -o main
    if ./main --file wordlists/common.txt | grep -q 'fil'; then
        echo continuing...
        clear
    else
        echo -e $red "error, missing files!" echo -e $Reset
        while true; do
            read -p "Do you wish to clone repo again (Y/n)" yn
            case $yn in
                [Yy]* ) cd .. && rm -rf penis && git clone "url mt fodakkk"; break;;
                [Nn]* ) exit;;
                * ) exit 1;;
            esac
        done
        exit 1
    fi
    {
        cp -r lib/ src/  wordlists/ configures/ $HOME/../usr/bin
        cp dbuster $HOME/../usr/bin
        chmod +x $HOME/../usr/bin/dbuster   
    } || { # catch
        echo bin/local not found, are you using windows? use configure_windows.sh!
        exit 1
    }
    { # try
        chmod +x dbuster
        chmod +x src/init
        chmod +x lib/reqs
    } || { # catch
        echo error, missing files!
        echo creating!
        
        exit 1 
    }
fi
