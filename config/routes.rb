Rails.application.routes.draw do
  get "/", to:'staticpages#home'
  get "/help", to:'staticpages#help'
  get "/contact", to:'staticpages#contact'
end
