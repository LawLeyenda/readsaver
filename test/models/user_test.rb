require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Sean Gelb", email: "smgelb99@gmail.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name = "    "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "    "
    assert_not @user.valid?
  end
  
  test "email should have a maximum length of 50" do
    @user.email = "a" * 51
    assert_not @user.valid?
  end

  test "name should have a maximum length of 50" do
    @user.name = "a" * 52
    assert_not @user.valid?
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  
  test "email follows proper format" do
    not_valid_addresses = %w[smgelb@@#us.gom seangelb.com @aol.com senkaml@..com sean@gmail..com]
    not_valid_addresses.each do |address|
      @user.email = address
      assert_not @user.valid?
      end
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end
  
  test "password exists" do
    @user.password = "    "
    assert_not @user.valid?
  end
  
  test "password minimum length is 6" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
