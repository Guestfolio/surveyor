Surveyor::Engine.routes.draw  do
  with_options controller: "surveys" do |o|
  	o.match '/', :to                                     		 => 'surveys#index',  :as => 'available_surveys', via: :get
  	o.match '/:survey_code/:response_set_code', :to      => 'surveys#show',   :as => 'view_my_survey',    via: :get
  	o.match '/:survey_code/:response_set_code/take', :to => 'surveys#edit',   :as => 'edit_my_survey',    via: :get
  	o.match '/:survey_code/:response_set_code', :to      => 'surveys#update', :as => 'update_my_survey',  via: :put
  end
end