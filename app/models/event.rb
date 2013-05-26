#coding: utf-8
class Event < ActiveRecord::Base
  attr_accessor :status_desc
  attr_accessible :status, :title, :status_desc

  def status_desc
    case status
      when 'actived'
        '未完成'
      when 'finished'
        '完成'
    end
  end

end
