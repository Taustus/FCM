function gridViewWithRowAndColumnSelection() {
    var color = '#ffc000', standart_color = 'white';
    var opacity = 0.2, standart_opacity = 1;
    $('.gridview_with_row_and_column_selection * td').on('mouseover', function () {
        var td = $(this);
        var tr = td.closest('tr').find('td');
        var col = td.closest('table').find('td:nth-child(' + (td.index() + 1) + ')');

        tr.css({
            'background': color,
            'opacity': opacity
        });

        col.css({
            'background': color,
            'opacity': opacity
        });

        td.css({
            'background': color,
            'opacity': standart_opacity
        });

    });
    $('.gridview_with_row_and_column_selection * td').on('mouseout', function () {
        var td = $(this);
        var tr = td.closest('tr').find('td');
        var col = td.closest('table').find('td:nth-child(' + (td.index() + 1) + ')');

        tr.css({
            'background': standart_color,
            'opacity': standart_opacity
        });

        col.css({
            'background': standart_color,
            'opacity': standart_opacity
        });

        td.css({
            'background': standart_color
        });
    });
}

$(document).ready(function () {
    gridViewWithRowAndColumnSelection();
})