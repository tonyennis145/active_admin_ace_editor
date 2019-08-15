window.onload = function() {
  initAceEditors();
};

$(document).on('has_many_add:after', function() {
  initAceEditors();
});

var initAceEditors = function() {
  var editors = document.querySelectorAll('.ace-editor-container');

  for (var i = 0; i < editors.length; i++) {
    let thisElement = editors[i];
    let thisEditor = ace.edit(thisElement);
    if ((mode = thisElement.getAttribute('data-options-mode'))) {
      thisEditor.session.setMode(`ace/mode/${mode}`);
    }
    thisEditor.session.on('change', function(delta) {
      input = thisElement.parentElement.querySelector('input[type="hidden"]');
      input.value = thisEditor.session.getValue();
    });
  }
};
