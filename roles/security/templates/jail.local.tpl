# {{ ansible_managed }}

[DEFAULT]
ignoreip = {{ fail2ban_ignoreip }}
destemail = {{ devops_email }}


[ssh]
banaction = ufw[application="OpenSSH"]

[nginx-http-auth]
enabled = true
logpath = /var/log/nginx/*error.log
banaction = ufw[application="Nginx Full"]

[nginx-badbots]
enabled  = true
filter = apache-badbots
action = ufw[application="Nginx Full"]
logpath = /var/log/nginx*/*access*.log
bantime = 86400 # 1 day
maxretry = 1

[nginx-noscript]
enabled = true
action = ufw[application="Nginx Full"]
filter = nginx-noscript
logpath = /var/log/nginx*/*access*.log
maxretry = 6
bantime  = 86400 # 1 day
