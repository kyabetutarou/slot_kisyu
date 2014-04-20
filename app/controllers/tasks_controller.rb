class TasksController < ApplicationController

    def create
        @slot_name = SlotName.find(params[:slot_name_id])
        @task = @slot_name.tasks.create(task_params)
        redirect_to slot_name_path (@slot_name.id)
    end

    private

        def task_params
             params[:task].permit(:title)
        end

end
