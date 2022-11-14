module ApplicationHelper


  def status_link(project_member)
    if project_member.pending?
      content_tag(:div) do
        concat link_to "Accept", project_member_path(project_member, {project_member: {status: :accepted}}), data: { turbo_method: :patch }, class: "btn-accept"
        concat link_to "Decline", project_member_path(project_member, {project_member: {status: :declined}}), data: { turbo_method: :patch }, class: "btn-decline"
      end
    elsif project_member.accepted?
      link_to "Decline Application", project_member_path(project_member, {project_member: {status: :declined}}), data: { turbo_method: :patch }, class: "btn-decline"
    else
      link_to "Accept Application", project_member_path(project_member, {project_member: {status: :accepted}}), data: { turbo_method: :patch }, class: "btn-accept"
    end
  end
end
