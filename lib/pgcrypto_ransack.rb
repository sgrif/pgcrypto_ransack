require 'pgcrypto'

module PGCrypto
  module ClassMethods
    alias_method :old_pgcrypto, :pgcrypto

    def pgcrypto(*column_names)
      column_names.each do |column_name|
        ransacker column_name do
          arel_table[column_name]
        end
      end
      old_pgcrypto(*column_names)
    end
  end
end
