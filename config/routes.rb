Rails.application.routes.draw do

  devise_for :users
  get 'club/home_club'
  get 'club/new_club'
  post 'club/create_club'
  get 'club/edit_club/:club_id' => 'club#edit_club'
  post 'club/update_club/:club_id' => 'club#update_club'
  post 'club/destroy_club/:club_id' => 'club#destroy_club'
  
  get 'info/home_info'
  get 'info/new_info'
  post 'info/create_info'
  get 'info/edit_info/:info_id' => 'info#edit_info'
  post 'info/update_info/:info_id' => 'info#update_info'
  post 'info/destroy_info/:info_id' => 'info#destroy_info'
  
  get 'notice/home_notice'
  get 'notice/new_notice'
  post 'notice/create_notice'
  get 'notice/edit_notice/:notice_id' => 'notice#edit_notice'
  post 'notice/update_notice/:notice_id' => 'notice#update_notice'
  post 'notice/destroy_notice/:notice_id' => 'notice#destroy_notice'
  
  get 'page/edit_page'
  get 'page/create_page'
  get 'page/home_page'
  get 'page/save_page'
  
  get 'notice/home_notice'
  get 'notice/new_notice'
  post 'notice/create_notice'
  get 'notice/edit_notice/:notice_id' => 'notice#home_notice'
  post 'notice/update_notice/:notice_id' => 'notice#update_destroy'
  post 'notice/destroy_notice/:notice_id' => 'notice#destroy_notice'
  
  get 'review/home_review'
  get 'review/new_review'
  get 'review/create_review'
  get 'review/edit_review'
  get 'review/update_review'
  get 'review/destroy_review'
  
  get 'question/home_question'
  get 'question/new_question'
  post 'question/create_question'
  get 'question/edit_question'
  get 'question/update_question'
  get 'question/destroy_question'
  
  root 'main#index_main'
  get 'main/index_main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
