Rails.application.routes.draw do
  constraints subdomain: '' do
    get '/', to: 'welcome#index'
    get 'hello', to: 'hello#index'
  end

  constraints subdomain: 'sample' do
    get '/', to: 'welcome#index'
  end
end
