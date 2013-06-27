require 'spec_helper'
require 'jira-cucumber'

describe JiraFormatter do   
  it 'runs without error' do
    run_feature('everything')
  end
  
  context 'feature exists in jira in the failing state' do
    context 'the run passes' do             
      it 'moves the feature to passed' do
        
      end
      
      it 'adds a comment' do
        
      end
    end
    context 'the run fails' do
      it 'does not move the issue' do
        
      end
      it 'adds a comment' do
        
      end      
    end
  end
  context 'feature exists in jira in the passing state' do
    context 'the run passes' do
      it 'does not move the issue' do

      end

      it 'adds a comment' do

      end
    end
    context 'the run fails' do
      it 'moves the issue to passing' do

      end
      it 'adds a comment' do

      end
    end
  end
end

