function gridViewWithRowAndColumnSelection() {
    $('.gridview_with_row_and_column_selection * td').on('mouseover', function () {
        var td = $(this);
        var tr = td.closest('tr').find('td');
        var col = td.closest('table').find('td:nth-child(' + (td.index() + 1) + ')');

        tr.toggleClass('gridview_selected_half_opacity');
        col.toggleClass('gridview_selected_half_opacity');
        td.toggleClass('gridview_selected_full_opacity');
    });
    $('.gridview_with_row_and_column_selection * td').on('mouseout', function () {
        var td = $(this);
        var tr = td.closest('tr').find('td');
        var col = td.closest('table').find('td:nth-child(' + (td.index() + 1) + ')');

        tr.toggleClass('gridview_selected_half_opacity');
        col.toggleClass('gridview_selected_half_opacity');
        td.toggleClass('gridview_selected_full_opacity');
    });
}

$(document).ready(function () {
    gridViewWithRowAndColumnSelection();
})