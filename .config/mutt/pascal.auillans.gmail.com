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
set header_cache     = ~/.mutt/com.gmail.pascal.auillans/cache/headers # where to store headers
set message_cachedir = ~/.mutt/com.gmail.pascal.auillans/cache/bodies  # where to store bodies
set certificate_file = ~/.mutt/com.gmail.pascal.auillans/certificates  # where to store certs

################################################################################
# E-mail
################################################################################
set realname     = "Pascal Auillans"
set from         = $imap_user

################################################################################
# IMAP / SMTP
################################################################################
set imap_check_subscribed
set imap_idle
set imap_keepalive = 60
set imap_list_subscribed
unset imap_passive
set imap_user = "pascal.auillans"
set imap_pass = `cat  $XDG_CONFIG_HOME/mutt/pascal.auillans.gmail.passwd` 
#source "gpg -d $XDG_CONFIG_HOME/mutt/com.gmail.pascal.auillans.password.gpg |"
#set smtp_authenticators = "login" 
set smtp_url = "smtp://$imap_user:$imap_pass@smtp.gmail.com:587/"

################################################################################
# Folders
################################################################################
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed = "+[Gmail]/Drafts"
set record = "+[Gmail]/Sent Mail"
set trash = "+[Gmail]/Trash"

################################################################################
# Signature
################################################################################
#set signature = "~/.mutt/signatures/personal"
