function ds_list_bogo(list) {
    var sorted = function(list) {
        for (var i = 0; i < ds_list_size(list) - 1; i++) {
            if (list[| i] > list[| i + 1]) {
                return false;
            }
        }
        return true;
    }
    while (true) {
        try {
            if (sorted(list)) break;
            ds_list_shuffle(list);
        } catch (e) {
            break;
        }
    }
}

function array_bogo(array) {
    var sorted = function(array) {
        for (var i = 0; i < array_length(array) - 1; i++) {
            if (array[i] > array[i + 1]) {
                return false;
            }
        }
        return true;
    }
    var shuffle = function(array) {
        var values = ds_list_create();
        for (var i = 0; i < array_length(array); i++) {
            ds_list_add(values, array[i]);
        }
        ds_list_shuffle(values);
        for (var i = 0; i < array_length(array); i++) {
            array[@ i] = values[| i];
        }
        ds_list_destroy(values);
    }
    while (true) {
        try {
            if (sorted(array)) break;
            shuffle(array);
        } catch (e) {
            break;
        }
    }
}