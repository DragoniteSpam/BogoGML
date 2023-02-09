function ds_list_bogo(list) {
    var sorted = function(list) {
        for (var i = 0, n = ds_list_size(list) - 1; i < n; i++) {
            if (list[| i] > list[| i + 1]) {
                return false;
            }
        }
        return true;
    }
    while (true) {
        if (sorted(list)) return;
        ds_list_shuffle(list);
    }
}

function array_bogo(array) {
    var sorted = function(array) {
        for (var i = 0, n = array_length(array) - 1; i < n; i++) {
            if (array[i] > array[i + 1]) {
                return false;
            }
        }
        return true;
    }
    while (true) {
        if (sorted(array)) return;
        array_shuffle_ext(array);
    }
}