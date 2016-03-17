if Rails.env.production?
	$redis = Redis.new(url: ENV["redis://h:pdn9l90ln436o39m0erttkakb0o@ec2-54-235-164-4.compute-1.amazonaws.com:9169"])
else
	$redis = Redis.new(:host => 'localhost', :port => 6379)
end