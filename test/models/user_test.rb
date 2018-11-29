require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def new_user
    User.new(email: 'new_fake_user@example.com',
      password: 'password', password_confirmation: 'password',
      first_name: 'New Fake', last_name: 'User')
  end

  test 'has a required first name' do
    u = new_user
    assert u.valid?
    u.first_name = ''
    refute u.valid?
  end

  test 'has a required last name' do
    u = new_user
    assert u.valid?
    u.last_name = ''
    refute u.valid?
  end

  test 'has a default role of guest' do
    new_user = User.new
    assert_equal new_user.role, 'guest'
  end

  test 'pre-existing User without defined role has a default role of participant' do
    assert_equal users(:unknown).role, 'guest'
  end

  test 'is active by default' do
    assert new_user.active?
  end

  test 'active user is active_for_authentication' do
    u = new_user
    u.active = true
    assert u.active_for_authentication?
  end

  test 'inactive user is not active_for_authentication' do
    u = new_user
    u.active = false
    refute u.active_for_authentication?
  end

  test 'has a string representation of first_name last_name' do
    assert_equal users(:admin).to_s, 'Fake Admin'
  end

  test 'has a string representation of last_name, first_name' do
    assert_equal users(:admin).last_name_first_name, 'Admin, Fake'
  end

end
