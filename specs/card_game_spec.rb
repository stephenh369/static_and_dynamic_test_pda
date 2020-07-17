require('minitest/autorun')
require('minitest/reporters')

require_relative('../card')
require_relative('../card_game')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCardGame < MiniTest::Test

    def setup()
        @card_game = CardGame.new()
        @card1 = Card.new('Spades', 1)
        @card2 = Card.new('Diamonds', 10)
        @cards = [@card1, @card2]
    end

    def test_check_for_ace()
        result = @card_game.check_for_ace(@card1)
        assert_equal(true, result)
    end

    def test_highest_card()
        result = @card_game.highest_card(@card1, @card2)
        assert_equal(@card2, result)
    end

    def test_cards_total()
        total = 11
        result = CardGame.cards_total(@cards)
        assert_equal("You have a total of #{total}", result)
    end
end