require 'test_helper'

class RequisitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requisition = requisitions(:one)
  end

  test "should get index" do
    get requisitions_url
    assert_response :success
  end

  test "should get new" do
    get new_requisition_url
    assert_response :success
  end

  test "should create requisition" do
    assert_difference('Requisition.count') do
      post requisitions_url, params: { requisition: { contact_person: @requisition.contact_person, create_at: @requisition.create_at, description: @requisition.description, item: @requisition.item, material: @requisition.material, number: @requisition.number, observations: @requisition.observations, quantity: @requisition.quantity, unit: @requisition.unit } }
    end

    assert_redirected_to requisition_url(Requisition.last)
  end

  test "should show requisition" do
    get requisition_url(@requisition)
    assert_response :success
  end

  test "should get edit" do
    get edit_requisition_url(@requisition)
    assert_response :success
  end

  test "should update requisition" do
    patch requisition_url(@requisition), params: { requisition: { contact_person: @requisition.contact_person, create_at: @requisition.create_at, description: @requisition.description, item: @requisition.item, material: @requisition.material, number: @requisition.number, observations: @requisition.observations, quantity: @requisition.quantity, unit: @requisition.unit } }
    assert_redirected_to requisition_url(@requisition)
  end

  test "should destroy requisition" do
    assert_difference('Requisition.count', -1) do
      delete requisition_url(@requisition)
    end

    assert_redirected_to requisitions_url
  end
end
