################################################################################
# Security
################################################################################
set ssl_force_tls = yes
set ssl_starttls  = yes

################################################################################
# GPG
################################################################################
#set pgp_sign_as = 61F3AB36DA0E9FAF

################################################################################
# Cache
################################################################################
set header_cache     = ~/.mutt/com.outlook.benmusashi/cache/headers # where to store headers
set message_cachedir = ~/.mutt/com.outlook.benmusashi/cache/bodies  # where to store bodies
set certificate_file = ~/.mutt/com.outlook.benmusashi/certificates  # where to store certs

################################################################################
# E-mail
################################################################################
set realname   = "ben Musashi"
set from       = $imap_user 

################################################################################
# IMAP / SMTP
################################################################################
set imap_check_subscribed
set imap_idle
set imap_keepalive = 60
set imap_list_subscribed
unset imap_passive
set imap_user  = 'benmusashi@outlook.com'
set imap_pass  = `cat  $XDG_CONFIG_HOME/mutt/benmusashi.outlook.passwd` 
#source "gpg -d $XDG_CONFIG_HOME/mutt/com.outlook.benmusashi.password.gpg |"
#set smtp_authenticators = "login" 
set smtp_url  = "smtp://$imap_user:$imap_pass@smtp.office365.com:587"

################################################################################
# Folders
################################################################################
set folder     = "imaps://outlook.office365.com:993"
set spoolfile  = "+INBOX"
set postponed  = "+Drafts"
set record    = "+Sent"
set trash     = "+Deleted"

################################################################################
# Signature
################################################################################
#set signature = "~/.mutt/signatures/personal"

