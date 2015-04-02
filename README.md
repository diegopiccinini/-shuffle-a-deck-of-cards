### Random Cards

This is a Rails app that allows users to shuffle a deck of cards and presents the result.
The Game Logic is a gem package in game_shuffle_cards.

http://www.rubydoc.info/gems/game_shuffle_cards


https://github.com/diegopiccinini/game_shuffle_cards


The applications was developed using Cucumber and capybara software in the BDD pattern.

# Ruby version
		2.2+

# Rails version

  	4.2.0

# Configuration

		git clone https://github.com/diegopiccinini/random_cards.git
		cd random_cards
		bundle install


* Database creation

		bin/rake db:create



* How to run the test suite
cd in random_cards root directory and write
```bash
cucumber
```
you can also test the game_shuffle_cards

### Copyright

Copyright (c) 2015 **Diego Hernán Piccinini Lagos**

See LICENSE.txt for details.