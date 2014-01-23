% Intro Linux Security
% Jared Bater &amp; Theo Baschak
% CCDC Prep January 25, 2014


# Online HTML5 Slides

Presentation source/download available at [github.com/tbaschak/intro-linux-security](https://github.com/tbaschak/intro-linux-security)

# Topics to be covered

*	Good Practices
*	Passwords
*	File Permissions
*	Processes and sockets (ps and netstat)
*	Boot process
*	Run levels
*	Services
*	iptables
*	Logs
*	SE Linux
*	Updating (APT / Yum, etc)

# Good Practices

*	Check signatures on packages/sources (GPG, MD5, SHA)
*	Use sudo instead of su, or logging in as root
*	Don't use/offer plaintext authenticated services
*	Don't add . to root's $PATH

# Passwords

*	Define minimum password lengths, complexity, and validity period
*	Passwords should always be stored salted and hashed
*	Low-length passwords can be cracked programmatically in surprisingly low time
	*	Especially if logs not monitored
*	Local authentication can give access to other services (SMTP credentials)

# File Permissions

# Processes &amp; Sockets

# Boot Process

# Run Levels

# Services

# iptables (Firewalls)

*	Default Allow (or can be configred to default deny)
*	Various chains (INPUT, OUTPUT, FORWARD by default)
	*	Can create other chains chains for custom rulesets

#  Block All Inbound

```bash
/sbin/iptables -P INPUT DROP
/sbin/iptables -P FORWARD DROP
/sbin/iptables -P OUTPUT ACCEPT
/sbin/iptables -A INPUT -m state --state NEW,ESTABLISHED -j ACCEPT
/sbin/iptables -L -v -n
```

# Logs

# SELinux


# Updating

*	Small updates usually easier than large updates
*	Redhat/Centos => ```yum update```
*	Debian/Ubuntu => ```apt-get update; apt-get upgrade```

# Questions / End

*	Question & Answer period as time permits.

. . .

*	Presentation source/download available at [github](https://github.com/tbaschak/intro-linux-security)
