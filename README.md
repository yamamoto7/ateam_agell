|URL                  |method|優先順位|
|:--                  |--:   |:--|
|api/users/sign_in    |POST  ||
|api/users/sign_up    |POST  ||
|api/users/sign_out   |DELETE||
|api/users/profile    |POST  ||
|api/users/profile    |GET   ||
|api/users/:id/profile|GET   ||
||||
||||
||||
||||

# ユーザー関連
### ログイン
POST users/sign_in
###### parameters
```json
{
  "user": {
    "email": (str),
    "password": (str)
  }
}
```
###### response
```json
// 成功の場合 ( status: 200 )
{
  "user": {
    ( user )
  }
}

```

### ログアウト
DELETE users/sign_out
###### parameters
```json
```
###### response
```json
// 成功の場合 ( status: 200 )
```


### 登録
POST users/sign_up
###### parameters
```json
{
  "user": {
    "email": (str),
    "password": (str)
  }
}
```
###### response
```json
// 成功の場合 ( status: 200 )
{
  "user": {
    ( user )
  }
}

```



# オブジェクト
###### user
```json
{
  "id": (int),
  "name": (str)
}

```

#
#
#