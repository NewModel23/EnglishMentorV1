(function () {
    'use strict'

    var app = angular.module('EM', [
                                    'EM.clients',
                                    
                                    'ui.router',
                                    'ui.bootstrap'
    

    ]);

    //// HTTP interceptor
    //app.config(['$httpProvider', function ($httpProvider) {
    //    $httpProvider.interceptors.push('authInterceptorService');
    //}]);

    //// Block buttons on request XHR / HTTP
    //app.run(['$rootScope', '$http', function ($rootScope, $http) {
    //    $http.defaults.transformRequest.push(function (data) {
    //        $rootScope.InProc = true;
    //        return data;
    //    });
    //    $http.defaults.transformResponse.push(function (data) {
    //        $rootScope.InProc = false;
    //        return data;
    //    });

    //}]);

    //app.run(['authService', '$rootScope','ModalsService',
    //  function (authService, $rootScope, ModalsService) {
    //      $rootScope.$on('$stateChangeStart', function (ev, to, toParams, from, fromParams) {
    //          document.body.scrollTop = document.documentElement.scrollTop = 0;
    //          ModalsService.close(null);
    //          authService.previousState.name = from.name;
    //          authService.previousState.params = fromParams;
    //      });
    //  }]);

    //app.run(['authService', function (authService) {
    //    authService.fillAuthData();

    //}]);

    //app.config(["$stateProvider", "$urlRouterProvider", States]);

    //function States($stateProvider, $urlRouterProvider) {

    //    // Default
    //    $urlRouterProvider.otherwise("/signin");

    //    //$stateProvider

    //    $stateProvider
    //        .state('home', {
    //            url: '/home',
    //            templateUrl: 'app/home/views/home.html',
    //            controller: 'HomeCtrl as vm'
    //        })
    //        .state('client', {
    //            url: '/client',
    //            templateUrl: 'app/client/views/client.html',
    //            controller: 'ClientCtrl as vm'
    //        });



    //    $(document).ready(function () {
    //        toastr.options = {
    //            "closeButton": true,
    //            "debug": false,
    //            "newestOnTop": false,
    //            "progressBar": false,
    //            "positionClass": "toast-bottom-right",
    //            "preventDuplicates": false,
    //            "onclick": null,
    //            "showDuration": "300",
    //            "hideDuration": "1000",
    //            "timeOut": "5000",
    //            "extendedTimeOut": "1000",
    //            "showEasing": "swing",
    //            "hideEasing": "linear",
    //            "showMethod": "fadeIn",
    //            "hideMethod": "fadeOut"
    //        };
    //    });


    //}

})();