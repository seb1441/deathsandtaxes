RailsAdmin.config do |config|
  config.model 'User' do
    export do
      exclude_fields :password_confirmation,
        :reset_password_sent_at,
        :remember_created_at,
        :current_sign_in_ip,
        :last_sign_in_ip,
        :sign_in_count,
        :current_sign_in_at,
        :last_sign_in_at,
        :confirmation_token,
        :confirmed_at,
        :confirmation_sent_at,
        :unconfirmed_email,
        :failed_attempts,
        :unlock_token,
        :locked_at,
        :admin,
        :last_active_at
    end

    list do
      field :character_name
      field :email
    end
    edit do
      exclude_fields :password_confirmation,
        :reset_password_sent_at,
        :remember_created_at,
        :current_sign_in_ip,
        :last_sign_in_ip,
        :sign_in_count,
        :current_sign_in_at,
        :last_sign_in_at,
        :confirmation_token,
        :confirmed_at,
        :confirmation_sent_at,
        :unconfirmed_email,
        :failed_attempts,
        :unlock_token,
        :locked_at,
        :admin,
        :last_active_at,
        :armor,
        :head,
        :shoes,
        :mainhand,
        :offhand
    end
    show do
      # field :character_name
      # field :created_at
      # field :current_sign_in_ip do
      #   visible do
      #     bindings[:object].character_name != "SebQc"
      #   end
      # end
      # field :last_sign_in_ip do
      #   visible do
      #     bindings[:object].character_name != "SebQc"
      #   end
      # end
      exclude_fields :password_confirmation,
        :reset_password_sent_at,
        :remember_created_at,
        :current_sign_in_ip,
        :last_sign_in_ip,
        :sign_in_count,
        :current_sign_in_at,
        :last_sign_in_at,
        :unlock_token,
        :locked_at,
        :admin,
        :last_active_at
    end

  end
  # t.datetime "current_sign_in_at"
  # t.datetime "last_sign_in_at"
  config.authorize_with do
    redirect_to "/" unless current_user.admin == true
  end

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    # new
    # export
    # bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

  end
end
