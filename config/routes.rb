Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  root "posts#index"
end

#COMMENTS are nested inside the post. If we go to rake routes
# we will see that we will have paths like: /posts/:post-id/comments
# because we will have different comments for every id/post. The comments belong to
# post and there's no way to go to Comments without going to Posts first 
