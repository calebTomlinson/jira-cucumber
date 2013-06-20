require 'spec_helper'
require 'jira_formatter/formatter'

describe 'JiraFormatter::Formatter' do
  describe '#after_features' do
    before :each do
      @step_mother = Cucumber::Runtime.new()
      @io = StringIO.new()
      @formatter = JiraFormatter::Formatter.new(@step_mother, @io, {})

      stub_const('Reporter', Class.new())
      @reporter = mock('Reporter')      
    end
    
    it 'passes the scenarios to the reporter' do
      @formatter.should_receive(:failed_and_passed).and_return([1,2,3,1,2,3])
      Reporter.should_receive(:new).with([1,2,3,1,2,3]).and_return(@reporter)
      @reporter.should_receive(:report)
      
      @formatter.after_features()
    end
  end
end