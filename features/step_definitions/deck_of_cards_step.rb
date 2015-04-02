When(/^I define this this deck of cards$/) do |table|
  @deck= table.raw
end


Then(/^All should have an image file$/) do
	file_dir =File.join(File.dirname(__FILE__), '..','..','app', 'assets','images')
  @deck.each do |card_id|
  	file_path ="#{file_dir}/#{Card.image(card_id[0])}"
  	expect(File.exists?(file_path)).to be true
  end
end
