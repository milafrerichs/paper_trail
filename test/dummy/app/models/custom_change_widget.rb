class CustomChangeWidget < ActiveRecord::Base
  has_paper_trail :changes_method => :custom_changes, :changed_method => :custom_changed

  def custom_changes
    changes.merge({"custom_attribute" => "value"})
  end

  def custom_changed
    changed + ["custom_attributes"]
  end

end
