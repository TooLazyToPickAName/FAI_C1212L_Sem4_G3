/**
 * @windluffy
 */

$(document).ready(function () {
    /**
     * Label for priority
     */
    $('.priorityComplaint').each(function () {
        sStatus = this.innerHTML;
        switch (sStatus) {
            case "low":
                $(this).addClass("label label-success");
                break;
            case "normal":
                $(this).addClass("label label-warning");
                break;
            case "high":
                $(this).addClass("label label-danger");
                break;
            default:
                break;
        }
    });

    /**
     * Label for status
     */
    $('.statusComplaint').each(function () {
        sStatus = this.innerHTML;
        switch (sStatus) {
            case "pending":
                $(this).addClass("label label-success");
                break;
            case "assigned":
                $(this).addClass("label label-warning");
                break;
            case "progressing":
                $(this).addClass("label label-danger");
                break;
            case "rejected":
                $(this).addClass("label label-primary");
                break;
            case "closed":
                $(this).addClass("label label-default");
                break;
            default:
                break;
        }
    });

    $('#hidCategory').val($('input[name=rdCategories]:checked').val());
    $('input[name=rdCategories]').on("change", function () {
        $('#hidCategory').val($('input[name=rdCategories]:checked').val());
        console.log($('#hidCategory').val());
    });

});