class AddOption < ActiveRecord::Migration[5.2]
  Option.create(name: 'BATCH_PROCESS', value: 'true')
end
