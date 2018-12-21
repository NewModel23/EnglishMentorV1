(function () {

    var app = angular.module('EM.clients', ['ui.router']);

    app.config(['$stateProvider', '$urlRouterProvider', States]);

    function States($stateProvider, $urlRouterProvider) {

        $urlRouterProvider.otherwise('/');

        $stateProvider
            .state('clients', {
                url: '/clients',
                templateUrl: 'app/clients/views/clients.html',
                controller: 'ClientsCtrl as vm'
            })
            .state('client', {
                url: '/clients/:id',
                templateUrl: 'app/clients/views/client.html',
                controller: 'ClientCtrl as vm'
        })
    }

})();