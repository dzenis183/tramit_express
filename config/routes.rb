# frozen_string_literal: true

Rails.application.routes.draw do
  # devise routes for admin
  devise_for :admins, skip: [:registrations], path: 'admin', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock'
  }, controllers: {
    sessions: 'admins/sessions',
    confirmations: 'admins/confirmations',
    passwords: 'admins/passwords',
    unlocks: 'admins/unlocks'
  }
  as :admin do
    authenticated :admin do
      root to: 'admins/dashboard#index', as: :authenticated_admin_root
      resource :registration,
               only: %i[edit update show],
               path: 'profile',
               path_names: { edit: 'edit' },
               controller: 'admins/registrations',
               as: :admin_registration
      resources :agents,
                path: 'agents',
                controller: 'admins/agents',
                as: :admins_agents
      resources :categories,
                path: 'categories',
                controller: 'admins/categories',
                as: :admins_categories
      resources :forms,
                path: 'forms',
                controller: 'admins/forms',
                as: :admins_forms
      resources :paypal_plans,
                path: 'paypal_plans',
                controller: 'admins/paypal_plans',
                as: :admins_paypal_plans
      resources :paypal_subscriptions,
                path: 'paypal_subscriptions',
                controller: 'admins/paypal_subscriptions',
                as: :admins_paypal_subscriptions
    end
  end
  # devise routes for agent
  devise_for :agents, skip: [:registrations], path: 'agent', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock'
  }, controllers: {
    sessions: 'agents/sessions',
    confirmations: 'agents/confirmations',
    passwords: 'agents/passwords',
    unlocks: 'agents/unlocks'
  }
  as :agent do
    authenticated :agent do
      root to: 'agents/dashboard#index', as: :authenticated_agent_root
      resource :registration,
               only: %i[edit update show],
               path: 'profile',
               path_names: { edit: 'edit' },
               controller: 'agents/registrations',
               as: :agent_registration
      resource :subscription,
               path: 'subscription',
               controller: 'agents/subscription',
               as: :agents_subscription do
        collection do
          post :paypal_subscription_fee_checkout
          get :paypal_subscription_fee_execute
          get :paypal_subscription_fee_cancel
        end
      end
      resources :customers,
                path: 'customers',
                controller: 'agents/customers',
                as: :agents_customers do
        resources :categories,
                  path: 'categories',
                  only: %i[index show],
                  controller: 'agents/categories',
                  as: :agents_categories
        resources :forms,
                  path: 'forms',
                  only: %i[show],
                  controller: 'agents/forms',
                  as: :agents_forms do
          resources :customer_forms,
                    path: 'customer_forms',
                    controller: 'agents/customer_forms',
                    as: :agents_customer_forms do
            member do
              get :print
            end
            collection do
              post :paypal_form_fee_checkout
              get :paypal_form_fee_execute
              get :paypal_form_fee_cancel
            end
          end
        end
      end
      get '/new_form', to: 'agents/dashboard#new_form', as: :agents_new_form
    end
  end

  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
