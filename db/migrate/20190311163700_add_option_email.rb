class AddOptionEmail < ActiveRecord::Migration[5.2]
  Option.create(name: 'EMAIL_SERVICE', value: 'true')
end
