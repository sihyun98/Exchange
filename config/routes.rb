Rails.application.routes.draw do

  devise_for :users
  get 'club/home_club'
  get 'club/new_club'
  post 'club/create_club'
  get 'club/edit_club/:club_id' => 'club#edit_club'
  post 'club/update_club/:club_id' => 'club#update_club'
  post 'club/destroy_club/:club_id' => 'club#destroy_club'
  get 'club/index_club/:club_id' => 'club#index_club'
  get 'clubs/index_club/:club_id/comment_clubs/create' => 'comment_clubs#create'
  get 'clubs/index_club/:club_id/comment_clubs/destroy/:commentclubs_id' => 'comment_clubs#destroy'
  
  get 'matching/home_matching'
  get 'matching/new_matching'
  post 'matching/create_matching'
  get 'matching/edit_matching/:matching_id' => 'matching#edit_matching'
  post 'matching/update_matching/:matching_id' => 'matching#update_matching'
  post 'matching/destroy_matching/:matching_id' => 'matching#destroy_matching'
  get 'matching/index_matching/:matching_id' => 'matching#index_matching'
  get 'matchings/index_matching/:matching_id/commentmatchings/create' => 'commentmatchings#create'
  get 'matchings/index_matching/:matching_id/commentmatchings/destroy/:commentmatchings_id' => 'commentmatchings#destroy'
  
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
  get 'notice/edit_notice/:notice_id' => 'notice#edit_notice'
  post 'notice/update_notice/:notice_id' => 'notice#update_destroy'
  post 'notice/destroy_notice/:notice_id' => 'notice#destroy_notice'
  
  get 'review/home_review'
  get 'review/new_review'
  post 'review/create_review'
  get 'review/index_review/:review_id' => 'review#index_review'
  get 'review/edit_review/:review_id' => 'review#edit_review'
  post 'review/update_review/:review_id' => 'review#update_review'
  post 'review/destroy_review/:review_id' => 'review#destroy_review'
  get 'reviews/index_review/:review_id/coreviews/create' => 'coreviews#create'
  get 'reviews/index_review/:review_id/coreviews/destroy/:coreviews_id' => 'coreviews#destroy'
  
  get 'question/home_question'
  get 'question/new_question'
  post 'question/create_question'
  get 'question/edit_question/:question_id' => 'question#edit_question'
  post 'question/update_question/:question_id' => 'question#update_question'
  post 'question/destroy_question/:question_id' => 'question#destroy_question'
  
  root 'main#index_main'
  get 'main/index_main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
