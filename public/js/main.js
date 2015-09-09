$(document).ready(function() {
  // console.log('Hello sleepy world');
  getVideos();

  $('#new-video-link').on('click', function() {
    // display and hide our form
    $('#new-video-form-container').toggle();
  })

  $('#add-video-button').on('click', function() {
    // handle submission of our json data
    event.preventDefault();
  })

})

function getVideos() {
  // ajax call gets array of all videos
  $.get('/videos/').done(function(response) {
    // iterate through the array
    $.each(response, function(index, video) {
      console.log(video);
      prependNewVideo(video);
    })
  })
}

function prependNewVideo(video) {

  $('<div class="video-container">' +
  '<p class="title"><a href="/videos/' + video.id + '">#' + video.title + '</a></p>'+
  '<iframe type="text/html" width="640" height="390" src="http://www.youtube.com/embed/' + video.video_id + 
  '?autoplay=0" frameborder="0"/></iframe>' +
  '</div>').prependTo('#video-list')

}