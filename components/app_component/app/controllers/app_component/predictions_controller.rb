require_dependency "app_component/application_controller"

module AppComponent
  class PredictionsController < ApplicationController
    def new
      @teams = AppComponent::Team.all
    end

    def create
      puts toto: params
      predictor = Predictor.new(AppComponent::Team.all)
      predictor.learn(AppComponent::Game.all)
      @prediction = predictor.predict(
        AppComponent::Team.find(params["first_team"]["id"]),
        AppComponent::Team.find(params["second_team"]["id"]))
    end
  end
end

# {:toto=><ActionController::Parameters {"first_team"=>{"id"=>"1"}, "second_team"=>{"id"=>"2"}, "controller"=>"app_component/predictions", "action"=>"create"} permitted: false>}
