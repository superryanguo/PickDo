#!/bin/bash
#superryanguo@outlook.com
#A script to pick and do your work

actInput='cat ./sampleData/sample.log'
#actInput='nova list'

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
}

function testAddDel()
{
}

function picklistAddObjec()
{
}

function listPickedList()
{

}

function listtotaalList()
{
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
}
function cleanData()
{
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

}

function main()
{
initData
}

main

