# nxc

% netexec, windows, Active directory
#plateform/linux #target/local #cat/AD/RECON


## DB - get admin accounts
```bash
sqlite3 ~/.nxc/workspaces/<nxc_workspace|default>/<nxc_proto|smb>.db -json -cmd "select u.id, u.domain || '\' || u.username as login, u.password, h.ip, h.hostname from users as u right join admin_relations as a on u.id = a.userid left join hosts as h on a.hostid = h.id;" ".quit" | jq
```