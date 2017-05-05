module SwellMedia
	class StaticController < ApplicationController

		def home
			# the homepage
			@articles = SwellMedia::Article.all
			render layout: 'swell_media/homepage'
		end

    def about
      @team = User.admin
    end

	end
end