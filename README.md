# simple_crud

Clean up those controllers with some simple CRUD!

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
    @user = User.new(user_params) # Create a new class
    @user.company_id = session[:company_id] # Add any other attributes
    create_ @user, users_path, :new # Save the instance, Redirect_to if save successful, #render template if not successful
  end

  def update
    update_ @user, user_params, users_path # Update the instance, Redirect_to if successful, # Always renders edit
  end

  def destroy
    destroy_ @user, users_path # Delete instance, Redirect_to after delete
  end

```


## Version

0.0.2

## Copyright

Copyright (c) 2015 Jordan de Jong, jordandejong.com.

This project rocks and uses MIT-LICENSE.
