require 'spec_helper'

describe ApplicationController do
  it 'should set and get current user' do
    @controller = ApplicationController.new
    @controller.send(:set_current_user)
    @controller.send(:current_user).should_not be_nil
  end
end
