require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
    # Write your tests here!
  def setup
    #arrage
    @rocket = Rocket.new
  end

  def test_initilaize_attributes_valid
    #act
    actual   = @rocket.valid?
    expected = true

    #assert
    assert_equal(expected, actual)
  end

  def test_initialize_flying_default_false
    #act
    actual   = @rocket.flying?
    expected = false

    #assert
    assert_equal(expected, actual)
  end

  def test_initialize_as_flying
    #act
    @flyer   = Rocket.new(options = {:flying => true})
    actual   = @flyer.flying?
    expected = true

    #assert
    assert_equal(expected, actual)
  end

  def test_lift_off_returns_flying_to_true
    #arrage
    @rocket.lift_off
    actual   = @rocket.flying?
    expected = true

    #assert
    assert_equal(expected, actual)
  end

  def test_land_flying_returns_false
    #act
    actual   = @rocket.land
    @rocket.flying?
    expected = false

    #assert
    assert_equal(expected, actual)
  end

  def test_status_not_flying_returns_ready
    #act
    @rocket.land
    actual   = @rocket.status
    expected = "Rocket #{@rocket.name} is ready for lift off!"

    #assert
    assert_equal(expected, actual)
  end

  def test_color_change
    #act
    @rocket.colour=("beans")
    actual   = @rocket.colour
    expected = "beans"

    #assert
    assert_equal(expected, actual)
  end
end
