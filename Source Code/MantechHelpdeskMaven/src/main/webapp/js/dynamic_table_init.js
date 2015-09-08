function fnFormatDetails(oTable, nTr)
{
    var aData = oTable.fnGetData(nTr);
    var sId = aData[1];
    $.getJSON("ajaxComplaintDetails", {
        id: sId
    }, function (jsonResponse) {
        obj = jsonResponse.complaint;
        var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
        sOut += '<tr><td>Date Register:</td><td>' + $.datepicker.formatDate("MM/dd yy", new Date(obj.dateRegister)) + '</td></tr>';
        
        var strDateClosed;
        if(obj.dateClose) {
            strDateClosed = $.datepicker.formatDate("MM/dd yy", new Date(obj.dateClose));
        } else {
            strDateClosed = "Not yet done";
        }
        sOut += '<tr><td>Description:</td><td>' + obj.description + '</td></tr>';
        sOut += '<tr><td>Date Close:</td><td>' + strDateClosed + '</td></tr>';
        sOut += '<tr><td>Department:</td><td>' + obj.departmentName + '</td></tr>';
        sOut += '<tr><td>Time Taken:</td><td>' + obj.timeTaken + 'h</td></tr>';
        sOut += '<tr><td>Notes:</td><td>' + (obj.notes ? obj.notes : "") + '</td></tr>';
        
        sOut += '</table>';
        
        oTable.fnOpen(nTr, sOut, 'details');
    });
}

$(document).ready(function () {

    $('#dynamic-table').dataTable({
        "aaSorting": [[4, "desc"]]
    });

    /*
     * Insert a 'details' column to the table
     */
    var nCloneTh = document.createElement('th');
    var nCloneTd = document.createElement('td');
    nCloneTd.innerHTML = '<img src="img/details_open.png">';
    nCloneTd.className = "center";

    $('#hidden-table-info thead tr').each(function () {
        this.insertBefore(nCloneTh, this.childNodes[0]);
    });

    $('#hidden-table-info tbody tr').each(function () {
        this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
    });

    /*
     * Initialse DataTables, with no sorting on the 'details' column
     */
    var oTable = $('#hidden-table-info').dataTable({
        "aoColumnDefs": [
            {"bSortable": false, "aTargets": [0]}
        ],
        "aaSorting": [[1, 'asc']]
    });

    /* Add event listener for opening and closing details
     * Note that the indicator for showing which row is open is not controlled by DataTables,
     * rather it is done here
     */
    $(document).on('click', '#hidden-table-info tbody td img', function () {
        var nTr = $(this).parents('tr')[0];
        if (oTable.fnIsOpen(nTr))
        {
            /* This row is already open - close it */
            this.src = "img/details_open.png";
            oTable.fnClose(nTr);
        }
        else
        {
            /* Open this row */
            this.src = "img/details_close.png";
            fnFormatDetails(oTable, nTr);
        }
    });
});