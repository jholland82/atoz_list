require 'test_helper'

class ActsAsAtozListTest < ActiveSupport::TestCase
  def test_grab_link_letters
    Item.create(:name => "Abyss")
    Item.create(:name => "Buddy")
    Item.create(:name => "Bully")
    Item.create(:name => "Zoo")
    items = Item.all
    w = WelcomeController.new
    atoz = w.grab_link_letters(items, :name)
    assert_equal atoz, ["A", "B", "Z"]
  end
end
