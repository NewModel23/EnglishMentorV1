(function () {
    'use strict'

    angular.module('EM.clients').factory('ClientsService', ClientsService);

    ClientsService.$inject = ['$http'];

    function ClientsService($http) {
        var service = {};

        service.getAll = function () {
            var endpoint = 'http://localhost:55821/api/Clientes';
            return $http.get(endpoint);
        }

        return service;

    }

})();