var app = angular.module('costumerFunctions', []);



angular.module('contabilidad').controller('micontrolador', micontrolador);



micontrolador.$inject = ['$rootScope', '$scope', 'dataService'];

function micontrolador($rootScope, $scope, dataService) {

    $scope.id = 0;

    $scope.arreglo = [];



    $scope.getById = function () {

        $scope.clean();

        dataService.consultar($scope.id).then(

          function (response) {

              $scope.arreglo[0] = response.data;

          },

          function (error) {

              $scope.error = error;

          }

        );

    };



    $scope.getAll = function () {

        $scope.clean();

        dataService.getAll().then(

          function (response) {

              $scope.arreglo = response.data;

          },

          function (error) {

              $scope.error = error;

          }

        );

    };



    $scope.clean = function () {

        $scope.arreglo = [];

        $scope.error = '';

    }

};





angular.module('contabilidad').factory('dataService', dataService);

dataService.$inject = ['$http'];

function dataService($http) {

    var service = {};



    service.getAll = function () {

        var endpoint = 'https://jsonplaceholder.typicode.com/todos'

        return $http.get(endpoint);

    }



    service.consultar = function (id) {

        var endpoint = 'https://jsonplaceholder.typicode.com/todos/' + id;

        return $http.get(endpoint);

    }



    return service;

};