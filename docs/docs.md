# Diary
catalunha@pop-os:~/apps/cli_api_http_proj1/api$ jrs run
catalunha@pop-os:~/apps/cli_api_http_proj1$ dart ./bin/cli_api_http_proj1.dart -h
catalunha@pop-os:~/apps/cli_api_http_proj1$ dart ./bin/cli_api_http_proj1.dart infos -h
catalunha@pop-os:~/apps/cli_api_http_proj1$ dart ./bin/cli_api_http_proj1.dart infos get

# database
```json
{
    "users": [
        {
            "id": 0,
            "name": "Rodrigo Rahman",
            "email": "rodrigorahman@academiadoflutter.com.br",
            "password": "123"
        },
        {
            "id": 1,
            "name": "Guilherme",
            "email": "guilherme@gmail.com",
            "password": "1234"
        }
    ],
    "infos": [
        {
            "id": "i1",
            "typeString": "a",
            "typeInt": 1,
            "typeDouble": 1.1,
            "typeBool": true,
            "typeOther": {"id":"o1","typeString":"oa"},
            "typeListString": ["aA","aAa"],
            "typeListOther": [{"id":"o1","typeString":"oa"},{"id":"o2","typeString":"ob"}]
        }
    ]
}
```