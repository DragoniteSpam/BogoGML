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
            if (sorted(list)) return;
            ds_list_shuffle(list);
        } catch (e) {
            return;
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
    while (true) {
        try {
            if (sorted(array)) return;
            array_shuffle_ext(array);
        } catch (e) {
            return;
        }
    }
}