#!/usr/bin/ruby -w

require 'minitest/autorun'
require 'flay'
require 'action_view'

class TestFlayActionpack < MiniTest::Unit::TestCase
  def test_actionpack_erb
    res = Flay.new.process_erb File.dirname(__FILE__) + '/sample.html.erb'
    assert Sexp === res
    assert res.size > 0
  end
end
