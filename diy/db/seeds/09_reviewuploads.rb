
# REVIEWUPLOAD

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

puts "Re-creating ReviewUploads..."

100.times do |n|
ReviewUpload.create(
  image_url: open_asset('diy.jpg'),
  review_id: n + 1
  )
end
