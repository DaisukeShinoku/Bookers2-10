# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# 絶対パスから相対パス指定
env :PATH, ENV['PATH']
# ログファイルの出力先
set :output, 'log/cron.log'
# ジョブの実行環境の指定 あとで開発に直す！
set :environment, :development
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end
# every 1.minutes do ##テストのためここを追加
every 1.days, at: '9:00 am' do

# Rails内のメソッド実行
  runner "ThanksMailer.notify_user"
  runner "DailyMailer.daily"
end


# Learn more: http://github.com/javan/whenever
