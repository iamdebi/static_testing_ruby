require('minitest/autorun')
require('minitest/reporters')
require_relative('card.rb')
require_relative('./card_game.rb')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardGameTest < MiniTest::Test

  def test_card1_suit
    card_ace = Card.new("spades", 2)
    assert_equal("spades", card_ace.suit)
  end

  def test_card1_value
    card1 = Card.new("spades", 2)
    assert_equal(2, card1.value)
  end

  def test_check_for_ace_true
    card_ace = Card.new("spades", 1)
    result = CardGame.check_for_ace(card_ace)
    assert_equal(true, result)
  end

  def test_check_for_ace_false
    card_ten = Card.new("hearts", 10)
    result = CardGame.check_for_ace(card_ten)
    assert_equal(false, result)
  end

  def test_highest_card_card1
    card_ten = Card.new("hearts", 10)
    card_four = Card.new('clubs', 4)
    result = CardGame.highest_card(card_ten, card_four)
    assert_equal(card_ten, result)
  end

  def test_highest_card_card2
    card_ten = Card.new("hearts", 10)
    card_four = Card.new('clubs', 4)
    result = CardGame.highest_card(card_four, card_ten)
    assert_equal(card_ten, result)
  end


end
