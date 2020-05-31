class GenerateTicketJob < ApplicationJob
  queue_as :default

  def perform
    notifier = Slack::Notifier.new(
      "https://hooks.slack.com/services/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",
      username: "katakuranatsumi"
    )
    notifier.ping 'Slack通知テスト'
  end
end
