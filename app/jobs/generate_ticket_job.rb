class GenerateTicketJob < ApplicationJob
  queue_as :default

  def perform(*args)
    logger.debug("ActiveJobの確認")
  end
end
