class Dmf < ActiveRecord::Base
  belongs_to :compound
  attr_accessible :compound_id, :details, :dmfno, :holder, :status, :subject, :sumbmit_date, :type
end
