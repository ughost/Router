/* AUTOGENERATED DEVELOPMENT CODE */
(function() {
    this.Router = {
        _: {},
        get: function(selector, params) {
            var _, collection, i, len, param, stage, stages, value;
            value = "";
            if (selector.indexOf(".") !== -1) {
                stages = selector.split(".");
                _ = this._;
                for (i = 0, len = stages.length; i < len; i++) {
                    stage = stages[i];
                    collection = _[stage];
                    if (collection !== void 0) {
                        if (typeof collection !== "string") {
                            _ = collection;
                        } else {
                            value = collection;
                        }
                    } else {
                        break;
                    }
                }
            } else {
                value = this._[selector] || "";
            }
            if (params !== void 0) {
                for (param in params) {
                    value = value.replace(new RegExp("\\%" + param + "\\%", "i"), params[param]);
                }
            }
            return value;
        }
    };
}).call(this);