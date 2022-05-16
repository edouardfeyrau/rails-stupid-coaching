require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "answer", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "putting a answer mark yields a don't ask answers from coach" do
    visit ask_url
    fill_in "answer", with: "What ?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "say you are going to work yields a great answer from coach" do
    visit ask_url
    fill_in "answer", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end

  test "say anything else yields same answer" do
    visit ask_url
    fill_in "answer", with: "Whatever"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end
end
