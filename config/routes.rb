Rails.application.routes.draw do
  root 'staticpages#home'
  get "/help", to:'staticpages#help'
  get "/contact", to:'staticpages#contact'
  get "/about", to:"staticpages#about"
end
