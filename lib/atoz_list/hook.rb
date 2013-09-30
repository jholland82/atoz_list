module AtozList::Hook
  def atoz_list(*args)
    options = args.extract_options!
    include AtozList::InstanceMethods
    before_filter :print_test_message
  end
end
