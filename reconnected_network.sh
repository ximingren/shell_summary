#!/bin/bash
ping -c 1 www.baidu.com > /dev/null 2>&1
if [ $? -ne 0 ];then
    date +'%T'
    sudo mentohust -k
    sudo mentohust
fi
