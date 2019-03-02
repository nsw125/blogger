class TagsController < ApplicationController
    def show
        @tag = Tag.find(params[:id])
    end

    def index
        @tag_list = Tag.all
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy

        flash.notice = "The tag '#{@tag.name}' has been deleted."

        redirect_to tags_path
    end
end
