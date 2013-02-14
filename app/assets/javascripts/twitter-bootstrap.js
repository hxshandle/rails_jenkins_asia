var Utils = {
  initlizate:function(root){
    root == root || document;
    $("a[rel=popover]",root).popover();
    $(".tooltip",root).tooltip();
    $("a[rel=tooltip]",root).tooltip();
    $(".alert-message",root).alert();
    //for all datepicker field
    $("input.datepicker",root).each(function(){
      $(this).datepicker({
        altFormat: "yy-mm-dd",
        dateFormat: "yy-mm-dd",
        altField: $(this).next()
      });
    });
  }

};


// Provide HTML element replacement for data-remote ajax calls
$(function() {
  Utils.initlizate();
  $('[data-remote][data-replace]')
    .data('type', 'html')
    .on('ajax:success', function(event, data) {
      var $this = $(this);
      $($this.data('replace')).html(data);
      $this.trigger('ajax:replaced');
    })
    .on('ajax:replaced',function(evt,data){
      var $this = $(this);
      Utils.initlizate($this.data('replace'));
    });
});
