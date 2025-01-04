
$(document).ready(function() {
        var form;
$('body').on('click', '.btn-delete', function(e) {
    e.preventDefault();
form = $(this).closest('form');
$('#deleteConfirmationModal').modal('show');
        });

$('#confirmDeleteButton').click(function() {
    form.submit();
        });
    });
