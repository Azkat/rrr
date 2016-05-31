module ApplicationHelper
	def default_meta_tags
	  {
	    title: 'MVC APP!',
	   	separator: '|',	   	
	    site: 'RRR TESTAPP',
	   	reverse: true,
	    description: 'description',
	    keyword: 'keyword1, keyword2',
	    charset: 'utf-8'
	  }
	end
end
