class CustomChangeWidget < ActiveRecord::Base
  has_paper_trail :changes_method => :custom_changes

  def custom_changes
    changes.merge({"custom_attribute" => "value"})
  end

end
