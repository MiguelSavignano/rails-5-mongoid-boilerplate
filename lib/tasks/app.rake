namespace :app do
  desc "Run unit test in loop"
  task test: :environment do
    LoopTest.run
  end
end
