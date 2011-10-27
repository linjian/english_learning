EnglishLearning::Application.routes.draw do
  root :to => 'articles#index'

  resources :articles, :only => [:index, :show, :new, :create] do
    resources :word_marks, :only => [:create]
  end
end
