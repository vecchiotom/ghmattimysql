exports('executeSync', function (query, parameters)
    local res = {}
    local finishedQuery = false
    exports.ghmattimysql:execute(query, parameters, function(result)
        res = result
        finishedQuery = true
    end)
    repeat Citizen.Wait(0) until finishedQuery == true
    return res
end)

exports('scalarSync', function (query, parameters)
    local res = {}
    local finishedQuery = false
    exports.ghmattimysql:scalar(query, parameters, function (result)
        res = result
        finishedQuery = true
    end)
    repeat Citizen.Wait(0) until finishedQuery == true
    return res
end)

exports('transactionSync', function (query, parameters)
    local res = {}
    local finishedTransaction = false
    exports.ghmattimysql:transaction(query, parameters, function (result)
        res = result
        finishedTransaction = true
    end)
    repeat Citizen.Wait(0) until finishedTransaction == true
    return res
end)
