#encoding: utf-8

module Unaccent

	def to_us
		res = self.to_s
		res.gsub!(/[êéèë]/,'e')
		res.gsub!(/['ùûü']/,'u')
		res.gsub!(/[ç]/,'c')
		res.gsub!(/[ôö]/,'o')
		res.gsub!(/[àâä]/,'a')
		res.gsub!(/[îï]/,'i')
		return res
	end
end
