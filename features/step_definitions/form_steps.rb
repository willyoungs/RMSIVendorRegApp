When /I should see the following (.*): (.*)/ do |inputtype, fieldlist|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  fields = fieldlist.split(", ")
  fields.each do |f|
    if page.respond_to? :should
        page.should have_content(f)
    else
        assert page.has_content?(f)
    end
  end
end
Then /^the ([^"]*) of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2, arg3|
   #Implement ME
end