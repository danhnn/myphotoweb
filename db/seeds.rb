#Photo.create(username: 'sarahmgellar', caption: '...', created_at: Time.at(14447197352).utc.to_datetime, likes_count: 10561, url: "http://lorempixel.com/400/200")

Photo.all.each do |photo|
  rand(10).times do
    photo.comments << Comment.new(name: 'NND', body: 'Just a test comment' )
  end
end