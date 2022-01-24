##############################################################
# THIS IS A LEGAL PROGRAM, DON'T USE THIS FOR ILLEGAL ATTACKS! 
# ONLY ASSHOLES ATTACK PRIVATE ORGS! 
# RESPECT!
# COPYRIGHT DIO-BRANDO, JOSH WASH 2021-2022
##############################################################
if [ $1 == '--help' ]; then
    echo -e "Usage: ./configure.sh [OPTION]
./configure.sh -c  --no-color to disable color
./configure.sh -h  --help to show this message and exit"
    exit 1
fi
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
