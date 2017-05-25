# PROJECTS

puts "Re-creating Projects ..."

project_array = [
{
  url: 'http://www.instructables.com/id/Basic-5-Things-To-Do-After-Installing-Kali-Linux-2/',
  title: 'Basic 5 Things To Do After Installing Kali Linux 2.0',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Mobil-Data-Backup-With-Raspberry-Pi-3/',
  title: 'Mobile Data-Backup With Raspberry Pi 3',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Arduino-Obstacle-Avoiding-Robot-4WD/',
  title: 'Arduino - Obstacle Avoiding Robot 4WD',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Bluetooth-Control-RC-Tank-Android-Arduino/',
  title: 'Bluetooth Control RC Tank + Android + Arduino',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Arduino-Bike-Speedometer-With-128-X-64-Graphics-LC/',
  title: 'Arduino Bike Speedometer with 128 x 64 Graphics LCD',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Pinewood-Derby-Car-weight-compartment/',
  title: 'Pinewood Derby Car weight compartment',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Tall-bandsaw-resaw-fence-Made-at-Techshop/',
  title: 'Tall bandsaw resaw fence - Made at Techshop',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Dresser-to-Bench-Thingy/',
  title: 'Dresser to Bench Thingy',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Sew-a-Womans-Summer-Visor/',
  title: 'Sew a Womans Summer Visor',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Subaru-Exhaust-Leak-Repair/',
  title: 'Subaru Exhaust Leak Repair',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Simple-Garden-Sprinkler-out-of-inground-popup-spri/',
  title: 'Simple Garden Sprinkler out of inground popup sprinklers',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Cardboard-Cell-Phone-Case/',
  title: 'Cardboard Cell Phone Case',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Make-Helicopter-New-Blades-from-Broken-Ones/',
  title: 'Make Helicopter New Blades from Broken Ones',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Cheap-but-loud-firecracker/',
  title: 'Cheap but loud firecracker',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Converting-a-Google-Sketchup-Design-into-DXF-forma/',
  title: 'Converting a Google Sketchup Design into DXF format',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Building-Cedar-trimmed-Window-Boxes-for-your-home/',
  title: 'Building Cedar trimmed Window Boxes for your home',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Homemade-Taco-Sauce-Exploding-with-Flavor/',
  title: 'Healthy Homemade Taco Sauce',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Foxy-Cosplay-Mask/',
  title: 'Foxy Cosplay Mask',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/DIY-Custom-Rock-Band-Pedal-just-like-the-Destroye/',
  title: 'DIY Custom Rock Band Pedal, just like the Destroyer Pedal!!!',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Threading-a-guru-bead-3/',
  title: 'Threading a guru bead 3',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Checking-you-wifi-status-with-Arduino-Yun/',
  title: 'Checking you wifi status with Arduino Yun',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Minecraft-Your-own-player-head/',
  title: 'Minecraft: Your own player head!',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Make-a-Swing-Bench-Bird-Feeder/',
  title: 'Make a Swing Bench Bird Feeder',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Waterproof-speakers-1/',
  title: 'Waterproof speakers',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/More-mileage-out-of-your-Oral-B-Pulsar-toothbrush/',
  title: 'More mileage out of your Oral B Pulsar toothbrush',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Elevated-Planter-Raised-Bed/',
  title: 'Elevated Planter Raised Bed',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Designing-Fidget-Spinners-in-Fusion-360/',
  title: 'Designing Fidget Spinners in Fusion 360',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-to-Make-Plastic-Flowers/',
  title: 'How to Make Plastic Flowers',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Computer-Controlled-Christmas-Lights-With-Light-O-/',
  title: 'Computer Controlled Christmas Lights with Light-O-Rama',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/PC-in-a-Macintosh-Classic-Case/',
  title: 'PC in a Macintosh Classic Case',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-to-Backlight-a-Game-Boy-DMG/',
  title: 'Gameboy Backlight: How to Backlight a Game Boy (DMG)',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/AVRArduino-RFID-Reader-with-UART-Code-in-C/',
  title: 'AVR/Arduino RFID Reader with UART Code in C',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Quadcopter-frame-design-fiberglass/',
  title: 'Quadcopter frame design (fiberglass)',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Modern-Led-Infinity-Mirror-Table-Lamp/',
  title: 'Modern Led Infinity Mirror Table Lamp',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Modding-Fisher-Price-72825-Formel-Junior-Fernlenkf/',
  title: 'Modding Fisher-Price 72825 Formel Junior Fernlenkflitzer',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Fairy-House-Lamp-Using-Plastic-Bottles/',
  title: 'Fairy House Lamp Using Plastic Bottles',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Metal-Lightsaber-on-a-budget/',
  title: 'Metal Jedi Lightsaber on a budget',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Healthy-Chicken-n-oats-soup/',
  title: 'Healthy Chicken n oats soup',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/how-to-build-a-BEAM-symet/',
  title: 'how to build a BEAM robot',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-To-Enjoy-A-Plum/',
  title: 'How To Enjoy A Plum',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/DIY-BUTTER-SLIME-NO-BORAX-NEEDED/',
  title: 'DIY BUTTER SLIME - NO BORAX NEEDED!',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Amish-Friendship-Bread-Starter-and-Recipe/',
  title: 'Amish Friendship Bread Starter and Recipe!',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Pumpkin-porch-light-covers/',
  title: 'Pumpkin porch light covers',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Flash-factory-image-to-your-Google-Nexus-device/',
  title: 'Flash factory image to your Google Nexus device',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Dirt-Cheap-Acoustic-Guitar-Pickup/',
  title: 'Dirt Cheap Acoustic Guitar Pickup',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Fidget-Spinner-3D-Printed/',
  title: 'Fidget Spinner - 3D Printed',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Freestanding-Bike-RackBookcase/',
  title: 'Freestanding Bike Rack/Bookcase',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Eel-Trap/',
  title: 'Eel Trap',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/adjustablePower-Supply-650watt-54amps-for-Under-50/',
  title: '(Adjustable) Power Supply 650 Watts 54 Amps for Under $50',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Arduino-MobilePhone/',
  title: 'Arduino MobilePhone',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Balloon-Powered-Car-1/',
  title: 'Balloon Powered Car',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Alert-system-for-children-or-pets-trapped-inside-m/',
  title: 'Alert system for children or pets trapped inside motor vehicles',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Easy-confirmed-working-Thunder-or-Spring-Drum-t/',
  title: 'Easy, confirmed working Thunder or Spring Drum',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/The-Annoying-Windows-Vista-And-7-Prank/',
  title: 'The Annoying Windows Vista And 7 Prank',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Fix-your-STL-files-with-Microsoft-Model-Repair-Ser/',
  title: 'Fix your STL files with Microsoft Model Repair Service (free!)',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Reuses-for-legacy-computers/',
  title: 'Reuses for legacy computers',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/A-DIY-Sun-Protective-Brim-for-a-Bicycle-Helmet/',
  title: 'A DIY Sun-Protective Brim for a Bicycle Helmet',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Faux-Gemstones-Fantasy-Bling/',
  title: 'Faux Gemstones (Fantasy Bling)',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Book-Xmas-tree/',
  title: 'Hardback book christmas tree',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/The-Marshmallow-Trebuchet/',
  title: 'The Marshmallow Trebuchet',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Eaton-Gen-V-M90-Swap-on-L67/',
  title: 'Eaton Gen V M90 Swap on L67',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Raspberry-Pi-AirPlay-Receiver/',
  title: 'Raspberry Pi AirPlay receiver',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Black-Detox-Bath-with-Activated-Charcoal/',
  title: 'Black Detox Bath with Activated Charcoal',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Antiqued-Wooden-Snake-Toys/',
  title: 'Antiqued Wooden Snake Toys',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Solar-Powered-Cell-Phone-Charger/',
  title: 'Solar Powered Cell Phone Charger',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Recirculating-Hydroponics/',
  title: 'Recirculating Hydroponics',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Basics-of-Cryptography-Caesar-Cipher/',
  title: 'Basics of Cryptography: Caesar Cipher',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-to-Play-Roblox/',
  title: 'How to Play Roblox',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Turn-any-image-into-a-vector-in-Silhouette-Studio/',
  title: 'Turn any image into a vector in Silhouette Studio',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Oak-beam-dinner-table/',
  title: 'Oak beam dinner table',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-Make-a-Flattening-Jig-for-a-Router/',
  title: 'How Make a Flattening Jig for a Router',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/how-to-make-a-survival-bow--arrow/',
  title: 'how to make a survival bow & arrow',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Spider-Man-Web-Backpack-Intro/',
  title: 'Spider-Man Web Backpack',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-To-Cut-Drop-Through-Truck-Mounts-On-A-Longboar/',
  title: 'How To Cut Drop Through Truck Mounts On A Longboard',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Homemade-Bike-Rack/',
  title: 'Homemade Bike Rack',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Arduino-Nano-DHT11-Temperature-and-Humidity-Visual/',
  title: 'Arduino Nano: DHT11 Temperature and Humidity Visual Instrumentation With Visuino',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Removing-School-Bus-Seats/',
  title: 'Removing School Bus Seats',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Setup-Raspberry-Pi-Using-Diet-Pi-Without-Monitor-o/',
  title: 'Setup Raspberry Pi Using Diet Pi Without Monitor or Keyboard',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Nokia-5110-Arduino-Oscilloscope/',
  title: 'Nokia 5110 Arduino Oscilloscope',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Put-a-screen-protector-on-smartphone-screen-NO-AIR/',
  title: 'Put a screen protector on smartphone screen NO AIR BUBBLES!',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Add-NFC-to-your-bluetooth-speakers/',
  title: 'Add NFC to your bluetooth speakers!',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/HIGH-LIFE-Guinea-PigCritter-MANSION/',
  title: 'How to Build a Guinea Pig Hamster Cage MANSION',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Cheap-Easy-Custom-Fit-Sub-Box/',
  title: 'Cheap & Easy Custom-Fit Sub Box',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Connect-Raspberry-Pi-to-Projector-or-TV/',
  title: 'Connect Raspberry Pi to Projector or TV',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/translate-any-clothing-pattern-to-doll-proportions/',
  title: 'translate a clothing pattern to doll proportions',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/300-Watt-Linear-Power-Supply/',
  title: '300+ Watt Linear Power Supply',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-to-Repair-a-Cracked-or-Broken-Circuit-Board/',
  title: 'How to Repair a Cracked or Broken Circuit Board',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Holistic-Automotive-Survival-Kit/',
  title: 'Holistic Automotive Survival Kit',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/DIY-Medical-Steam-Inhaler/',
  title: 'DIY Medical Steam Inhaler',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Interface-an-SRAM-bus-to-your-arduino/',
  title: 'Interface an SRAM bus to your arduino',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/LEGO-brick-LED-lights/',
  title: 'LEGO brick LED lights',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-to-Solve-a-Rubiks-Cube-4/',
  title: 'How to Solve a Rubiks Cube',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Temperature-Changing-Color-Cube/',
  title: 'Temperature Changing Color Cube',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-to-Record-Cassette-Tapes/',
  title: 'How to Record Cassette Tapes',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Soda-Jerks-Chocolate-Ice-Cream-Soda/',
  title: 'Soda Jerks Chocolate Ice Cream Soda',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Network-Cable-hack/',
  title: 'Network Cable hack',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/Internet-Valentine/',
  title: 'Internet Valentine',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/How-to-Crochet-the-Magic-Ring/',
  title: 'How to Crochet the Magic Ring',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/The-free-energy-prototype/',
  title: 'The free energy prototype',
  user_id: 3,
},
{
  url: 'http://www.instructables.com/id/DIY-Camera-Chest-HarnessMount-GoPro-Inspired/',
  title: 'DIY Camera Chest Harness/Mount (GoPro Inspired)',
  user_id: 3,
}
]

# creates a new project for each item in the above array
project_array.each do |i|                                                                                             
  Project.create i                                                        
end

Project.create!(
  title: 'Rustic Park Bench',
  summary: Faker::Hipster.paragraph(1),
  instructions: Faker::Hipster.paragraph(4),
  user_id: 2,
  cost: 75,
  time: 5,
  material: Faker::Hipster.paragraph(1),
  url: ''
 )

Project.create(
  title: 'Family Picnic Table',
  summary: Faker::Hipster.paragraph(1),
  instructions: Faker::Hipster.paragraph(3),
  user_id: 3,
  cost: 100,
  time: 6,
  material: Faker::Hipster.paragraph(1),
  url: ''
 )

Project.create(
  title: 'Industrial Bookshelf',
  summary: Faker::Hipster.paragraph(1),
  instructions: Faker::Hipster.paragraph(5),
  user_id: 3,
  cost: 200,
  time: 3,
  material: Faker::Hipster.paragraph(1),
  url: ''
 )