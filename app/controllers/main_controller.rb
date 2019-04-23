class MainController < ApplicationController
    def index
        @tasks = Task.all
    end

    def add_task
        ntask = Task.new(:description => params["new_task"], :completed => false)
        ntask.save!

        @tasks = Task.all
        render 'index'
    end
end
