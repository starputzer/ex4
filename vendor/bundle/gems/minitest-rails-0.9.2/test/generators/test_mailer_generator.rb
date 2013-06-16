require "helper"
require "generators/mini_test/mailer/mailer_generator"

class TestMailerGenerator < GeneratorTest

  def test_mailer_generator
    assert_output(/create  test\/mailers\/notification_test.rb/m) do
      MiniTest::Generators::MailerGenerator.start ["notification"]
    end
    assert File.exists? "test/mailers/notification_test.rb"
    contents = File.read "test/mailers/notification_test.rb"
    assert_match(/class NotificationTest/m, contents)
  end

  def test_mailer_generator_spec
    assert_output(/create  test\/mailers\/notification_test.rb/m) do
      MiniTest::Generators::MailerGenerator.start ["notification", "welcome", "--spec"]
    end
    assert File.exists? "test/mailers/notification_test.rb"
    contents = File.read "test/mailers/notification_test.rb"
    assert_match(/describe Notification do/m, contents)
  end

end
