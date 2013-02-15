# encoding: utf-8


module Stories
	def stories
		@items.select { |item| item[:kind] == 'story' }
	end

	# copied shamelessly from the Blogging helper
	def attribute_to_time(time)
		time = Time.local(time.year, time.month, time.day) if time.is_a?(Date)
		time = Time.parse(time) if time.is_a?(String)
		time
	end
	
	def sorted_stories
		stories.sort_by do |a|
			attribute_to_time(a[:date])
		end.reverse
	end
	
	def word_count_of_story the_story
		return word_count_of_content(the_story.compiled_content)
	end
	
	def word_count_of_content the_content
		return the_content.split.size
	end
	
	# This code pinched and adapted shamelessly from here:
	# http://pullmonkey.com/2008/01/31/rounding-to-the-nearest-number-in-ruby/
	def round_up(nearest=10, num)
		if num % nearest == 0
			return num
		else
			return num + nearest - (num % nearest)
		end
	end
	
	def round_down(nearest=10, num)
		if num % nearest == 0
			return num
		else
			return num - (num % nearest)
		end
	end
	
	def round_nearest(nearest=10, num)
		up = round_up(nearest, num)
		down = round_down(nearest, num)
		if (up - num) < (num - down)
			return up
		else
			return down
		end
	end
	
	
end



