require 'spec_helper'
require 'jira_formatter/formatter'

describe JiraFormatter::Formatter do
  before (:each) do
    stub_const("Reporter", Class.new)
    @io = StringIO.new
    @step_mother = Cucumber::StepMother.new()
    @formatter = JiraFormatter::Formatter.new(@io, @step_mother, {})
  end
  
  describe 'interacts with the stack.' do
    before(:each) do
      stub_const('StateStack', Class.new)
      @state = double('StateStack')
      StateStack.stub(:new).and_return(@state)
    end
  
    it 'pushes the state for feature' do      
      @state.should_receive(:push).with({:feature => {:name => 'A feature'}})
      @formatter.before_feature('A feature')
    end
    
    it 'pop the state for feature' do
      @state.should_receive(:pop)
      @formatter.after_feature()
    end
    
    it 'pushes for feature_element' do
      @state.should_receive(:push).with({:feature_element => {:name => 'A feature element'}})
      @formatter.before_feature_element()
    end
    
    it 'pops for a feature element' do
      @state.should_receive(:pop)
      @formatter.after_feature_element()
    end
    
    it 'pushes '
    
  end
end