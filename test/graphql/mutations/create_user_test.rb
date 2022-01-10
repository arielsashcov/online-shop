require 'test_helper'

class Mutations::CreateUserTest < ActiveSupport::TestCase
  def perform(args = {})
    Mutations::CreateUser.new(object: nil, field: nil, context: {}).resolve(**args)
  end

  test 'successfully add a user' do
    user = perform(
      name: 'Test User',
      auth_provider: {
        credentials: {
          email: 'ariel.sashcov@gmail.com',
          password: '[omitted]'
        }
      }
    )

    assert user.persisted?
    assert_equal user.name, 'Test User'
    assert_equal user.email, 'ariel.sashcov@gmail.com'
  end

  test 'failure add user' do
    assert perform.is_a? GraphQL::ExecutionError
  end
end