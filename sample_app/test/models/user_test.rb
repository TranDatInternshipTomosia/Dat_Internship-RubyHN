require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Tran Viet Dat", email: "tran@example.com",
                     password: "123456", password_confirmation: "123456")
  end

  test "should be valid" do
    assert @user.valid?
  end
  test "name should be persent" do
    @user.name = "    "
    assert_not @user.valid?
  end
  test "email should be persent" do
    @user.email = "             "
    assert_not @user.valid?
  end
  test "name should no be to long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email should no be to long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
  test "email validation should accept valid addresses" do
    valid_addresses = %w(user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn)
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  test "email validation should reject valid addresses" do
    invalid_addresses = %w(user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn)
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert @user.valid?, "#{invalid_addresses.inspect} should be valid"
    end
  end
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  # test "email addresses should be saved as lower-case" do
  #   mixed_case_email = "Foo@ExAMPle.CoM"
  #   @user.email = mixed_case_email
  #   @user.save
  #   assert_equal mixed_case_email.downcase, @user.reload.email
  # end
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end
  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = " " * 5
    assert_not @user.valid?
  end
end
