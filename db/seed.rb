class Seed 
  class << self
    def import
      
      User.destroy_all
      Hint.destroy_all
      Hunt.destroy_all
      PlaySession.destroy_all
      Location.destroy_all


      @user1 = User.create!(email: 'andsbf@gmail.com', nickname: 'Anderson', password: '123')
      @user2 = User.create!(email: 'andrew@good.com', nickname: 'drew', password: '123')
  
        @hunt1 = Hunt.create!(user_id: @user1.id, name: 'Van downtown', level: 2, city: 'Vancouver', description: 'places around DT')
          @location1 = Location.create!(hunt_id: @hunt1.id, name: 'Light House Labs', lat: 49.2821612, lon: -123.10826709999999, clue: 'Ruby + Sinatra + JS + ...')
            @hint1 = Hint.create!(location_id: @location1.id, body: 'Hint 1')
            @hint2 = Hint.create!(location_id: @location1.id, body: 'Hint 2')
            @hint3 = Hint.create!(location_id: @location1.id, body: 'Hint 3')
  
          @location2 = Location.create!(hunt_id: @hunt1.id, name: 'Artisan Sakemaker at Granville Island', lat: 49.2702898, lon: -123.1341004, clue: 'Coolest public market in Van')
            @hint4 = Hint.create!(location_id: @location2.id, body: 'Hint 4')
            @hint5 = Hint.create!(location_id: @location2.id, body: 'Hint 5')
            @hint6 = Hint.create!(location_id: @location2.id, body: 'Hint 6')
  
          @location3 = Location.create!(hunt_id: @hunt1.id, name: 'Sunset Beach Park', lat: 49.2761138, lon: -123.1439281, clue: 'Not in hawai but still a nice beach')
            @hint7 = Hint.create!(location_id: @location3.id, body: 'Hint 7')
            @hint8 = Hint.create!(location_id: @location3.id, body: 'Hint 8')
            @hint9 = Hint.create!(location_id: @location3.id, body: 'Hint 9')
          
          @location4 = Location.create!(hunt_id: @hunt1.id, name: 'Stanley Park', lat: 49.295569, lon: -123.1456017, clue: "Vancouver's largest urban park boasts beaches, trails, scenic seawall & family-friendly attractions")
            @hint10 = Hint.create!(location_id: @location4.id, body: 'Hint 10')
            @hint11 = Hint.create!(location_id: @location4.id, body: 'Hint 11')
            @hint12 = Hint.create!(location_id: @location4.id, body: 'Hint 12')
  
        @hunt2 = Hunt.create!(user_id: @user1.id, name: 'whistler mountain treasures', level: 1, city: 'whistler', description: 'snowboard and find the best views of whistler mountains')
            @location5 = Location.create!(hunt_id: @hunt2.id, name: 'Whistler Blackcomb', lat: 49.2794823, lon: -123.1105213, clue: 'Renowned year-round resort known for skiing, snowboarding, biking & more, plus spas, shops & cafes')
            @hint13 = Hint.create!(location_id: @location5.id, body: 'Hint 13')
            @hint14 = Hint.create!(location_id: @location5.id, body: 'Hint 14')
            @hint15 = Hint.create!(location_id: @location5.id, body: 'Hint 15')
  
          @location6 = Location.create!(hunt_id: @hunt2.id, name: 'Tube Park', lat: 50.108464, lon: -122.9429209, clue: 'Also now as the name of a soda')
            @hint16 = Hint.create!(location_id: @location6.id, body: 'Hint 16')
            @hint17 = Hint.create!(location_id: @location6.id, body: 'Hint 17')
            @hint18 = Hint.create!(location_id: @location6.id, body: 'Hint 18')
  
          @location7 = Location.create!(hunt_id: @hunt2.id, name: 'Whistler Golf Club', lat: 50.114271, lon: -122.9578339, clue: 'go play something fancy when there is no snow')
            @hint19 = Hint.create!(location_id: @location7.id, body: 'Hint 19')
            @hint20 = Hint.create!(location_id: @location7.id, body: 'Hint 20')
            @hint21 = Hint.create!(location_id: @location7.id, body: 'Hint 21')
          
          @location8 = Location.create!(hunt_id: @hunt2.id, name: 'Araxi Restaurant + Bar', lat: 50.1154819, lon: -122.9582846, clue: "Celebrated spot for locally sourced Pacific Northwest plates, wine & cocktails in swanky environs")
            @hint22 = Hint.create!(location_id: @location8.id, body: 'Hint 22')
            @hint23 = Hint.create!(location_id: @location8.id, body: 'Hint 23')
            @hint24 = Hint.create!(location_id: @location8.id, body: 'Hint 24')
  
        @hunt3 = Hunt.create!(user_id: @user2.id, name: 'white rock downtown treasures', level: 3, city: 'whiter rock', description: 'a city in British Columbia, Canada, that lies within the Metro Vancouver regional district. It borders Semiahmoo Bay and is surrounded on three sides by Surrey ')
          @location9 = Location.create!(hunt_id: @hunt3.id, name: 'Ruth Johnson Park', lat: 49.0264994, lon: -122.8138039, clue: 'closest park to downtown')
            @hint13 = Hint.create!(location_id: @location9.id, body: 'Hint 25')
            @hint14 = Hint.create!(location_id: @location9.id, body: 'Hint 26')
            @hint15 = Hint.create!(location_id: @location9.id, body: 'Hint 27')
  
          @location10 = Location.create!(hunt_id: @hunt3.id, name: 'Southmere Village park', lat: 49.0324062, lon: -122.8100333, clue: 'find the biggest lake inside white rock city')
            @hint16 = Hint.create!(location_id: @location10.id, body: 'Hint 28')
            @hint17 = Hint.create!(location_id: @location10.id, body: 'Hint 29')
            @hint18 = Hint.create!(location_id: @location10.id, body: 'Hint 30')
  
          @location11 = Location.create!(hunt_id: @hunt3.id, name: 'White Rock Elementary', lat: 49.0308868, lon: -122.8038535, clue: 'where white rock locals learn they polite style')
            @hint19 = Hint.create!(location_id: @location11.id, body: 'Hint 31')
            @hint20 = Hint.create!(location_id: @location11.id, body: 'Hint 32')
          @hint21 = Hint.create!(location_id: @location11.id, body: 'Hint 33')
      
        @location12 = Location.create!(hunt_id: @hunt3.id, name: 'Semiahmoo Shopping Centre', lat: 49.033391, lon: -122.8083166, clue: "where you can buy anything from gramma's underpants to barbecue grillers")
          @hint22 = Hint.create!(location_id: @location12.id, body: 'Hint 34')
          @hint23 = Hint.create!(location_id: @location12.id, body: 'Hint 35')
          @hint24 = Hint.create!(location_id: @location12.id, body: 'Hint 36')

  
        @hunt4 = Hunt.create!(user_id: @user2.id, name: 'Light House Labs', level: 5, city: 'Vancouver', description: 'Treasures in the cave!')
          @location13 = Location.create!(hunt_id: @hunt4.id, name: 'Light House Labs', lat: 49.2821612, lon: -123.10826709999999, clue: 'free coffe')
            @hint25 = Hint.create!(location_id: @location13.id, body: 'Hint 37')
            @hint26 = Hint.create!(location_id: @location13.id, body: 'Hint 38')
            @hint27 = Hint.create!(location_id: @location13.id, body: 'Hint 39')
  
          @location14 = Location.create!(hunt_id: @hunt4.id, name: 'Light House Labs', lat: 49.2821612, lon: -123.10826709999999, clue: 'Mac_tv_behavior = Rand(857)')
            @hint28 = Hint.create!(location_id: @location14.id, body: 'Hint 40')
            @hint29 = Hint.create!(location_id: @location14.id, body: 'Hint 41')
            @hint30 = Hint.create!(location_id: @location14.id, body: 'Hint 42')
  
          @location15 = Location.create!(hunt_id: @hunt4.id, name: 'Light House Labs', lat: 49.2821612, lon: -123.10826709999999, clue: 'Beer for $2.5 ...')
            @hint31 = Hint.create!(location_id: @location15.id, body: 'Hint 43')
            @hint32 = Hint.create!(location_id: @location15.id, body: 'Hint 44')
            @hint33 = Hint.create!(location_id: @location15.id, body: 'Hint 45')
      
          @location16 = Location.create!(hunt_id: @hunt4.id, name: 'Light House Labs', lat: 49.2821612, lon: -123.10826709999999, clue: 'Seating for 12h a days')
            @hint34 = Hint.create!(location_id: @location16.id, body: 'Hint 46')
            @hint35 = Hint.create!(location_id: @location16.id, body: 'Hint 47')
            @hint36 = Hint.create!(location_id: @location16.id, body: 'Hint 48')
    end
  end
end




























