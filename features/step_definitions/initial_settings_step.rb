
When(/^I visit the homepage "([^"]*)"$/) do |url|
  visit(url)
end


Then(/^should be a select tag "(.*?)" having all options values between (\d+) and (\d+)$/)  do |expected_select_name,expected_min, expected_max|
  expected_options_values=(expected_min..expected_max).to_a
  options_values = []
  find_field(expected_select_name).all('option').each do |option|
    options_values.push option.value
  end
  expect(options_values).to match_array (expected_options_values)
end
Then(/^the "(.*?)" default value should be "(.*?)"$/) do |expected_select_name,players_value|
  expect(find_field(expected_select_name).value).to  eq(players_value)
end
