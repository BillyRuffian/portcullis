class HealthCheckController < ApplicationController
  rescue_from(Exception) { render head: 503 }

  def show
    head :ok
  end
end
