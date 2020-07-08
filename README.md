# README

## Userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|password|string|null: false, unique: true|
|email|string||
|image|string||
|introduction|text||
### Association
- has_many :Tweet
- has_many :Comment
- has_many :Like


## Tweetテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|image|string||
|user|references|null: false, foreign_key: true|
### Association
- has_many :Tag, through :Tweet_Tag
- has_many :Comment
- belongs_to :User


## Commentテーブル
|Column|Type|Options|
|------|----|-------|
|reply|string|null: false|
|user|references|null: false, foreign_key: true|
|tweet|references|null: false, foreign_key: true|
### Association
- belongs_to :Tweet
- belongs_to :User


## Tagテーブル
|Column|Type|Options|
|------|----|-------|
|body|string||
### Association
- has_many :Tweet, through :Tweet_Tag
- has_many :Tweet_Tag


## Tweet_Tagテーブル
|Column|Type|Options|
|------|----|-------|
|tweet|references|null: false, foreign_key: true|
|tag|references|null: false, foreign_key: true|
### Association
- belongs_to :Tweet
- belongs_to :Tag


## Likeテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|tweet|references|null: false, foreign_key: true|
### Association
- belongs_to :User
- belongs_to :Tweet

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
