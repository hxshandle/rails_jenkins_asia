var Utils = {
  /**
   * Initlizate
   */
  initlizate: function (root) {
    root == root || document;
    $("a[rel=popover]", root).popover();
    $(".tooltip", root).tooltip();
    $("a[rel=tooltip]", root).tooltip();
    $('.chzn-select').each(function () {
      $this = $(this);
      var placeholderText = $this.attr('placeholder');
      $this.chosen({placeholder_text: placeholderText});
    });
    // For all datepicker field
    $("input.datepicker", root).each(function () {
      $(this).datepicker({
        altFormat: "yy-mm-dd",
        dateFormat: "yy-mm-dd",
        altField: $(this).next()
      });
    });
  },
  /**
   * Notify utils
   */
  pnotify: function (title, text, type) {
    $.pnotify({
      title: title,
      text: text,
      type: type,
      sticker: false,
      history: false,
      animate_speed: 'normal'
    });
  }

};


// Provide HTML element replacement for data-remote ajax calls
$(function () {
  Utils.initlizate();
  // Reinitlizate for ajax HTML content
  $('[data-remote][data-replace]')
      .data('type', 'html')
      .on('ajax:success', function (event, data) {
        var $this = $(this);
        $($this.data('replace')).html(data);
        $this.trigger('ajax:replaced');
      })
      .on('ajax:replaced', function (evt, data) {
        var $this = $(this);
        Utils.initlizate($this.data('replace'));
      });
});

// Flash message nofitication processor
$(function () {
  $('#flash-message p').each(function () {
    var $this = $(this);
    Utils.pnotify($this.attr('class'), $this.text().replace(/\n/g, ''), $this.attr('class'));
  });
});
