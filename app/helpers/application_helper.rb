module ApplicationHelper

def include_javascript (file)
    s = " <script type=\"text/javascript\">" + render(:file => file) + "</script>"
    content_for(:head, raw(s))
end




def get_address(latitude,longitude)
			
		if (!latitude.nil?)
			require 'open-uri'
			require 'json'
			result = JSON.parse(open("http://maps.googleapis.com/maps/api/geocode/json?latlng=#{latitude},#{longitude}&sensor=false").read)
			localidad = "near "+result['results'][0]['address_components'][3]['long_name']
		else
			localidad = ""
		end
		
		localidad	
end






def add_gmap_marker (latitude,longitude,text)
	javascript = ""
	if(!latitude.nil?)
		javascript = "<script>						
			latlng = new google.maps.LatLng(#{latitude}, #{longitude});
			marker = new google.maps.Marker({
				position: latlng, 
				map: map, 
				title:'#{text}'
			});
		 	</script>"
	end
	raw(javascript)
end

end
