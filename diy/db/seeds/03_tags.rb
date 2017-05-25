

# TAGS

puts "Re-creating Tags ..."

tag_array = ["technology","costumes","home","food","craft","apple","arduino","art","assistive-technology","audio","clocks","cnc","computers","digital-graphics","electronics","gadgets","kits","laptops","lasers","leds","linux","microcontrollers","microsoft","mobile","photography","raspberry-pi","remote-control","reuse","robots","science","sensors","software","soldering","speakers","steampunk","tools","usb","wearables","websites","wireless","cardboard","cars","electric-vehicles","energy","furniture","home-improvement","home-theater","hydroponics","laser-cutting","lighting","metalworking","molds-and-casting","motorcycles","organizing","pallets","repair","shelves","solar","tools","woodworking","workbenches","art","books-and-journals","cards","clay","duct-tape","embroidery","fashion","felt","fiber-arts","gifts-and-wrapping","jewelry","knitting-and-crocheting","leather","mason-jars","no-sew","paper","parties-and-weddings","print","making","sewing","soap","wallets","beauty","christmas","cleaning","decorating","education","finances","gardening","green","halloween","health","hiding-places","holidays","homesteading","kids","kitchen","life-hacks","life-skills","organizing","parenting","pest-control","pets","relationships","reuse","travel","bacon","bbq-and-grilling","beverages","bread","breakfast","cake","candy","canning-and-preserves","cocktails-and-mocktails","coffee","cookies","cupcakes","dessert","homebrew","main-course","pasta","pie","pizza","salad","sandwiches","snacks-and-appetizers","soups-and-stews","vegetarian-and-vegan","airsoft","card-games","guitars","instruments","knex","lego","magic-tricks","minecraft","music","nerf","nintendo","offbeat","office-supplies","paintball","paper-airplanes","party-tricks","playstation","pranks-and-humor","puzzles","siege-engines","sports","table-top","toys","video-games","wii","xbox","yo-yo","backyard","beach","bikes","birding","boats","camping","climbing","fire","fishing","hunting","kites","knives","knots","paracord","rockets","skateboarding","snow","survival","water","animals","comics","fantasy","for-kids","for-pets","funny","games","historic-and-futuristic","makeup","masks","props-and-accessories","scary","tv-and-movies","weapons-and-armor"]
 

tag_array.each do |tag_name|                                                                                             
  Tag.find_or_create_by(name: tag_name)                                                               
end    

