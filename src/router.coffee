@Router = {
    storage: {}

    get: (selector, params) ->
        if selector.indexOf '.' isnt -1
            stages = selector.split '.'
            storage = @storage

            for stage in stages
                if stage.length is 0
                    value = ''
                    break

                collection = storage[stage]
                if collection isnt undefined
                    if typeof collection isnt 'string'
                        storage = collection
                    else value = collection
                else
                    value = ''
                    break

        else value = @storage[selector] or ''

        if params isnt undefined
            for param of params
                regexp = new RegExp '\\%'+param+'\\%', i
                value = value.replace regexp, params[param]

        value

    set: (selector, value) ->
        #?handle multi-level selector
        @storage[selector] = value
}