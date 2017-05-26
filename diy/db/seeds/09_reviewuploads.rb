# REVIEW_UPLOADS

puts "Re-creating ReviewUploads..."


review_uploads_array =
[
{
  review_id: 1,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 2,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 3,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 4,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 5,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 10,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 20,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 30,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 40,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 50,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 60,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 70,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 80,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 90,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
},
{
  review_id: 100,
  remote_image_url_url: 'http://cdn.instructables.com/FAC/LAHH/IYOQ50KW/FACLAHHIYOQ50KW.SQUARE2.jpg'
}
]

review_uploads_array.each do |i|
  ReviewUpload.create i
end
