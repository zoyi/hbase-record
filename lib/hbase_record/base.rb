require 'hbase_record/cell'
require 'hbase_record/columns'
require 'hbase_record/config'
require 'hbase_record/connection'
require 'hbase_record/finder'
require 'hbase_record/mutation'
require 'hbase_record/row'
require 'hbase_record/scope'
require 'hbase_record/table'
require 'hbase_record/thrift/hbase_types'
require 'hbase_record/thrift/hbase_constants'
require 'hbase_record/thrift/hbase'
require 'hbase_record/schema/table'


module HbaseRecord
  class Base
    include ActiveModel::Conversion

    include HbaseRecord::Schema::Table

    include HbaseRecord::Config
    include HbaseRecord::Finder
    include HbaseRecord::Mutation
    include HbaseRecord::Table
  end
end