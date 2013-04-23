PGCrypto Ransack
==

This gem extends PGCrypto to work with Ransack.

Installation
--

Add `pgcrypto_ransack` to your Gemfile *after* pgcrypto.

    gem 'pgcrypto'
    gem 'pgcrypto_ransack'

Usage
--

Call ransack with the column name as you would, normally.

    class MyModel < ActiveRecord::Base
      pgcrypto :my_column
    end

    MyModel.search(my_column_eq: 'value').result

