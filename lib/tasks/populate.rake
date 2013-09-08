namespace :db do 
	desc "Fill databasse with sample data"
	task populate: :environment do

		User.all.each do |user|
			puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"
			100.times do |n|
				image = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
				description = %w(cool awesome crazy wow adorbs incredible).sample
				user.pins.create!(image: image, description: description)
			end
		end
	end
end