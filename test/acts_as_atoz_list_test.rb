require 'test_helper'

class ActsAsAtozListTest < ActiveSupport::TestCase
  def setup
    Item.create(:name => "Abyss")
    Item.create(:name => "Buddy")
    Item.create(:name => "Bully")
    Item.create(:name => "Zoo")   
  end

  def test_grab_link_letters
    items = Item.all
    w = WelcomeController.new
    atoz = w.grab_link_letters(items, :name)
    assert_equal atoz, ["A", "B", "Z"]
  end

  def test_create_atoz_links
    items = Item.all
    w = WelcomeController.new
    atoz = w.create_atoz_links(items, :name)
    assert_equal atoz, ["A", "B", "Z"] 
  end
end
