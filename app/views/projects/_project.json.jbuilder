json.extract! project, :id, :projectName, :projectStartDate, :projectEndDate, :projectInfo, :created_at, :updated_at
json.url project_url(project, format: :json)
