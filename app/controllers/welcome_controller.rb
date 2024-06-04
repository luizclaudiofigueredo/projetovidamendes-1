class WelcomeController < ApplicationController
  def index
      @estatisticas = Estatistica.all.limit(6).order(created_at: :desc)
  end
end
