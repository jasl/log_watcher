LogWatcher::Engine.routes.draw do
  get "logs/index"
	
	root :to => 'logs#index'
end
