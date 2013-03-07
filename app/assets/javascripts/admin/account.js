// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function(){
  $('#new_user').on('ajax:success',function(data,status){
    $('#user-gallery').load('/admin/user_gallery');
    this.reset();
  })
})