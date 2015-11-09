#!/usr/bin/env ruby

# file: rexle-css.rb

class RexleCSS

  attr_reader :to_xpath

  def initialize(selector)
    @to_xpath = selector.prepend('//')\
        .gsub(/(\w+)#(\w+)/,'\1[@id="\2"]')\
        .gsub(/#(\w+)/,'.[@id="\1"]')\
        .gsub(/\.(\w+)/,'[@class="\1"]')\
        .gsub(/ /,'//').gsub(/>/,'/')
  end

end