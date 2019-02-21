require 'calabash-android/calabash_steps'

Then /^I swipe for left menu$/ do
  performAction('drag', 0, 90, 50, 50, 7)
end