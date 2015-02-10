# simple_crud

Intro

## Download

Github: https://github.com/Jordan-deJong/simple_crud.git

Gem: `gem install simple_crud`

## Installation

Load the gem in the appropriate environments using Rails' 3.2+ gem support.

  `gem "simple_crud"`

## Configuration


```ruby

  class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    before_action :confirm_logged_in

    protect_from_forgery with: :exception

    private

    include SimpleCrud

  end

```

## Implementation


```ruby

  def create
    @user = User.new(user_params)
    @user.company_id = session[:company_id]
    create_ @user, users_path, :index
  end

  def update
    update_ @user, user_params, users_path
  end

  def destroy
    destroy_ @user, users_path
  end

```


## Version

0.0.1

## Copyright

Copyright (c) 2015 Jordan de Jong, jordandejong.com.

This project rocks and uses MIT-LICENSE.
