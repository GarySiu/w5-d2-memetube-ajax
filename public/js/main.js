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
  
}