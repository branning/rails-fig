fig run web rails new . --force --database=postgresql --skip-bundle

# uncomment gem 'therubyracer', platforms: :ruby in Gemfile
sed -e s/"# gem 'therubyracer', platforms: :ruby"/"gem 'therubyracer', platforms: :ruby"/

fig build

mv database.yml.hold database.yml

fig up 

# Finally, we need to run this in another terminal:
# fig run web rake db:create

