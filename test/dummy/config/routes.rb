Rails.application.routes.draw do

  mount LogWatcher::Engine => "/log_watcher"
end
