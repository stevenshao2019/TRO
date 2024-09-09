#!/bin/bash

# 获取当前的 IP 地址
IP_ADDR=$(hostname -I | awk '{print $1}')

# 使用 expect 来自动处理 openssl 的交互输入
expect <<EOF
    spawn sudo openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout /etc/trojan/selfsigned.key -out /etc/trojan/selfsigned.crt
    expect "Country Name" {send "\r"}
    expect "State or Province Name" {send "\r"}
    expect "Locality Name" {send "\r"}
    expect "Organization Name" {send "\r"}
    expect "Organizational Unit Name" {send "\r"}
    expect "Common Name" {send "$IP_ADDR\r"}
    expect "Email Address" {send "\r"}
    expect eof
EOF
