require 'pg'

p 'Setting up test database...'

def setup_test_database
  connection = PG.connect(dbname: 'chitter_test')

  # to clear the table -

  connection.exec('TRUNCATE messages;')
  connection.exec('TRUNCATE users;')
end
