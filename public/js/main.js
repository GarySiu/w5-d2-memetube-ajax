$(document).ready(function() {
  // console.log('Hello sleepy world');
  getVideos();
})

function getVideos() {
  // ajax call gets array of all videos
  $.get('/videos/').done(function(response) {
    // iterate through the array
    $.each(response, function(index, video) {
      appendNewItem(video);
    })
  })
}

function appendNewItem(data) {

  $('<div class="video-container">' +
  '<p class="title"><a href="/videos/' + data.id + '">#' + data.title + '</a></p>'+
  '<iframe type="text/html" width="640" height="390" src="http://www.youtube.com/embed/' + data.video_id + 
  '?autoplay=0" frameborder="0"/></iframe>' +
  '</div>').prependTo('#video-list')

}