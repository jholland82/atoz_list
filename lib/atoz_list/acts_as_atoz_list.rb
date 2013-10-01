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

      def create_atoz_links(items, field)
        atoz_letters = grab_link_letters(items, field)
        atoz_links = generate_html_links(atoz_letters)
      end

      def grab_link_letters(items, field)
        letters = []
        items.each do |item|
          value = item.send("#{field}")
          letters << value.chars.first.upcase unless letters.include? value.chars.first.upcase
        end
        letters
      end
    end

  end
end

ActionController::Base.send :include, AtozList::ActsAsAtozList
