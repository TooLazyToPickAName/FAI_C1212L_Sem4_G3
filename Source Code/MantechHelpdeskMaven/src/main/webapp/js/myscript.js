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
    });


    $('#myModal').on('show.bs.modal', function (e) {
        //get data-id attribute of the clicked element
        var text = $(e.relatedTarget).data('complainttext');
        var complaintId = $(e.relatedTarget).data('complaintid');
        var priority = $(e.relatedTarget).data('priority');
        //pass to modal
        $("#spanComplaintID").text(text);
        //$("#ddlPriority").val(priority);
        vmTechnicals.priority(priority);
        vmTechnicals.complaintId(complaintId);
        initEventSearchResult();
    });

    $('#myModal').on('hidden.bs.modal', function (e) {
        if (vmTechnicals) {
            vmTechnicals.reset();
        }
    });

    var initEventSearchResult = function () {
        $(document).mouseup(function (e)
        {
            var $container = $("#txtSearchTechnical");
            var $container1 = $("#searchResult a");
            var $searchResult = $("#searchResult");
            if (!$container.is(e.target) // if the target of the click isn't the container...
                    && $container.has(e.target).length === 0 && $container1.has(e.target).length === 0) // ... nor a descendant of the container
            {
                vmTechnicals.hideResultBox();
            }
        });
    };



    //Toastr!!!!!!!!!!!!!
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "progressBar": false,
        "positionClass": "toast-top-right",
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };

    //Technical Action
    var technicalId = "";
    var complaintId = "";
    var notes = "";

    $('#modalConfirmClose, #modalConfirmReject').on('show.bs.modal', function (e) {
        complaintId = $(e.relatedTarget).data('complaintid');
        technicalId = $(e.relatedTarget).data('technicalid');
    });

    $('#modalConfirmClose').on('hidden.bs.modal', function (e) {
        complaintId = "";
        technicalId = "";
    });

    $('#btnConfirm, #modalConfirmReject').on('click', function () {
        TechnicalActions.closeComplaint(complaintId, technicalId, function () {
            toastr.success('You closed successfully.', 'Successfully!');
        }, function () {
            toastr.error('', 'Error!');
        });
        $(this).modal("hide");
        reloadPage();
    });

    $('#btnReject').on('click', function () {
        TechnicalActions.rejectComplaint(complaintId, technicalId, notes, function () {
            toastr.success('You rejected successfully.', 'Successfully!');
        }, function () {
            toastr.success('', 'Error!');
        });
        $(this).modal("hide");
        reloadPage();
    });
});

//not need document ready

var reloadPage = function (timeMiliseconds, callback) {
    if (!timeMiliseconds) {
        timeMiliseconds = 500;
    }
    setTimeout(function () {
        location.reload();
    }, timeMiliseconds);
    if (callback) {
        callback();
    }
    ;
};

//Assign technicals

var TechnicalsViewModel = function () {
    var self = this;

    self.complaintId = ko.observable();
    self.priority = ko.observable();
    self.pickedTechnicals = ko.observableArray([]);
    self.resultSearchTechnicals = ko.observableArray([]);
    self.keyword = ko.observable();

    self.deleteTechnical = function (technical) {
        self.pickedTechnicals.remove(technical);
    };

    self.showFirstResultBox = function () {
        self.fillResults();
    };

    self.checkExistInArray = function (technical, arrTechnical) {
        for (var key in arrTechnical) {
            if (arrTechnical[key].id === technical.id) {
                return true;
            }
        }
        return false;
    };

    self.fillResults = function () {
        $.get(
                "ajaxStatusTechnicals",
                {keyword: self.keyword()},
        function (data) {
            var filtered = data.technicals.filter(function (item) {
                return !self.checkExistInArray(item, self.pickedTechnicals());
            });
            self.resultSearchTechnicals(filtered);
            initSelectHandler();
            $("#searchResult").show();
        }
        );
    };

    self.searchTheKeyword = function (elm) {
        console.log(elm);
        self.fillResults();
    };

    self.hideResultBox = function () {
        self.resultSearchTechnicals([]);
        $("#searchResult").hide();
    };

    self.pickATechnical = function (technical) {
        if (-1 === $.inArray(technical, self.pickedTechnicals())) {
            self.pickedTechnicals.push(technical);
        }
        $("#searchResult").hide();
        self.keyword("");
        $("#txtSearchTechnical").focus();
    };

    self.doSubmit = function () {
        self.assignAndSaveTechnicalsJob(function () {
            toastr.success('You assigned successfully.', 'Successfully!');
            setTimeout(function () {
                location.reload();
            }, 500);
        }, function () {
            toastr.error('', 'Error!');
        });
        $("#myModal").modal("hide");

    };

    self.assignAndSaveTechnicalsJob = function (success, fail) {
        params = {
            strTechnicalsId: self.convertToStrTechnicalsId(self.pickedTechnicals()),
            complaintId: self.complaintId(),
            priority: self.priority()
        };

        $.get(
                "ajaxAssignOrSaveTechnicalsJob",
                params,
                function (data) {
                    if (data.isAssignSuccess) {
                        success();
                    } else {
                        fail();
                    }
                }
        );
    };

    self.convertToStrTechnicalsId = function (data) {
        var arrId = [];
        for (var key in data) {
            arrId.push(data[key].id);
        }
        return arrId.join(",");
    };

    self.reset = function () {
        self.pickedTechnicals([]);
        self.resultSearchTechnicals([]);
        self.hideResultBox();
        self.keyword("");
        self.complaintId(-1);
        self.priority(-1);
    };

};

var initSelectHandler = function () {
    $("a.technical-item").hover(function () {
        $("a.technical-item").removeClass("item-active");
        $(this).addClass("item-active");
    });
};

var TechnicalActions = {
    closeComplaint: function (complaintId, technicalId, success, fail) {
        var params = {'complaintId': complaintId, 'technicalId': technicalId};
        $.get(
                "ajaxCloseComplaint",
                params,
                function (data) {
                    if (data.isSaveSuccess) {
                        success();
                    } else {
                        fail();
                    }
                }
        );
    },
    rejectComplaint: function (complaintId, technicalId, notes, success, fail) {
        var params = {'complaintId': complaintId, 'technicalId': technicalId, 'notes': notes};
        $.get(
                "ajaxRejectComplaint",
                params,
                function (data) {
                    if (data.isSaveSuccess) {
                        success();
                    } else {
                        fail();
                    }
                }
        );
    }
};
