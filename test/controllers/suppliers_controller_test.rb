require 'test_helper'

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_url
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post suppliers_url, params: { supplier: { account_number: @supplier.account_number, account_status: @supplier.account_status, address: @supplier.address, bank: @supplier.bank, category: @supplier.category, city: @supplier.city, constitutive_act: @supplier.constitutive_act, contact: @supplier.contact, country: @supplier.country, email: @supplier.email, last_tax_declaration: @supplier.last_tax_declaration, name: @supplier.name, number_branch_bank: @supplier.number_branch_bank, observations: @supplier.observations, phone: @supplier.phone, policies: @supplier.policies, postal_code: @supplier.postal_code, region: @supplier.region, rfc: @supplier.rfc } }
    end

    assert_redirected_to supplier_url(Supplier.last)
  end

  test "should show supplier" do
    get supplier_url(@supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_url(@supplier)
    assert_response :success
  end

  test "should update supplier" do
    patch supplier_url(@supplier), params: { supplier: { account_number: @supplier.account_number, account_status: @supplier.account_status, address: @supplier.address, bank: @supplier.bank, category: @supplier.category, city: @supplier.city, constitutive_act: @supplier.constitutive_act, contact: @supplier.contact, country: @supplier.country, email: @supplier.email, last_tax_declaration: @supplier.last_tax_declaration, name: @supplier.name, number_branch_bank: @supplier.number_branch_bank, observations: @supplier.observations, phone: @supplier.phone, policies: @supplier.policies, postal_code: @supplier.postal_code, region: @supplier.region, rfc: @supplier.rfc } }
    assert_redirected_to supplier_url(@supplier)
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete supplier_url(@supplier)
    end

    assert_redirected_to suppliers_url
  end
end
