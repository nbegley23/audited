require 'rails/observers/active_model/active_model' 


module Audited
  VERSION = '4.0.0'

  class << self
    attr_accessor :current_user_method, :audit_class
    attr_writer :ignored_attributes
    
    def ignored_attributes
       @ignored_attributes = %w(lock_version created_at updated_at created_on updated_on)
    end
    
    def store
      Thread.current[:audited_store] ||= {}
    end
  end

 
  @current_user_method = :current_user
end
