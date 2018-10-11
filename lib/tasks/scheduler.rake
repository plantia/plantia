# require 'twilio_helper'
require 'seed_helper'

# desc "This task is called by the Heroku scheduler add-on"
# task :send_text => :environment do
#   twilio = TwilioHelper.new
#   User.has_thristy_plant.each do |user|
#     twilio.send_text(user)
#   end
# end

desc "This will be called only once on Heroku manually"
task :seed => :environment do
  seedhelper = SeedHelper.new
  seedhelper.seed_data
end

# desc "This checks for plants that need watering and triggers the webpush notifications"
# task :notify => :environment do
