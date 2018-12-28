Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  root "posts#index"

get '/about', to: "pages#about" #it means that when we add the/about to the main url
  # we will be directed to the "about" page in the pages folder. It's a static page

end

#COMMENTS are nested inside the post. If we go to rake routes
# we will see that we will have paths like: /posts/:post-id/comments
# because we will have different comments for every id/post. The comments belong to
# post and there's no way to go to Comments without going to Posts first
