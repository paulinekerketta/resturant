require 'test_helper'

class DailycashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dailycash = dailycashes(:one)
  end

  test "should get index" do
    get dailycashes_url
    assert_response :success
  end

  test "should get new" do
    get new_dailycash_url
    assert_response :success
  end

  test "should create dailycash" do
    assert_difference('Dailycash.count') do
      post dailycashes_url, params: { dailycash: { date: @dailycash.date, discount: @dailycash.discount, driver_paid: @dailycash.driver_paid, lodgement: @dailycash.lodgement, over_under: @dailycash.over_under, paid_online: @dailycash.paid_online, pay_card: @dailycash.pay_card, purchase: @dailycash.purchase, sale: @dailycash.sale } }
    end

    assert_redirected_to dailycash_url(Dailycash.last)
  end

  test "should show dailycash" do
    get dailycash_url(@dailycash)
    assert_response :success
  end

  test "should get edit" do
    get edit_dailycash_url(@dailycash)
    assert_response :success
  end

  test "should update dailycash" do
    patch dailycash_url(@dailycash), params: { dailycash: { date: @dailycash.date, discount: @dailycash.discount, driver_paid: @dailycash.driver_paid, lodgement: @dailycash.lodgement, over_under: @dailycash.over_under, paid_online: @dailycash.paid_online, pay_card: @dailycash.pay_card, purchase: @dailycash.purchase, sale: @dailycash.sale } }
    assert_redirected_to dailycash_url(@dailycash)
  end

  test "should destroy dailycash" do
    assert_difference('Dailycash.count', -1) do
      delete dailycash_url(@dailycash)
    end

    assert_redirected_to dailycashes_url
  end
end
