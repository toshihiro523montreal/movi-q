# README

# MoviQ DB設計

## postsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|text_id|integer|null: false, foreign_key: true|

### Association
- has_many :comments
- belongs_to :user


## users テーブル
|Column|Type|Options|
|------|----|-------|
|id|string|null:false|
|email|string|null:false, unique: true|
|password|string|null: false|
|nickname|string|null: false|

### Association
- has_many :messages
- has_many :posts


## comments テーブル
|Column|Type|Options|
|------|----|-------|
|id|string|null:false|
|text|string|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post







This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
