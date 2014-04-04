require 'set'
require 'json'
class ApplicationController < ActionController::Base
	class TagSet
		def initialize(*args)
			@tags = Set.new(args)
		end		

		def to_json(opts = {})
			@tags.to_a.to_json(opts)
		end
	end
  def index
  	render json: JSON.pretty_generate(
  		name: 'Hello World',
  		tags: TagSet.new('tag1', 'tag2')
  	)
  end
end
