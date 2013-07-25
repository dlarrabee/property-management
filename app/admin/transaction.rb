ActiveAdmin.register Transaction do
  controller do
    def permitted_params
      params.permit transaction: [:amount, :description]
    end
  end
end
