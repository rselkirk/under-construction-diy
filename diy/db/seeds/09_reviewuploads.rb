
# REVIEWUPLOAD

puts "Re-creating ReviewUploads..."

100.times do |n|
ReviewUpload.create(
  image_url: open_asset('diy.jpg'),
  review_id: n + 1
  )
end
