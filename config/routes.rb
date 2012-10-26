Rails.application.routes.draw do
  #match 'surveys', :to                                      => 'surveyor#new', :as    => 'available_surveys', :via => :get
  #match 'surveys/:survey_code', :to                         => 'surveyor#create', :as => 'take_survey', :via       => :post
  #match 'surveys/:survey_code', :to                    => 'surveyor#export', :as => 'export_survey', :via     => :get
  match 'surveys/:survey_code/:response_set_code', :to      => 'surveys#show', :controller => "surveys", :as   => 'view_my_survey', :via    => :get
  match 'surveys/:survey_code/:response_set_code/take', :to => 'surveys#edit', :controller => "surveys", :as   => 'edit_my_survey', :via    => :get
  match 'surveys/:survey_code/:response_set_code', :to      => 'surveys#update', :controller => "surveys", :as => 'update_my_survey', :via  => :put
end