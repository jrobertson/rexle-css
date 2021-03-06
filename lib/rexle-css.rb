#!/usr/bin/env ruby

# file: rexle-css.rb

# view test data at 
#       http://a0.jamesrobertson.eu/rorb/r/gemtest/rexle-css/testdata_rexle-css.rdx

class RexleCSS

  attr_reader :to_xpath

  def initialize(raw_selector)

    selector = raw_selector\
            .gsub(/(\w+)#(\w+)/,'\1[@id="\2"]')\
            .gsub(/#(\w+)/,'.[@id="\1"]')\
            .gsub(/\.(\w+)/,'[@class="\1"]')\
            .gsub(/ /,'//').gsub(/>/,'/')\
            .gsub(/^\*$/,'.')\
            .gsub(/(\w+):first-child/,'\1[1]')\
            .gsub(/\[(?<=)(\w+=)(\w+)/,'[@\1"\2"')


    @to_xpath = '//' + selector    
  end

end
