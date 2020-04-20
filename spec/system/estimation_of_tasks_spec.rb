require 'rails_helper'

describe 'タスク見積り管理機能', type: :system do
  let!(:estimation_of_task_a) { FactoryBot.create(:estimation_of_task) }
  let!(:estimation_of_task_b) { FactoryBot.create(:estimation_of_task, title: '要件定義をする', detail: 'テスト機能の要件定義をします', task_type: "要件定義") }

  describe '一覧表示機能' do
    context 'トップ画面にアクセスした時' do
      before do
        visit root_path
      end

      it 'タスク見積り一覧が表示される' do
        expect(page).to have_content 'テスト機能を作成する'
        expect(page).to have_content '要件定義をする'
      end
    end
  end

  describe '新規作成機能' do
    context '全てのフォームに妥当な値を入力した時' do
      before do
        visit new_estimation_of_task_path
        fill_in 'タイトル', with: 'ログイン機能の実装'
        fill_in '詳細', with: 'タスクアプリのログイン機能を実装します。'
        select '開発', from: 'estimation_of_task_task_type'
        click_on '登録する'
      end

      it '成功しタスク見積りが登録される' do
        expect(page).to have_content '「ログイン機能の実装」を登録しました。'
      end
    end
  end
end
