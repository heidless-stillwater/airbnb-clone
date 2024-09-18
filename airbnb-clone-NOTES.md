
### [YOUTUBE: Let's build an Airbnb clone with Ruby on Rails - Part 1](https://www.youtube.com/watch?v=D889P37r3bc&list=PLCawOXF4xaJK1_-KVgXyREULRVy_W_1pe)

### [RSpec: AirBNB Clone: How to RSpec - Fairly comprehensive starter guide to RSpec](https://www.youtube.com/watch?v=AAqPc0j_2bg&t=121s)

[TOC]

## CONTENTS
- ### [cheatsheet](#cheatsheet)
- ### [app framework](#appframework)
- #### [webpacker](#webpack)
- ### [gem init](#geminit)
- ### [railsbytes](#railsbytes-template)
- ### [devise](#devise-gem)
- ### [minimal app](#minimalapp)

## CHEATSHEET
### env
```
/bin/zsh --login && rvm use --default 3.2.2

rails routes

rails routes -c api/users

```

### [factory_bot](https://github.com/thoughtbot/factory_bot)
```
bundle add factory_bot

```

### rspec
```

rspec --init      # sets up a base skeleton for RSpec testing in the current app

rspec   # run ALL spec files

rspec spec --format documentation     # run ALL tests with DETAIL of both SUCCESS & FAILURE

rspec spec/models/post_spec.rb --format documentation 

rspec spec/views/posts/index.html.erb_spec.rb --format documentation 

rspec spec/card_spec.rb   #  isolate SPECIFIC test

./spec/card_spec.rb:3   # run spec file from example with LINE NUMBER = 3

```
### git
```
git checkout main

export H_BRANCH='rspec-0'
echo ${H_BRANCH}

git branch -d ${H_BRANCH}               # Delete local

git push -d origin ${H_BRANCH}   # Delete remote


```
---

## AppFramework
```
# [railsbytes: rails templates](https://railsbytes.com/)
APP_NAME=airbnb-app-1
RAILS_BUILD_VERSION=7.2.1

# WITHOUT TESTS
rails _${RAILS_BUILD_VERSION}_ new ${APP_NAME} -T -d postgresql -cc tailwind

cd ${APP_NAME}

rails db:create


```

## rspec
```
vi Gemfile
--
group :development, :test do
  gem 'rspec-rails'
  ...
--
bundle install

rails generate rspec:install
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb

rspec spec --format documentation


```

# devise
```
vi Gemfile
--
gem 'devise'

--
bundle install

rails g devise:install
rails g devise User   # create devise Users

# IF NEEDED
# rails db:rollback

rails db:migrate db:test:prepare

rails g devise:views

```

# (M)aterial (D)esign (B)ootstrap (MDB)
## [mdb: installation](https://mdbootstrap.com/docs/standard/extended/registration/)
```
npm install -g mdb-cli

mdb register 
--
name: 
rob

username:
heidless

email: 
lockhart.r@gmail.com

password:
Havana111065
            
--

mdb login

# initialize a project
mdb frontend init mdb5-free-standard

mdb frontend init mdb5-free-standard

cd mdb5-free-standard
npm install

```

## [mdb: cdn](https://mdbootstrap.com/docs/standard/extended/registration/)
```

```

# [signup modal](https://auth.freshbooks.com/service/auth/integrations/sign_in?_gl=1*y5hk91*_gcl_au*MTg5MjcyNjY1NC4xNzExOTc4MDAx*_ga*MTc4MDg0MTQ4OS4xNjg5NzcyNDcy*_ga_LNDHWTHSMK*MTcxOTU3ODM5Ni4yNTkuMC4xNzE5NTc4Mzk2LjYwLjAuMA..)


# [tailwindcss](https://tailwindcss.com/docs/installation)
```
npm install -D tailwindcss
npx tailwindcss init

```


























###############################################
###############################################
###############################################
## webpack
```
https://yarnpkg.com/lang/en/docs/install/

npm install --global yarn

rails webpacker:install

```

## railsbytes-template
### https://railsbytes.com/public/templates/z0gsLX
# install RSpec template
```
rails app:template LOCATION="https://railsbytes.com/script/z0gsLX"
---
# remove 'test' directory: y
```

## devise-gem
```

rails g devise:install
rails g devise User   # create devise Users

# IF NEEDED
# rails db:rollback

rails db:migrate RAILS_ENV=test


```

## MinimalApp
```
rails g scaffold posts title:string body:text user:references views:integer

vi db/migrate/*_create_posts
--
      t.integer :views, default: 0

--
rails db:migrate RAILS_ENV=test

rspec spec --format documentation

rails db:migrate RAILS_ENV=development

rails s

```

