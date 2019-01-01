class ApplicationRecord < ActiveRecord::Base
  include ExceptionHandlerForModel

  self.abstract_class = true
end
