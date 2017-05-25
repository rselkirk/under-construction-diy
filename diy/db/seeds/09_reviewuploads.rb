
# REVIEWUPLOAD

puts "Re-creating ReviewUploads..."

100.times do |n|
ReviewUpload.create(
  image_url: open('http://cdn.instructables.com/F05/OCZU/IHZ8ZJE3/F05OCZUIHZ8ZJE3.SQUARE2.jpg'),
  review_id: n + 1
  )
end
