class SlackNotificationOnSidekiqJob < ApplicationJob
  queue_as :default

  def perform
    notifier = Slack::Notifier.new(
      "××××××××××××××××××××××××××××",
      username: "katakuranatsumi"
    )
    notifier.ping 'Slack通知テスト'
  end
end
