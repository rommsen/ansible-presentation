# {{ ansible_managed }}
#
# aus http://snippets.aktagon.com/snippets/554-how-to-secure-an-nginx-server-with-fail2ban
# Block IPs trying to execute scripts such as .pl, .exe and other funny scripts.
#
# Matches e.g.
# 192.168.1.1 - - "GET /something.asp
#
[Definition]
failregex = ^<HOST> -.*GET.*(\.asp|\.exe|\.pl|\.cgi|\scgi)
ignoreregex =