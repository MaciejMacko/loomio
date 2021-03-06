class API::OutcomesController < API::RestfulController
  def create_action
    @event = service.create({resource_symbol => resource, actor: current_user, params: resource_params})
  end

  def exclude_types
    %w[discussion event]
  end
end
