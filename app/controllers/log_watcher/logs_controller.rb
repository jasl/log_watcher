# -*- encoding : utf-8 -*-
module LogWatcher
  class LogsController < ApplicationController
    def index
      offset = params[:offset].nil? ? 0 : params[:offset].to_i
      @records = Log.fetch :offset => offset
    end
  end
end
