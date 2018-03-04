#!/bin/bash
#superryanguo@outlook.com
#A script to pick and do your work

actInput='cat ./sampleData/sample.log'
#actInput='nova show myComput'
#actInput='openstack image list'
#actInput='openstack image show myImage'

#better use the unique id as the first value: objectids
objectids=()
avalue=()
bvalue=()
pickIndex=()

ocount=0
acount=0
bcount=0

#make it beautiful
DEFAULT=`echo "\033[m"`
BLUE=`echo "\033[36m"`
RED=`echo "\033[31m"`

function picklistDelObjec()
{
    echo ${FUNCNAME[0]}
}

function testAddDel()
{
    echo ${FUNCNAME[0]}
}

function picklistAddObjec()
{
    echo ${FUNCNAME[0]}
}

function listPickedList()
{
    echo ${FUNCNAME[0]}
    local i; local o; local a; local b;
    for i in ${pickIndex[@]}
        do
        o=${objectids[$i]}
        a=${avalue[$i]}
        b=${bvalue[$i]}
        echo -e "${DEFAULT}${RED}$o${DEFAULT}---$a --- $b --- ${DEFAULT}"
        done
}

function listTotalList()
{
    echo ${FUNCNAME[0]}
    local i; local o; local a; local b;
     for ((i=0; i<$ocount; i++));do
        o=${objectids[$i]}
        a=${avalue[$i]}
        b=${bvalue[$i]}
        echo -e "${DEFAULT}${RED}$o${DEFAULT}---$a --- $b --- ${DEFAULT}"
        done
}

# progressbar <current> <total>  
function progressbar()
{  
  local curr=$1; local tota=$2;  
  local maxlen=80; local barlen=66; local perclen=14;  
  local format="%-${barlen}s%$((maxlen-barlen))s"  
  local perc="[$curr/$tota]"  
  local progress=$((curr*barlen/tota))  
  local prog=$(for i in `seq 0 $progress`; do printf '#'; done)  
  printf "\r$format" $prog $perc  
}  

function initData()
{
    echo ${FUNCNAME[0]}

    objectids=($($actInput | awk -F\| 'NR!=1 && NR!=2 && NR!=3{print  $2 }'))
    avalue=($($actInput | awk -F\| 'NR!=1 && NR!=2 && NR!=3{print  $3 }'| sed 's/[[:space:]]//g'))
    bvalue=($($actInput | awk -F\| 'NR!=1 && NR!=2 && NR!=3{print  $4 }'| sed 's/[[:space:]]//g'))
    ocount=${#objectids[@]}
    acount=${#avalue[@]}
    bcount=${#bvalue[@]}
    pickIndex=(1 3 5 7 9)

    if [ $ocount -ne $acount ] || [ $bcount -ne $ocount ];then
        echo -e "${RED}COUNT MISMATCH! ERROR!${DEFAULT}"
    fi
}
function cleanData()
{
    echo ${FUNCNAME[0]}
    unset objectids
    unset avalue
    unset bvalue
    unset pickIndex
    unset ocount
    unset acount
    unset bcount

}
function usage()
{
    echo ${FUNCNAME[0]}

}

function main()
{
initData
usage 
listTotalList
}

main

