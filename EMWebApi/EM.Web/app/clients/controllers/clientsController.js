(function () {
    'use strict'

    angular.module('EM.clients').controller('ClientsCtrl', ClientsCtrl);

    ClientsCtrl.$inject = ['$rootScope', '$scope', 'ClientsService'];

    function ClientsCtrl($rootScope, $scope, ClientsService) {
        var vm = this;

        vm.clients = [];

        ClientsService.getAll().then(
            function (response) {
                console.log(response);
                vm.clients = response.data;
            },
            function (error) {
                console.log(error);
            });

    };


})();