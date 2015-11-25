#!/usr/bin/env ruby

# file: rexle-css.rb

class RexleCSS

  attr_reader :to_xpath

  def initialize(raw_selector)

    selector = raw_selector\
            .gsub(/(\w+)#(\w+)/,'\1[@id="\2"]')\
            .gsub(/#(\w+)/,'.[@id="\1"]')\
            .gsub(/\.(\w+)/,'[@class="\1"]')\
            .gsub(/ /,'//').gsub(/>/,'/')\
            .gsub(/^\*$/,'.')

    @to_xpath = '//' + selector    
  end

end
