# MultipleRoutes
Install this gem if you want to manage your app's routes in a smarter way.
You'll be able to split routes files into a routes folder and keep everything tidy and clean.

## Installation
Go for it, install like this:

    gem 'multiple_routes' # In your gemfile

Then bundle install.

## Usage
Simply create a folder in your config/ called _routes_ and create any file as follows:

    # config/routes/api.rb
    namespace :api, defaults: {format: 'json'} do
        namespace :v1 do
            resources :posts do
                # Whatever...
            end
        end
    end

Then in your routes.rb file:

    Deploydapp::Application.routes.draw do
        # example posts resource
        resources :posts do
            resources :pull_requests
        end
        # Api namespace
        draw :api
    end

