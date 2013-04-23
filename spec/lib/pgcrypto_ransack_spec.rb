require 'spec_helper'

class Foo < ActiveRecord::Base
  extend PGCrypto::ClassMethods
  def self.ransacker(*args)
  end
end

describe PGCrypto::ClassMethods do
  describe '#pgcrypto' do
    it 'calls ransacker with the column names passed' do
      Foo.should_receive(:ransacker).with(:bar)
      Foo.should_receive(:ransacker).with(:baz)
      Foo.pgcrypto(:bar, :baz)
    end

    it 'calls the original' do
      Foo.should_receive(:old_pgcrypto).with(:baz, :qux)
      Foo.pgcrypto(:baz, :qux)
    end
  end
end
