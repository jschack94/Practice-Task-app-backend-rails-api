class NotesController < ApplicationController

    def create
      note = Note.new(user_id: params[:user_id], title: params[:title], content: params[:content])
      if note.valid?
        note.save
        render json: note
      else
        render json: {error: 'note could not be created'}
      end
    end
    
    def update
      note = Note.find(params[:id])
      if note.valid?
        note.update(title: params[:title], content: params[:content])
        render json: note
      else
        render json: {error: 'note could not be edited'}
      end
    end
  
    def destroy
      note = Note.find(params[:id])
      if note.valid?
        note.delete
        render json: note
      else
        render json: {error: 'note could not be deleted'}
      end
    end
  end