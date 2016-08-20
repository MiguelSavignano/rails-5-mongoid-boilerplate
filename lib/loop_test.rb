class LoopTest
  def self.run
    @response = `bundle exec spring rspec --format progress`
    suite_pass?
  end
  def self.loop_run
    loop do
      run
    end
  end
  def self.suite_pass?
    @response.include?("0 failures")
  end
  def self.suite_fail?
    !suite_pass?
  end
end
