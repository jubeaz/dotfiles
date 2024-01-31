# ufw

## status
```bash
sudo ufw status verbose numbered
``` 

## logging off
```bash
sudo ufw logging <ufw_log_status|on>
```

## logging on
On (low):       Logs all blocked or allowed packets by defined policies.
On (medium):    Same as above, and additionally, it includes packets not matching policies.
On (High):      Logs all rate-limiting and without rate limiting.
On (Full):      Logs all packets without rate limiting.
```bash
sudo ufw logging <ufw_log_status|low>
```

## set default
```bash
sudo ufw default <ufw_action|deny> <ufw_source|incoming>
```


## add incoming rule 
```bash
sudo ufw <ufw_action|allow> proto <proto|tcp> from <ufw_allowed_cidr> to any port <ufw_port>
``` 

## add incoming rule (port range)
```bash
sudo ufw <ufw_action|allow> proto <proto|tcp> from <ufw_allowed_cidr> to any port <ufw_port_min>:<ufw_port_max>
``` 


## insert incoming rule
```bash
sudo ufw insert <ufw_rule_id> <ufw_action|allow> proto <proto|tcp>  from <ufw_allowed_cidr>  to any port <ufw_port>
``` 

## delete rule
```bash
sudo ufw delete <ufw_rule_id>
```