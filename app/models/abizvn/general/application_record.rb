module Abizvn
  module General
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end