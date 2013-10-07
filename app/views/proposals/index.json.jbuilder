json.array!(@proposals) do |proposal|
  json.extract! proposal, :thought, :abstract, :description, :sponsored, :status
  json.url proposal_url(proposal, format: :json)
end
