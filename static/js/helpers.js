prediction_url = 'https://morning-bastion-85295.herokuapp.com/api/forecasts'
// prediction_url = 'http://127.0.0.1:8080/api/forecasts'
$('#main_header').click(function() {
		$.getJSON(prediction_url, function(data) {
			prediction = data['prophecies']
			set_content_in_divs(prediction);
		});
});

function set_content_in_divs(paragraphs) {
  $.each(paragraphs, function(i, d) {
    p = $("#p-" + i)
    p.html("<p>" + d + "</p>")
});
}