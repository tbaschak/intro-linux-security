% Intro Linux Security
% Theo Baschak
% CCDC Prep January 25, 2014


# Online HTML5 Slides

Presentation source/download available at [github.com/tbaschak/intro-linux-security](https://github.com/tbaschak/intro-linux-security)

# Overview

*	Good &amp; Bad Habits
*	Security Policies
*	Passwords
*	Firewall Rules &amp; Exposed Services
*	Keeping Up To Date

# Good Habits

*	Always check signatures on packages/sources
*	Use sudo

# Bad Lazy Habits

*	Working as root
*	Adding . to your $PATH

# Security Policies

*	Firewall rules
*	Password policies
*	Updates

# Firewall Rules

*	Enforces known/approved communication patternse

# Exposed Services

*	Running extra/unknown services &amp; webapps can be dangerous
*	Priviledge escalations

# Password Policies

*	Define minimum password lengths, complexity, and validity period
*	Low-length passwords can be cracked programmatically in surprisingly low time
	*	Especially if logs not monitored
*	Local authentication can give access to other services (SMTP credentials)

# Keeping Up To Date

*	Redhat/Centos => yum
*	Debian/Ubuntu => apt-get/aptitude

# Questions / End

*	Question & Answer period as time permits.

. . .

*	Presentation source/download available at [github](https://github.com/tbaschak/intro-linux-security)
