module WorksHelper
  def frm_action
    if @work.id.present?
      "Update Story"
    else
      "Add Story"
    end
  end
end
