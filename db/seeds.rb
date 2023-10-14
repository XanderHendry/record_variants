# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Record.destroy_all
Variant.destroy_all
blue_sky_noise = Record.create!(album: "Blue Sky Noise", artist: "Circa_Survive", play_speed: 33, double_lp: true)

no_matter_where_it_ends = Record.create!(album: "No Matter Where It Ends", artist: "Black Sheep Wall", play_speed: 33, double_lp: true)

sunbather = Record.create!(album: "Sunbather", artist: "Deafheaven", play_speed: 45, double_lp: true)

acoustic_volume2 = Record.create!(album: "Acoustic Volume 2", artist: "Bayside", play_speed: 33, double_lp: false)

useless_animal = Record.create!(album: "Useless Animal", artist: "Cult Leader", play_speed: 45, double_lp: false)

the_rain_just_follows_me = Record.create!(album: "The Rain Just Follows Me", artist: "Hawthorne Heights", play_speed: 33, double_lp: false)

blue_sky_noise.variants.create!(color: "Clear, Blue & Black Swirl", copies: 300, serialized: false)
blue_sky_noise.variants.create!(color: "Blue & Yellow Moonphase", copies: 300, serialized: false)
blue_sky_noise.variants.create!(color: "Blue/White/Green Twister", copies: 500, serialized: false)
blue_sky_noise.variants.create!(color: "White & Blue Swirl", copies: 500, serialized: false)

no_matter_where_it_ends.variants.create!(color: "'Wax Mage'", copies: 25, serialized: true)
no_matter_where_it_ends.variants.create!(color: "Handmade OG Splatter and Nebula", copies: 100, serialized: false)
no_matter_where_it_ends.variants.create!(color: "Transparent Boris Purple and Jungle Swirl", copies: 200, serialized: false)

sunbather.variants.create!(color: "Clear with Splatter", copies: 300, serialized: false)
sunbather.variants.create!(color: "Hot Pink & Beer", copies: 700, serialized: false)
sunbather.variants.create!(color: "Red & Gold", copies: 4000, serialized: false)

acoustic_volume2.variants.create!(color: "180 Gram Black w/ screen print cover", copies: 200, serialized: false)
acoustic_volume2.variants.create!(color: "Pink", copies: 300, serialized: false)
acoustic_volume2.variants.create!(color: "Aqua Blue", copies: 1750, serialized: false)

useless_animal.variants.create!(color: "Transparent Red w/ Black Splatter", copies: 313, serialized: false)
useless_animal.variants.create!(color: "Transparent Blue", copies: 733, serialized: false)
useless_animal.variants.create!(color: "Gold", copies: 1014, serialized: false)

the_rain_just_follows_me.variants.create!(color: "Sea Blue, White, & Halloween Orange A-side/B-side", copies: 200, serialized: false)
the_rain_just_follows_me.variants.create!(color: "White and Blood Red Butterfly", copies: 200, serialized: true)
the_rain_just_follows_me.variants.create!(color: "White and Blood Red Butterfly w/ hand numbered alternate screen print cover", copies: 100, serialized: true)
the_rain_just_follows_me.variants.create!(color: "Black, White, & Blood Red Tri-Striped", copies: 400, serialized: false)
the_rain_just_follows_me.variants.create!(color: "Red(ish) In Electric Blue", copies: 500, serialized: false)
the_rain_just_follows_me.variants.create!(color: "Electric Blue In Clear w/ Halloween Orange Splatter", copies: 1600, serialized: false)


