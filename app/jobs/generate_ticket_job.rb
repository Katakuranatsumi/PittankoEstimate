class GenerateTicketJob < ApplicationJob
  queue_as :default

  def perform
    p "ActiveJobの確認"
  end
end
