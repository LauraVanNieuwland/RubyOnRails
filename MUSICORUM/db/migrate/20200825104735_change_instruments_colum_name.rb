class ChangeInstrumentsColumName < ActiveRecord::Migration[6.0]
  def change
    rename_column :instruments, :type, :instrument_name
  end
end
