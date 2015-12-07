Rails.application.routes.draw do
  get 'signin.html' => 'sessions#new'
  get 'signin' => 'sessions#new'

  post 'signin.html' => 'sessions#create'

  get 'signup.html' => 'users#new'
  get 'signup' => 'users#new'

  get 'signout.html' => 'sessions#destroy'
  get 'signout' => 'sessions#destroy'

  get 'progress_summary.html' => 'pages#progress_summary'
  get 'progress_summary' => 'pages#progress_summary'

  get 'exercise_menu.html' => 'pages#exercise_menu'
  get 'exercise_menu' => 'pages#exercise_menu'

  get 'exercise.html' => 'pages#exercise'
  get 'exercise' => 'pages#exercise'

  get 'feedback.html' => 'pages#feedback'
  get 'feedback' => 'pages#feedback'

  get 'home.html' => 'pages#homepage'
  get 'home' => 'pages#homepage'

  post 'github' => 'github#push'

  get 'dyspraxiainfo.html' => 'pages#dyspraxiainfo'
  get 'dyspraxiainfo' => 'pages#dyspraxiainfo'

  get 'aboutUs.html' => 'pages#aboutus'
  get 'aboutUs' => 'pages#aboutus'

  get 'FAQS.html' => 'pages#faq'
  get 'FAQS' => 'pages#faq'

  get 'termsAndCond.html' => 'pages#termsandconditions'
  get 'termsAndCondl' => 'pages#termsandconditions'

  get 'account.html' => 'users#show'
  get 'account' => 'users#show'

  post 'exercise_completed' => 'pages#exercise_completed'

  resources :users

  root 'pages#homepage'

end
