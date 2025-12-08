# JwtTool

% jwttool, token, jwt

## Jwt tool Mode all tests
#plateform/linux #target/remote #cat/RECON
```
jwt-tool -M at -t "<url>" -rh "Authorization: Bearer <JWT_Token>" -rh "<other_header>" -rc "<cookies>"
```

## Jwt tool reuse query id
#plateform/linux #target/remote #cat/RECON
```
jwt-tool -Q "<jwttool_id>"
```

## Jwt tool bruteforce key
#plateform/linux #target/local #cat/RECON
```
jwt-tool -d <wordlists.txt> <JWT_token>
```

## tamper token (with secret)
```bash
jwt-tool -p <jwt_secret> -S <jwt_sign_algo|hs256> -T <jwt_token> 
```