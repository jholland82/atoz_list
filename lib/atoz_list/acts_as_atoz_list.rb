module AtozList
  module ActsAsAtozList
    extend ActiveSupport::Concern

    included do
    end
    
    module ClassMethods
      def acts_as_atoz_list(options = {})
        include AtozList::ActsAsAtozList::LocalInstanceMethods
        
      end
    end

    module LocalInstanceMethods
      def print_test_message
        "Hello world!"
      end
    end

  end
end

ActiveController::Base.send :include, AtozList::ActsAsAtozList
