# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|

### Association（users）
- has_many :group
- has_many :post
- has_many :groups_users, through: :group

## groups_usersテーブル（中間テーブル）
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association（groups_usersテーブル）
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|
|user_id|integer|null: false, foreign_key: true|

### Association（groups）
- has_many :user
- has_many :groups_users, through: :user

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|index: true|
|image|string||

### Association（posts）
- belongs_to :group
- belongs_to :user
