module ApplicationHelper

	def thumb_helper(image)
		if image.width > image.height
			return "thumb1"
		elsif image.width < image.height
			return "thumb2"
		else
			return "thumb3"
		end
	end

end
