document.addEventListener('DOMContentLoaded', function() {
    const currentRoomId = Number(localStorage.getItem('currentRoom'));
    console.log('Loading room:', currentRoomId);
    
    const rooms = JSON.parse(localStorage.getItem('rooms')) || [];
    console.log('Available rooms:', rooms);
    
    const currentRoom = rooms.find(room => room.id === currentRoomId);
    console.log('Found room:', currentRoom);
    
    if (!currentRoom) {
        console.error('No room found with id:', currentRoomId);
        window.location.href = 'dashboard.html';
        return;
    }

    let participants = currentRoom.participants || [];
    console.log('Initial participants:', participants);

    if (participants.length > 0) {
        const participantsList = document.querySelector('.participants-list');
        participants.forEach(participant => {
            const participantElement = document.createElement('div');
            participantElement.className = 'participant-item';
            participantElement.innerHTML = `
                <div class="participant-circle" role="button" tabindex="0">
                    <img src="images/user.webp" alt="User avatar">
                </div>
                <span class="participant-name">${participant.name}</span>
                <div class="participant-profile-popup">
                    <button class="close-profile">✕</button>
                    <div class="participant-full-info">
                        <span class="participant-full-name">${participant.name}</span>
                        <span class="participant-email">${participant.email || 'No email available'}</span>
                        ${participant.hashtag ? `<span class="participant-hashtag">#${participant.hashtag}</span>` : ''}
                    </div>
                </div>
            `;

            const addButton = participantsList.querySelector('.add-participant');
            if (addButton) {
                participantsList.insertBefore(participantElement, addButton);
            } else {
                participantsList.appendChild(participantElement);
            }

            const avatar = participantElement.querySelector('.participant-circle');
            const popup = participantElement.querySelector('.participant-profile-popup');
            const closeBtn = participantElement.querySelector('.close-profile');
            
            if (avatar && popup && closeBtn) {
                avatar.addEventListener('click', (e) => {
                    document.querySelectorAll('.participant-profile-popup.active').forEach(p => {
                        if (p !== popup) p.classList.remove('active');
                    });
                    popup.classList.toggle('active');
                    e.stopPropagation();
                });
                
                closeBtn.addEventListener('click', (e) => {
                    popup.classList.remove('active');
                    e.stopPropagation();
                });
            }
        });
    }

    const sidebar = document.getElementById("sidebar");
    const openSidebar = document.getElementById("openSidebar");
    const closeSidebar = document.getElementById("closeSidebar");
    const chatInput = document.getElementById("chatInput");
    const sendMessage = document.getElementById("sendMessage");
    const chatMessages = document.getElementById("chatMessages");
    const fileInput = document.getElementById("fileInput");
    const sharedFilesList = document.getElementById("sharedFilesList");

    let sharedFiles = currentRoom.files || [];

    function updateRoom() {
        const rooms = JSON.parse(localStorage.getItem('rooms')) || [];
        const roomIndex = rooms.findIndex(r => r.id === currentRoom.id);
        if (roomIndex !== -1) {
            rooms[roomIndex] = {
                ...currentRoom,
                participants: participants,
                files: sharedFiles
            };
            localStorage.setItem('rooms', JSON.stringify(rooms));
            console.log('Updated room data:', rooms[roomIndex]);
        }
    }

    const currentUserEmail = localStorage.getItem('email');
    const registeredAccounts = JSON.parse(localStorage.getItem('registeredAccounts')) || [];
    const currentUser = registeredAccounts.find(acc => acc.email === currentUserEmail);

    if (participants.length === 0 && currentUser) {
        participants = [{
            name: currentUser.fullName,
            email: currentUser.email,
            hashtag: currentUser.hashtag
        }];
        currentRoom.participants = participants;
        updateRoom();
    }

    sharedFiles.forEach(file => {
        addFileToList(file.name, file.content);
    });

    if (openSidebar && sidebar && closeSidebar) {
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

    if (sendMessage && chatInput) {
        sendMessage.addEventListener("click", () => {
            const message = chatInput.value.trim();
            if (message) {
                addMessage("You", message);
                chatInput.value = "";
            }
        });

        chatInput.addEventListener("keypress", (e) => {
            if (e.key === "Enter" && chatInput.value.trim()) {
                addMessage("You", chatInput.value.trim());
                chatInput.value = "";
            }
        });
    }

    if (fileInput) {
        fileInput.addEventListener("change", (e) => {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(event) {
                    const fileContent = event.target.result;
                    const newFile = {
                        name: file.name,
                        content: fileContent,
                        type: file.type
                    };
                    sharedFiles.push(newFile);
                    currentRoom.files = sharedFiles;
                    updateRoom();
                    addFileToList(file.name, fileContent);
                };
                reader.readAsDataURL(file);
            }
        });
    }

    const addBtn = document.querySelector('.add-friend-btn');
    const popup = document.getElementById('addParticipantPopup');
    const participantInput = document.getElementById('newParticipantName');
    const confirmBtn = document.getElementById('confirmAddParticipant');
    const cancelBtn = document.getElementById('cancelAddParticipant');

    if (addBtn && popup && participantInput && confirmBtn && cancelBtn) {
        addBtn.addEventListener('click', () => {
            popup.classList.remove('hidden');
            participantInput.focus();
        });

        cancelBtn.addEventListener('click', () => {
            popup.classList.add('hidden');
            participantInput.value = '';
        });

        confirmBtn.addEventListener('click', () => {
            const inputValue = participantInput.value.trim();
            if (!inputValue) return;

            const registeredAccounts = JSON.parse(localStorage.getItem('registeredAccounts')) || [];
            const cleanInput = inputValue.replace(/^#/, '').toLowerCase();

            const memberAccount = registeredAccounts.find(acc =>
                acc.hashtag && acc.hashtag.replace(/^#/, '').toLowerCase() === cleanInput
            );

            if (memberAccount) {
                const memberName = memberAccount.shortName || memberAccount.fullName;
                const memberEmail = memberAccount.email;

                if (!participants.some(p => p.name === memberName)) {
                    participants.push({ name: memberName, email: memberEmail });
                    currentRoom.participants = participants;
                    updateRoom();
                    addParticipant(memberName, memberEmail);
                } else {
                    alert(`${memberName} is already in the room!`);
                }
            } else {
                alert('No user found with that hashtag.');
            }

            popup.classList.add('hidden');
            participantInput.value = '';
        });

        popup.addEventListener('click', (e) => {
            if (e.target === popup) {
                popup.classList.add('hidden');
                participantInput.value = '';
            }
        });

        participantInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') {
                confirmBtn.click();
            }
        });
    }

    function addMessage(sender, text) {
        const messageDiv = document.createElement('div');
        messageDiv.className = `message ${sender === 'You' ? 'outgoing' : 'incoming'}`;
        messageDiv.innerHTML = `
            <span class="sender">${sender}</span>
            <span class="text">${text}</span>
            <span class="time">${new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })}</span>
        `;
        chatMessages.appendChild(messageDiv);
        chatMessages.scrollTop = chatMessages.scrollHeight;
    }

    function addFileToList(fileName, fileContent) {
        const fileElement = document.createElement("div");
        fileElement.className = "file-item";
        fileElement.innerHTML = `
            <span>${fileName}</span>
            <button class="enter-btn" data-filename="${fileName}">Download</button>
        `;
        
        fileElement.querySelector('.enter-btn').addEventListener('click', () => {
            const file = sharedFiles.find(f => f.name === fileName);
            if (file) {
                const link = document.createElement('a');
                link.href = file.content;
                link.download = file.name;
                document.body.appendChild(link);
                link.click();
                document.body.removeChild(link);
            }
        });

        const addButton = document.querySelector('.add-file-button');
        if (addButton) {
            addButton.parentNode.insertBefore(fileElement, addButton);
        }
    }

    function addParticipant(name, email = '') {
        const participantElement = document.createElement('div');
        participantElement.className = 'participant-item';
        participantElement.innerHTML = `
            <div class="participant-circle" role="button" tabindex="0">
                <img src="images/user.webp" alt="User avatar">
            </div>
            <span class="participant-name">${name}</span>
            <div class="participant-profile-popup">
                <button class="close-profile">✕</button>
                <div class="participant-full-info">
                    <span class="participant-full-name">${name}</span>
                    <span class="participant-email">${email || 'No email available'}</span>
                </div>
            </div>
        `;

        const addButton = document.querySelector('.add-participant');
        participantsList.insertBefore(participantElement, addButton);

        const avatar = participantElement.querySelector('.participant-circle');
        const popup = participantElement.querySelector('.participant-profile-popup');
        const closeBtn = participantElement.querySelector('.close-profile');
        
        avatar.addEventListener('click', (e) => {
            document.querySelectorAll('.participant-profile-popup.active').forEach(p => {
                if (p !== popup) p.classList.remove('active');
            });
            popup.classList.toggle('active');
            const rect = avatar.getBoundingClientRect();
            popup.style.top = `${rect.top}px`;
            popup.style.left = `${rect.left}px`;
            e.stopPropagation();
        });
        
        closeBtn.addEventListener('click', (e) => {
            popup.classList.remove('active');
            e.stopPropagation();
        });
    }

    const addFileButton = document.querySelector('.add-file-button');
    if (addFileButton && fileInput) {
        addFileButton.addEventListener('click', () => {
            fileInput.click();
        });
    }
});