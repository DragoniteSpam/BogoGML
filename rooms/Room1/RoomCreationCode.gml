#region array
/*
var array = array_create(10);

repeat (10) {
    var n = 0;
    repeat (10) array[n++] = irandom(100);
    array_bogo(array);
    var str = "";
    for (var i = 0; i < array_length(array); i++) {
        str += string(array[i]) + " ";
    }
    show_debug_message(str);
}
*/
#endregion

#region list
/*
var list = ds_list_create();

repeat (10) {
    var n = 0;
    repeat (10) list[| n++] = irandom(100);
    ds_list_bogo(list);
    var str = "";
    for (var i = 0; i < ds_list_size(list); i++) {
        str += string(list[| i]) + " ";
    }
    show_debug_message(str);
}

ds_list_destroy(list);
*/
#endregion