class YelpBusiness < ActiveRecord::Base

  def self.fetch
    params = {
              term: 'food',
              limit: 20
    }
    business = $client.search('New York, NY', params).businesses

    business.each do |bus|
      self.find_or_create_by(uid: bus.id).update(
        name: bus.name,
        url: bus.url,
        phone: bus.phone,
        display_phone: bus.display_phone,
        image_url: bus.image_url,
        city: bus.location.city,
        display_address: bus.location.display_address.join(', '),
        postal_code: bus.location.postal_code,
        address: bus.location.address.join(', '),
        latitude: bus.location.coordinate.latitude,
        longitude: bus.location.coordinate.longitude,
        state_code: bus.location.state_code
      )
    end
  end
end
