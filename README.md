# README

# アプリケーション名
カスタマー情報

# アプリケーション概要
ユーザーを登録すると顧客情報を登録することができます。自身が登録した顧客情報は編集と削除とコメントができます。

# URL
Herokuによるデプロイ
https://customer9438.herokuapp.com/
* ...
## users テーブル

| Column             | Type   | Options     
| ------------------ | ------ | ----------- 
| email              | string | null: false 
| encrypted_password | string | null: false 
| family_name        | string | null: false 
| given_name         | string | null: false 
| image_url          | string | null: false 



### Association

- has_many :comments



## costomer テーブル

| Column             | Type   | Options     
| ------------------ | ------ | ----------- 
| first_name         | string | null: false 
| detail             | text   | null: false 
| given_name         | string |    null: false 
| account_number     | string |  null: false 



### Association

- has_many :comments


## comments テーブル

| Column | Type       | Options                        
| ------ | ---------- | ------------------------------ 
| user       | references | 
null: false, foreign_key: true 
| customer   | references | 
null: false, foreign_key: true 
| body       | string|  
null: false 

### Association

- belongs_to :customer
- belongs_to :user
