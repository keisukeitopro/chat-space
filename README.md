# README

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


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|index: true, null: false, unique: true|
|email|string|index: true, null: false, unique: true|
|password|integer|null: false, foreign_key: true|

### Association（users）
- has_many :group
- has_many :post
- belongs_to :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association（groups_usersテーブル）
-has_many:user
-has_many:group

## groupsテーブル（中間テーブル）
|Column|Type|Options|
|------|----|-------|
|groupname|string|index: true, null: false, unique: true|
|user_id|integer|null: false, foreign_key: true|

### Association（groups）
- has_many :user
- belongs_to :groups_users

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|index: true, null: false|
|photo|string|null: false, foreign_key: true|

### Association（posts）
- has_many :group
- has_many :user