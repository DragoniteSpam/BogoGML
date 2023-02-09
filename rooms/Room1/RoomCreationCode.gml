#region array

var c = 10;
var trials = 10;
var array = [];

var t = get_timer();

repeat (trials) {
    var n = 0;
    repeat (c) array[n++] = irandom(100);
    array_bogo(array);
}

show_debug_message("Bogo on arrays of size {0} takes about {1} s", c, (get_timer() - t) / 1_000_000);

#endregion

#region list

var list = ds_list_create();

t = get_timer();

repeat (trials) {
    var n = 0;
    repeat (c) list[| n++] = irandom(100);
    ds_list_bogo(list);
}

ds_list_destroy(list);

show_debug_message("Bogo on lists of size {0} takes about {1} s", c, (get_timer() - t) / 1_000_000);

#endregion