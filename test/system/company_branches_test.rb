require "application_system_test_case"

class CompanyBranchesTest < ApplicationSystemTestCase
  setup do
    @company_branch = company_branches(:one)
  end

  test "visiting the index" do
    visit company_branches_url
    assert_selector "h1", text: "Company branches"
  end

  test "should create company branch" do
    visit company_branches_url
    click_on "New company branch"

    fill_in "Company", with: @company_branch.company_id
    click_on "Create Company branch"

    assert_text "Company branch was successfully created"
    click_on "Back"
  end

  test "should update Company branch" do
    visit company_branch_url(@company_branch)
    click_on "Edit this company branch", match: :first

    fill_in "Company", with: @company_branch.company_id
    click_on "Update Company branch"

    assert_text "Company branch was successfully updated"
    click_on "Back"
  end

  test "should destroy Company branch" do
    visit company_branch_url(@company_branch)
    click_on "Destroy this company branch", match: :first

    assert_text "Company branch was successfully destroyed"
  end
end
