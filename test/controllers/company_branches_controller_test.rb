require "test_helper"

class CompanyBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_branch = company_branches(:one)
  end

  test "should get index" do
    get company_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_company_branch_url
    assert_response :success
  end

  test "should create company_branch" do
    assert_difference("CompanyBranch.count") do
      post company_branches_url, params: { company_branch: { company_id: @company_branch.company_id } }
    end

    assert_redirected_to company_branch_url(CompanyBranch.last)
  end

  test "should show company_branch" do
    get company_branch_url(@company_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_branch_url(@company_branch)
    assert_response :success
  end

  test "should update company_branch" do
    patch company_branch_url(@company_branch), params: { company_branch: { company_id: @company_branch.company_id } }
    assert_redirected_to company_branch_url(@company_branch)
  end

  test "should destroy company_branch" do
    assert_difference("CompanyBranch.count", -1) do
      delete company_branch_url(@company_branch)
    end

    assert_redirected_to company_branches_url
  end
end
