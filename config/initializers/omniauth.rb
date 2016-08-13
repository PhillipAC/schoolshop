OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1046580648612-uat6r3642ig6s9trcmohldsgf06n5o3f.apps.googleusercontent.com', 
                           'nGJ3t51xmyN9rv5VGy4hGO7V', 
            {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}},
                :image_aspect_ratio => "square",
                :image_size => 50}
end