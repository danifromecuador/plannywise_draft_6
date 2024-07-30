class HomeController < ApplicationController
  def index
    @initial_seconds = 15 * 60 # 15 minutes
    @remaining_seconds = calculate_remaining_seconds(@initial_seconds)
  end

  private

  def calculate_remaining_seconds(total_seconds)
    # Calculate the remaining seconds based on server-side logic
    # This is a placeholder; adjust based on actual needs
    total_seconds - (Time.now.to_i % (15 * 60))
  end
end
