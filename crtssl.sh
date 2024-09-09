#!/usr/bin/expect

# 获取当前 IP 地址
set ipaddr [exec hostname -I | awk "{print \$1}"]

# 启动 openssl 命令
spawn sudo openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout /etc/trojan/selfsigned.key -out /etc/trojan/selfsigned.crt

# 处理 Country Name 的输入
expect "Country Name (2 letter code) \[AU\]:"
send "AU\r"  # 你可以修改为你想要的国家代码，例如 'CN' 表示中国

# 处理 State or Province Name 的输入
expect "State or Province Name (full name) \[Some-State\]:"
send "Some-State\r"  # 修改为实际的省份或州名

# 处理 Locality Name 的输入
expect "Locality Name (eg, city) \[]:"
send "\r"  # 留空，直接按回车

# 处理 Organization Name 的输入
expect "Organization Name (eg, company) \[Internet Widgits Pty Ltd\]:"
send "\r"  # 留空或使用默认值

# 处理 Organizational Unit Name 的输入
expect "Organizational Unit Name (eg, section) \[]:"
send "\r"  # 留空，直接按回车

# 处理 Common Name 的输入，使用当前 IP 地址
expect "Common Name (e.g. server FQDN or YOUR name) \[]:"
send "$ipaddr\r"  # 发送当前的 IP 地址

# 处理 Email Address 的输入
expect "Email Address \[]:"
send "\r"  # 留空，直接按回车

# 结束交互
expect eof
