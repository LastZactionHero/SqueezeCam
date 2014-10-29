require 'rails_helper'
require 'spec_helper'

RSpec.describe Photo, :type => :model do
  
  describe 'validations' do
  
    it 'fails if a photo is not provided' do
      photo = Photo.create
      expect(photo.errors[:photo]).to include("can't be blank")
    end
    
    it 'creates successfully' do
      file = File.open("#{Rails.root}/spec/support/corgi.jpg", 'w')
      photo = Photo.create(photo: file)
      file.close
      expect(photo.id).to be_present
    end
    
  end
end
