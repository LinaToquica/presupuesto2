var json = [
  {
    name: "Item 1",
    id: "27",
    checked: "true"
  },
  {
    name: "Item 2",
    id: "27",
    checked: "true"
  }
 
];

$.each(json, function () {
        $("#checkboxes").append($("<label>").text(this.name).prepend(
            $("<input>").attr('type', 'checkbox').val(this.id)
               .prop('checked', this.checked)
        ));
    });


    $("#checkboxes").on('change', '[type=checkbox]', function () {
       console.log($(this).val());
    });