#!/usr/bin sh 

if [[ $(ps | grep dnsmasq | grep -v grep | awk '{printf " %s\n",$1}') ]]; then
    kill -9 $(ps |grep dnsmasq |grep -v grep | awk '{printf " %s\n",$1}')
fi

if [[ $(ps | grep chinadns | grep -v grep | awk '{printf " %s\n",$1}') ]]; then
    kill -9 $(ps |grep chinadns |grep -v grep |awk '{printf " %s\n",$1}')
fi

if [[ $(ps | grep ss-tunnel | grep -v grep | awk '{printf " %s\n",$1}') ]]; then
    kill -9 $(ps |grep ss-tunnel |grep -v grep |awk '{printf " %s\n",$1}')
fi

if [[ $(ps | grep ss-redir | grep -v grep | awk '{printf " %s\n",$1}') ]]; then
    kill -9 $(ps |grep ss-redir |grep -v grep |awk '{printf " %s\n",$1}')
fi
