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

}

function listTotalList()
{
    echo ${FUNCNAME[0]}
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
}

main

