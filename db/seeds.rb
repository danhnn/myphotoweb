#Photo.create(username: 'sarahmgellar', caption: '...', created_at: Time.at(14447197352).utc.to_datetime, likes_count: 10561, url: "http://lorempixel.com/400/200")
Comment.delete_all
Photo.delete_all

20.times do
  Photo.create(username: 'sarahmgellar', caption: '...', created_at: Time.at(14447197352).utc.to_datetime, likes_count: 10561, url: "http://lorempixel.com/400/200")
end

Photo.all.each do |photo|
  rand(10).times do
    photo.comments << Comment.new(name: 'NND', body: 'Just a test comment')
  end
end