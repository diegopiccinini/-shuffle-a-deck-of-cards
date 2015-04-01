Then(/^should have content "(.*?)" within a form tag$/) do |expected_content|
  expect(find('form')).to have_content(expected_content)
end

Then(/^a label for "(.*?)" should have content "(.*?)"$/) do |expected_label_for,expected_content|
  expect(find("label[for=#{expected_label_for}]")).to have_content(expected_content)
end

Then(/^one submit button "(.*?)"$/) do |expected_content|
  expect(find('input[type=submit]').value).to eq(expected_content)
end
