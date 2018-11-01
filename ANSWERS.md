# Q0: Why are these two errors being thrown?

i. Data is not accessible until db:migrate creates a table and populates it with the data

ii. Error #2: The code calls on a model (Pokemon) that doesn't exist until we generate it.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

seeds.rb creates the Pokemon and my create method
index.html.erb shows the Pokemon.

Each Pokemon has a name, a level between 1-20, and an "ndex"

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The line creates a button that implements the capture_path

"capture_path" is a helper path that includes both the route and method.  capture_path(id: @pokemon) passes in a pokemon object to a specified route (capture_path) which implements the method capture using that object's id.

# Question 3: What would you name your own Pokemon?

Strawbarberryan

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I used redirect_to trainer_path

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

 `views/layouts/application.html.erb` renders 'layouts/messages' which contains embedded HTML with the alert box and error messages

# Give us feedback on the project and decal below!

This is such a fun, empowering project because of the UI and the clear guidelines!!  I would love to spend more time on it

# Extra credit: Link your Heroku deployed app
