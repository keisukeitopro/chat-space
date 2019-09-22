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
- has_many :groups
- has_many :posts
- has_many :groups, through: :groups_users

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

### Association（groups）
- has_many :users
- has_many :posts
- has_many :users, through: :groups_users


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|index: true|
|image|string||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association（posts）
- belongs_to :group
- belongs_to :user
