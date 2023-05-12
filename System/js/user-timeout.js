var timeoutInMilliseconds = 300000; // 5 minutes
		var timeoutId;

		function startTimer() {
		timeoutId = setTimeout(logout, timeoutInMilliseconds);
		}

		function resetTimer() {
		clearTimeout(timeoutId);
		startTimer();
		}

		function logout() {
		window.location.href = "../logout.php";
		}

		document.addEventListener("mousemove", resetTimer);
		document.addEventListener("keypress", resetTimer);

		startTimer();