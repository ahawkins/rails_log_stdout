require 'test_helper'

class RailsLogStdoutTest < ActiveSupport::TestCase
  test "rails logger is set" do
    assert_equal Rails.logger, Rails.stdout_logger
  end

  test "action controller goes to stdout" do
    assert_equal ActionController::Base.logger, Rails.stdout_logger
  end

  test "active record goes to stdout" do
    assert_equal ActiveRecord::Base.logger, Rails.stdout_logger
  end

  test "action mailer goes to stdout" do
    assert_equal ActionMailer::Base.logger, Rails.stdout_logger
  end

  test "action view goes to stdout" do
    assert_equal ActionView::Base.logger, Rails.stdout_logger
  end
end
