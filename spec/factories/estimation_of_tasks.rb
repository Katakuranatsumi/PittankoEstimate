FactoryBot.define do
  factory :estimation_of_task do
    title { 'テスト機能を作成する' }
    detail { 'Rails・Rubyでテスト機能を作成します' }
    task_type { '開発' }
  end
end
