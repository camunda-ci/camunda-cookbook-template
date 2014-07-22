source 'https://rubygems.org'

gem 'berkshelf'
gem 'chef-zero'
gem 'chef-vault'

# Uncomment these lines if you want to live on the Edge:
#
# group :development do
#   gem "berkshelf", github: "berkshelf/berkshelf"
#   gem "vagrant", github: "mitchellh/vagrant", tag: "v1.6.3"
# end
#

group :plugins do
  gem "vagrant-berkshelf", github: "berkshelf/vagrant-berkshelf"
  gem "vagrant-omnibus", github: "schisamo/vagrant-omnibus"
  gem "vagrant-cachier", github: "fgrehm/vagrant-cachier"
  #gem "vagrant-chef-zero", github: "andrewgross/vagrant-chef-zero"
end

group :testing do
  gem 'foodcritic'
  gem 'test-kitchen'
  gem 'kitchen-vagrant'
  gem 'chefspec'
  gem 'serverspec', '>= 2.0.0.beta8'
  gem 'rubocop'
end

# group :production do
#   gem 'knife-solo'
#   gem 'knife-solo_data_bag'
# end