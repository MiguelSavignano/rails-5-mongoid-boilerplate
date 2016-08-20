namespace :app do
  desc "Run unit test in loop"
  task loop_test: :environment do
    LoopTest.run
    if LoopTest.suite_pass?
      Event.create(message:"Test Pass")
    else
      Event.create(message:"Test Fail")
    end
  end
end
