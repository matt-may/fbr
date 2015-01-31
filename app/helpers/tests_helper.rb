module TestsHelper
  def already_answered?(question)
    results = @test.results
    results.each do |result|
      return true if result.question == question
    end
    false
  end
end