#  {{ ansible_managed }}
# Fail2Ban action configuration file for ufw
#
# You are required to run "ufw enable" before this will have any effect.
#
# The insert position should be appropriate to block the required traffic.
# A number after an allow rule to the application won't be of much use.

[Definition]

actionstart =

actionstop =

actioncheck =

actionban = ufw insert <insertpos> <blocktype> from <ip> to <destination> app <application>

actionunban = ufw delete <blocktype> from <ip> to <destination> app <application>

[Init]
# Option: insertpos
# Notes.:  The position number in the firewall list to insert the block rule
insertpos = 1

# Option: blocktype
# Notes.: reject or deny
blocktype = reject

# Option: destination
# Notes.: The destination address to block in the ufw rule
destination = any

# Option: application
# Notes.: application from sudo ufw app list
application =

# DEV NOTES:
#
# Author: Guilhem Lettron
# Enhancements: Daniel Black