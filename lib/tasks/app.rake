namespace :app do
  desc "Run unit test in loop"
  task loop_test: :environment do
    loop do
      @response = `bundle exec spring rspec --format progress`
      if @response.include?("0 failures")
        RspecChannel.broadcast({message:"Test Pass"})
      else
        RspecChannel.broadcast({message:"Test Fail"})
      end
    end
  end
end
