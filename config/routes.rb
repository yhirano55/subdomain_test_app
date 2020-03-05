Rails.application.routes.draw do
  get '/', to: 'welcome#index'

  constraints subdomain: 'sample' do
    get '/', to: 'welcome#index'
  end
end
