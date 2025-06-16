document.addEventListener('DOMContentLoaded', function() {
  const bgImage = document.getElementById("bgImage"); 
  const thumbnails = document.querySelectorAll(".thumbnail");
  const clockDisplay = document.getElementById("clockDisplay");
  const startBtn = document.getElementById("startBtn");
  const stopBtn = document.getElementById("stopBtn");
  const resetBtn = document.getElementById("resetBtn");
  const customMinutes = document.getElementById("customMinutes");
  const sidebar = document.getElementById("sidebar");
  const openSidebar = document.getElementById("openSidebar");
  const closeSidebar = document.getElementById("closeSidebar");
  const continueBtn = document.getElementById("continueBtn");
  const pauseYoutubeBtn = document.getElementById("pauseYoutubeBtn");
  const newGoalInput = document.getElementById("newGoal");
  const addGoalBtn = document.getElementById("addGoalBtn");
  const goalsList = document.getElementById("goalsList");
  const youtubeUrlInput = document.getElementById("youtubeUrl");
  const playYoutubeBtn = document.getElementById("playYoutubeBtn");
  const stopYoutubeBtn = document.getElementById("stopYoutubeBtn");
  const youtubePlayerDiv = document.getElementById("youtubePlayer");
  const youtubeErrorDiv = document.getElementById('youtubeError');

  let player;
  let lastPlaybackPosition = 0;
  let currentVideoId = null;
  let isPlayerReady = false;
  let youtubeAPILoaded = false;
  let youtubeAPILoadAttempts = 0;
  const MAX_YOUTUBE_API_ATTEMPTS = 3;
  
  let goals = JSON.parse(localStorage.getItem('sessionGoals')) || [];
  let interval;
  let totalSeconds = 1500; 
  let isRunning = false;

  function init() {
    loadYouTubeAPI();
    renderGoals();
    updateTimerDisplay();
    setupEventListeners();
    setupThemeThumbnails();
    setupSidebar();
  }

  function loadYouTubeAPI() {
    if (typeof YT === 'undefined' || typeof YT.Player === 'undefined') {
      youtubeAPILoadAttempts++;
      
      if (youtubeAPILoadAttempts <= MAX_YOUTUBE_API_ATTEMPTS) {
        document.querySelector('.youtube-player').classList.add('loading');
        youtubeErrorDiv.style.display = 'none';
        
        const tag = document.createElement('script');
        tag.src = "https://www.youtube.com/iframe_api";
        const firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
        
        setTimeout(() => {
          if (typeof YT === 'undefined') {
            showYouTubeError("Failed to load YouTube API. Please refresh the page.");
          }
        }, 5000);
      } else {
        showYouTubeError("Failed to load YouTube API after multiple attempts. Please check your connection.");
      }
    } else {
      initializeYouTubePlayer();
    }
  }

  function showYouTubeError(message) {
    youtubeErrorDiv.textContent = message;
    youtubeErrorDiv.style.display = 'block';
    document.querySelector('.youtube-player').classList.remove('loading');
  }

  function onYouTubeIframeAPIReady() {
    youtubeAPILoaded = true;
    initializeYouTubePlayer();
  }

  function initializeYouTubePlayer() {
    try {
      player = new YT.Player('youtubePlayer', {
        height: '0',
        width: '0',
        playerVars: {
          'autoplay': 0,
          'controls': 0,
          'disablekb': 1,
          'enablejsapi': 1,
          'fs': 0,
          'modestbranding': 1,
          'origin': window.location.origin,
          'rel': 0,
          'iv_load_policy': 3
        },
        events: {
          'onReady': onPlayerReady,
          'onStateChange': onPlayerStateChange,
          'onError': onPlayerError
        }
      });
    } catch (error) {
      console.error("Player initialization failed:", error);
      showYouTubeError("Failed to initialize player. Try disabling ad-blockers.");
    }
  }

  function onPlayerReady() {
    isPlayerReady = true;
    playYoutubeBtn.disabled = false;
    pauseYoutubeBtn.disabled = false;
    stopYoutubeBtn.disabled = false;
    playYoutubeBtn.classList.remove('hidden');
    pauseYoutubeBtn.classList.add('hidden');
    stopYoutubeBtn.classList.add('hidden');
    continueYoutubeBtn.classList.add('hidden');
  }
  
  function onPlayerStateChange(event) {
    if (event.data === YT.PlayerState.PLAYING) {
      lastPlaybackPosition = player.getCurrentTime();
    }
  }
  
  function playYouTubeVideo() {
    if (!isPlayerReady) {
      alert("Player is not ready yet. Please wait.");
      return;
    }
  
    const url = youtubeUrlInput.value.trim();
    if (!url) {
      alert("Please enter a YouTube URL");
      return;
    }
  
    const videoId = extractVideoId(url);
    if (!videoId) {
      alert('Invalid YouTube URL');
      return;
    }
  
    try {
      playYoutubeBtn.classList.add('hidden');
      pauseYoutubeBtn.classList.remove('hidden');
      stopYoutubeBtn.classList.remove('hidden');
      continueYoutubeBtn.classList.add('hidden');
      
      if (videoId !== currentVideoId) {
        currentVideoId = videoId;
        player.loadVideoById(videoId);
      } else {
        player.playVideo();
      }
    } catch (error) {
      console.error("Error playing video:", error);
      alert("Error playing video");
    }
  }
  
  function pauseYouTubeVideo() {
    if (isPlayerReady) {
      player.pauseVideo();
      playYoutubeBtn.classList.add('hidden');
      pauseYoutubeBtn.classList.add('hidden');
      stopYoutubeBtn.classList.remove('hidden');
      continueYoutubeBtn.classList.remove('hidden');
    }
  }
  
  function stopYouTubeVideo() {
    if (isPlayerReady) {
      player.stopVideo();
      currentVideoId = null;
      playYoutubeBtn.classList.remove('hidden');
      pauseYoutubeBtn.classList.add('hidden');
      stopYoutubeBtn.classList.add('hidden');
      continueYoutubeBtn.classList.add('hidden');
    }
  }
  
  function continueYouTubeVideo() {
    if (isPlayerReady && currentVideoId) {
      player.playVideo();
      playYoutubeBtn.classList.add('hidden');
      pauseYoutubeBtn.classList.remove('hidden');
      stopYoutubeBtn.classList.remove('hidden');
      continueYoutubeBtn.classList.add('hidden');
    }
  }

  function extractVideoId(url) {
    const regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=)([^#&?]*).*/;
    const match = url.match(regExp);
    return (match && match[2].length === 11) ? match[2] : null;
  }

  function onPlayerError(event) {
    localStorage.removeItem('youtubePlayerState');
    
    let errorMessage = "YouTube player error: ";
    switch(event.data) {
      case 2:
        errorMessage += "Invalid video ID";
        break;
      case 5:
        errorMessage += "HTML5 player error";
        setTimeout(initializeYouTubePlayer, 2000);
        break;
      case 100:
        errorMessage += "Video not found";
        break;
      case 101:
      case 150:
        errorMessage += "Embedding not allowed";
        break;
      default:
        errorMessage += "Unknown error";
    }
    showYouTubeError(errorMessage);
  }

  function updateTimerDisplay() {
    const min = Math.floor(totalSeconds / 60);
    const sec = totalSeconds % 60;
    clockDisplay.textContent = `${String(min).padStart(2, '0')}:${String(sec).padStart(2, '0')}`;
  }

  function startTimer() {
    const minutes = Math.floor(totalSeconds / 60);

    if (minutes > 999) {
        alert("Demasiado tempo de estudo, diminuir por questões de saúde.");
        return;
    }

    if (interval) clearInterval(interval);
    isRunning = true;
    startBtn.classList.add('hidden');
    continueBtn.classList.add('hidden');
    stopBtn.classList.remove('hidden');
    customMinutes.disabled = true;
    document.querySelector('.timer-controls').classList.add('hide-input');
    
    interval = setInterval(() => {
        if (totalSeconds <= 0) {
            clearInterval(interval);
            isRunning = false;
            alert("Great job! Time's up.");
            resetTimerUI();
            return;
        }
        totalSeconds--;
        updateTimerDisplay();
    }, 1000);
  }
  
  function stopTimer() {
    clearInterval(interval);
    isRunning = false;
    stopBtn.classList.add('hidden');
    continueBtn.classList.remove('hidden');
    customMinutes.disabled = true;
    document.querySelector('.timer-controls').classList.add('hide-input');
  }

  function continueTimer() {
    startTimer();
  }

  function resetTimer() {
    if ((isRunning || (!isRunning && totalSeconds !== getInitialSeconds())) && 
        !confirm("O cronometro esta a contar, pretende continuar?")) {
        return;
    }
    stopTimer();
    totalSeconds = getInitialSeconds();
    updateTimerDisplay();
    resetTimerUI();
  }

  function resetTimerUI() {
    startBtn.classList.remove('hidden');
    continueBtn.classList.add('hidden');
    stopBtn.classList.add('hidden');
    customMinutes.disabled = false;
    document.querySelector('.timer-controls').classList.remove('hide-input');
    document.querySelector('.input-container').style.display = 'flex';
  }

  function getInitialSeconds() {
    return customMinutes.value ? parseInt(customMinutes.value) * 60 : 1500;
  }

  function renderGoals() {
    goalsList.innerHTML = '';
    goals.forEach((goal, index) => {
      const goalItem = document.createElement('div');
      goalItem.className = 'goal-item';
      
      const checkbox = document.createElement('input');
      checkbox.type = 'checkbox';
      checkbox.className = 'goal-checkbox';
      checkbox.checked = goal.completed;
      checkbox.addEventListener('change', () => toggleGoalComplete(index));
      
      const goalText = document.createElement('span');
      goalText.className = `goal-text ${goal.completed ? 'completed' : ''}`;
      goalText.textContent = goal.text;
      
      const deleteBtn = document.createElement('button');
      deleteBtn.className = 'delete-goal';
      deleteBtn.textContent = '✖';
      deleteBtn.addEventListener('click', () => deleteGoal(index));
      
      goalItem.appendChild(checkbox);
      goalItem.appendChild(goalText);
      goalItem.appendChild(deleteBtn);
      goalsList.appendChild(goalItem);
    });
  }

  function addGoal() {
    const text = newGoalInput.value.trim();
    if (text) {
      goals.push({ text, completed: false });
      newGoalInput.value = '';
      saveGoals();
      renderGoals();
    }
  }

  function toggleGoalComplete(index) {
    goals[index].completed = !goals[index].completed;
    saveGoals();
    renderGoals();
  }

  function deleteGoal(index) {
    goals.splice(index, 1);
    saveGoals();
    renderGoals();
  }

  function saveGoals() {
    localStorage.setItem('sessionGoals', JSON.stringify(goals));
  }

  function setupThemeThumbnails() {
    thumbnails.forEach(thumb => {
      thumb.addEventListener("click", () => {
        const selected = thumb.getAttribute("data-theme");
        bgImage.src = `etc/${selected}.gif`;
        
        thumbnails.forEach(t => t.classList.remove("active"));
        thumb.classList.add("active");
      });
    });
  }

  function setupSidebar() {
    openSidebar.addEventListener("click", () => {
      sidebar.classList.add("open");
      document.body.classList.add("sidebar-open");
      openSidebar.style.display = "none";
    });

    closeSidebar.addEventListener("click", () => {
      sidebar.classList.remove("open");
      document.body.classList.remove("sidebar-open");
      openSidebar.style.display = "block";
    });
  }

  function setupEventListeners() {
    startBtn.addEventListener("click", () => {
      const minutes = parseInt(customMinutes.value);
      if (!isNaN(minutes)) {
        totalSeconds = minutes * 60;
        updateTimerDisplay();
      }
      startTimer();
    });
    
    stopBtn.addEventListener("click", stopTimer);
    resetBtn.addEventListener("click", resetTimer);
    continueBtn.addEventListener("click", continueTimer);

    addGoalBtn.addEventListener('click', addGoal);
    newGoalInput.addEventListener('keypress', (e) => {
      if (e.key === 'Enter') addGoal();
    });

    playYoutubeBtn.addEventListener('click', playYouTubeVideo);
    pauseYoutubeBtn.addEventListener('click', pauseYouTubeVideo);
    stopYoutubeBtn.addEventListener('click', stopYouTubeVideo);
    continueYoutubeBtn.addEventListener('click', continueYouTubeVideo);

    window.addEventListener('beforeunload', function(e) {
      if (isRunning || (!isRunning && totalSeconds > 0 && totalSeconds !== getInitialSeconds())) {
          e.preventDefault();
          e.returnValue = 'O cronometro esta a contar, pretende continuar?';
          return e.returnValue;
      }
    });

    window.addEventListener('beforeunload', function() {
      localStorage.removeItem('youtubePlayerState');
      localStorage.removeItem('youtubeVideoId');
      localStorage.removeItem('youtubePlaybackPosition');
      
      sessionStorage.removeItem('youtubePlayerState');
    });
    
    window.addEventListener('load', function() {
      if (performance.navigation.type === 1) {
        localStorage.removeItem('youtubePlayerState');
        localStorage.removeItem('youtubeVideoId');
        localStorage.removeItem('youtubePlaybackPosition');
      }
    });
  }

  init();

  window.onYouTubeIframeAPIReady = onYouTubeIframeAPIReady;
});