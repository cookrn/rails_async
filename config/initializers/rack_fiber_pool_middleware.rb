# Add in our rack fiber pool middleware
Rails.configuration.middleware.insert_before ActionDispatch::Static , Rack::FiberPool

# Remove the rack lock middleware
Rails.configuration.threadsafe!

