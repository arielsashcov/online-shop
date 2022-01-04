module Types
    # https://graphql-ruby.org/type_definitions/input_objects.html
    class AuthProviderCredentialsInput < Types::BaseInputObject
      graphql_name 'AUTH_PROVIDER_CREDENTIALS'
  
      argument :email, String, required: true
      argument :password, String, required: true
    end
  end