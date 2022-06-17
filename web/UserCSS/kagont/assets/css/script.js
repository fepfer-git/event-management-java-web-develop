var app = angular.module('demoApp', ['ngAnimate']);
app.controller('demoController', function ($scope) {
	var opendd;
	var storedNewNotifications;
	var storedReadNotifications;
	var storedawaitingNotifications;
	var init = function () {
		storedNewNotifications = JSON.parse(localStorage.getItem('newNotifications'));
		storedReadNotifications = JSON.parse(localStorage.getItem('readNotifications'));
		storedawaitingNotifications = JSON.parse(localStorage.getItem('awaitingNotifications'));
		if (storedNewNotifications == null) {
			$scope.newNotifications = [
				{
					user: pollingData.users[1],
					action: pollingData.actions[0],
					target: pollingData.actionTargets[2],
					timestamp: new Date()
				}
			];
		}
		else {
			$scope.newNotifications = storedNewNotifications;
		}
		if (storedReadNotifications == null) {
			$scope.readNotifications = [
				{
					user: pollingData.users[2],
					action: pollingData.actions[1],
					target: pollingData.actionTargets[0],
					timestamp: new Date()
				}
			];
		}
		else {
			$scope.readNotifications = storedReadNotifications;
		}
		if (storedawaitingNotifications == null)
			$scope.awaitingNotifications = 1;
		else {
			$scope.awaitingNotifications = storedawaitingNotifications;
			if ($scope.awaitingNotifications == 0)
				angular.element('#notifications-count').hide();
		}
		$scope.showNotifications = function ($event) {
			var targetdd = angular.element($event.target).closest('.dropdown-container').find('.dropdown-menu');
			opendd = targetdd;
			if (targetdd.hasClass('fadeInDown')) {
				hidedd(targetdd);
			}
			else {
				targetdd.css('display', 'block').removeClass('fadeOutUp').addClass('fadeInDown')
					.on('animationend webkitAnimationEnd oanimationend MSAnimationEnd', function () {
						angular.element(this).show();
					});
				targetdd.find('.dropdown-body')[0].scrollTop = 0;
				$scope.awaitingNotifications = 0;
				angular.element('#notifications-count').removeClass('fadeIn').addClass('fadeOut');
			}
		};
		$scope.hideInfo = function () {
			angular.element('#demoInfo').addClass('zoomOut')
				.on('animationend webkitAnimationEnd oanimationend MSAnimationEnd', function () {
					angular.element(this).hide();
					angular.element('.instruction').addClass('zoomIn').show();
				});
		}
		//show notifications count if new notifications are received
		setInterval(function () {
			if ($scope.awaitingNotifications > 0 && opendd == null && (angular.element('#notifications-count').css('opacity') == '0' || angular.element('#notifications-count').is(':hidden')))
				angular.element('#notifications-count').removeClass('fadeOut').addClass('fadeIn').show();
		}, 400);
		dummyPolling();
	}

	//Hide dropdown function
	var hidedd = function (targetdd) {
		targetdd.removeClass('fadeInDown').addClass('fadeOutUp')
			.on('animationend webkitAnimationEnd oanimationend MSAnimationEnd', function () {
				angular.element(this).hide();
			});
		opendd = null;
		$scope.awaitingNotifications = 0;
		angular.forEach($scope.newNotifications, function (notification) {
			$scope.readNotifications.push(notification);
		});
		$scope.newNotifications = [];
		localStorage.setItem('readNotifications', JSON.stringify($scope.readNotifications));
		localStorage.setItem('newNotifications', JSON.stringify($scope.newNotifications));
		localStorage.setItem('awaitingNotifications', JSON.stringify($scope.awaitingNotifications));
		if ($scope.awaitingNotifications > 0)
			angular.element('#notifications-count').removeClass('fadeOut').addClass('fadeIn');
	}

	//New notification is created by selecting random user, action and targets from this object
	var pollingData = {
		users: [
			{
				name: "Trần Anh Tuấn",
				imageUrl: "https://scontent.fsgn5-3.fna.fbcdn.net/v/t1.6435-9/44098758_577402446047812_9162124226960818176_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=ad2b24&_nc_ohc=7I5WpcG3LTAAX-VNR1b&tn=9ujsNkL22-fB7_ta&_nc_ht=scontent.fsgn5-3.fna&oh=00_AT_FO0cFGnrXL3fooZXuMZonCLW432Mfn8q_jMAsN4fXUw&oe=62B0BA5C"
			},
			{
				name: "Lý Quốc Lâm",
				imageUrl: "https://scontent.fsgn5-8.fna.fbcdn.net/v/t39.30808-6/268138490_3103131879918571_722377971817838195_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=t4jrx3BAKPMAX_2Pf5A&_nc_ht=scontent.fsgn5-8.fna&oh=00_AT9QW_H1o3cznE_sPszjRvODgwou_JOYuUK7JnEYxXe8Sw&oe=62910D88"
			},
			{
				name: "Hoàng Mạnh Hải",
				imageUrl: "https://scontent.fsgn5-1.fna.fbcdn.net/v/t1.6435-9/131987807_2923419517879468_5027139209435044609_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=0UbmQxjmDBgAX-o82kg&_nc_ht=scontent.fsgn5-1.fna&oh=00_AT9GTavRg2brSxvkKX7qApONoJwGsVCyUHgSlWu2Qm2TXQ&oe=62B2F816"
			},
			{
				name: "Nguyễn Minh Thái",
				imageUrl: "https://scontent.fsgn5-2.fna.fbcdn.net/v/t39.30808-6/238531581_2804314559807775_4084519980727160522_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Jcih1wDPXaUAX9Yoy8u&_nc_ht=scontent.fsgn5-2.fna&oh=00_AT_f7QAnCpVf5RnDSjMVRusxR_SpwpLRka_o-Bor5z7rtg&oe=62909B00"
			},
			{
				name: "Nguyễn Anh Tuấn",
				imageUrl: "https://scontent.fsgn5-3.fna.fbcdn.net/v/t1.6435-9/167153469_2550084088618843_5195499627306855870_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=bFCdpwodOrIAX_9sp9T&_nc_ht=scontent.fsgn5-3.fna&oh=00_AT9Nc-jiWbdj6O2vt6t_Ws6qVMD-rtEWUxoWsJp_5k1Hrw&oe=62B03A19"
			}
		],
		actions: ["upvoted", "promoted", "shared"],
		actionTargets: ["your answer", "your post", "your question"]
	};

	//generates a random number between 0 and 2 to select random polling data
	var getRandomNumber = function () {
		return Math.floor(Math.random() * 3);
	};

	//creates and returns a new notification
	var getNewNotification = function () {
		var userIndex = getRandomNumber();
		var actionIndex = getRandomNumber();
		var actionTargetIndex = getRandomNumber();
		var newNotification = {
			user: pollingData.users[userIndex],
			action: pollingData.actions[actionIndex],
			target: pollingData.actionTargets[actionTargetIndex],
			timestamp: new Date()
		}
		return newNotification;
	};

	//This function calls itslef after random interval
	var dummyPolling = function () {
		var randomInterval = 2 * Math.round(Math.random() * (3000 - 500)) + 1000;
		setTimeout(function () {
			$scope.$apply(function () {
				$scope.newNotifications.push(getNewNotification());
				$scope.awaitingNotifications++;
				localStorage.setItem('newNotifications', JSON.stringify($scope.newNotifications));
				localStorage.setItem('awaitingNotifications', JSON.stringify($scope.awaitingNotifications));
			});
			console.log("dummy poll called after " + randomInterval + "ms");
			dummyPolling();
		}, randomInterval);
	}

	window.onclick = function (event) {
		var clickedElement = angular.element(event.target);
		var clickedDdTrigger = clickedElement.closest('.dd-trigger').length;
		var clickedDdContainer = clickedElement.closest('.dropdown-menu').length;
		if (opendd != null && clickedDdTrigger == 0 && clickedDdContainer == 0) {
			hidedd(opendd);
		}
	}

	window.onbeforeunload = function (e) {
		if (opendd != null) {
			console.log('closingdd');
			hidedd(opendd);
		}
	};

	init();
})