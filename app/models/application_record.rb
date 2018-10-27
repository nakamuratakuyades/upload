class ApplicationRecord < ActiveRecord::Base
  
  include SessionsHelper
  self.abstract_class = true
end
