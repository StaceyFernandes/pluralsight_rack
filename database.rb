class Database
  USERS = {
    1 => { name: "Jason", bike: "Cannondale", api_key: '1234' },
    2 => { name: "Stacey", bike: "Trek", api_key: 'abcd' }
  }

  def self.users
    USERS
  end

  RIDES = {
    1 => { user_id: 1, title: "Morning Commute", date: "2016-09-28" },
    2 => { user_id: 1, title: "Evening Commute", date: "2016-09-28" }
  }

  def self.rides
    RIDES
  end

  def self.add_ride(ride)
    id= RIDES.keys.max + 1
    RIDES[id] = ride
  end
  
  def self.user_by_api_key(key)
    users.values.find do |user|
      user[:api_key] == key
    end
  end
end
