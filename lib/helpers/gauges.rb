# encoding: utf-8

module Gauges
	def gauge_snippet
		return "<script type=\"text/javascript\">	var _gauges = _gauges || [];(function() {	var t   = document.createElement('script');	t.type  = 'text/javascript'; t.async = true; t.id    = 'gauges-tracker'; t.setAttribute('data-site-id', '" + @config[:gauges_id] + "'); t.src = '//secure.gaug.es/track.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(t, s); })(); </script> "
	end
end