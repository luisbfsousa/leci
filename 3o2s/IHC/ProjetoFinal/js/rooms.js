class Room {
    constructor(id, name, participants = []) {
        console.log('Room constructor called with:', { id, name, participants });
        this.id = Number(id);
        this.name = name;
        this.participants = participants || [];
        this.files = [];
        this.messages = [];
        this.creator = localStorage.getItem('shortName') || localStorage.getItem('fullName');
        console.log('Room created:', this);
    }

    static fromObject(obj) {
        console.log('Creating Room from object:', obj);
        const room = new Room(obj.id, obj.name, obj.participants);
        room.files = obj.files || [];
        room.messages = obj.messages || [];
        room.creator = obj.creator;
        return room;
    }
}

class RoomManager {
    constructor() {
        console.log('Initializing RoomManager');
        this.rooms = [];
        this.loadRooms();
        this.initializeInvitations();
        this.setupEventListeners();
    }

    loadRooms() {
        const defaultRooms = [
            { 
                id: 1, 
                name: 'BD', 
                participants: [{
                    email: 'susanadias@gmail.com',
                    hashtag: 'SD@92',
                    name: 'Susana Dias'
                }],
                creator: 'Susana Dias',
                files: [],
                messages: []
            },
            { 
                id: 2, 
                name: 'IHC', 
                participants: [], 
                creator: '',
                files: [],
                messages: []
            },
            { 
                id: 3, 
                name: 'AS', 
                participants: [{
                    email: 'diogolinux@gmail.com',
                    hashtag: 'DC@90',
                    name: 'Diogo Carvalho'
                }],
                creator: 'Diogo Carvalho',
                files: [],
                messages: []
            },
            { 
                id: 4, 
                name: 'PSI', 
                participants: [{
                    email: 'susanadias@gmail.com',
                    hashtag: 'SD@92',
                    name: 'Susana Dias'
                }],
                creator: 'Susana Dias',
                files: [],
                messages: []
            },
            { 
                id: 5, 
                name: 'C', 
                participants: [{
                    email: 'diogolinux@gmail.com',
                    hashtag: 'DC@90',
                    name: 'Diogo Carvalho'
                }],
                creator: 'Diogo Carvalho',
                files: [],
                messages: []
            }
        ];

        const currentRooms = localStorage.getItem('rooms');
        console.log('Current rooms in localStorage:', currentRooms);

        if (!currentRooms || this.needsInitialization(JSON.parse(currentRooms))) {
            console.log('Initializing default rooms with participants:', defaultRooms);
            localStorage.setItem('rooms', JSON.stringify(defaultRooms));
        }

        this.rooms = JSON.parse(localStorage.getItem('rooms'));
        console.log('Loaded rooms:', this.rooms);

        const defaultInvitations = [
            { groupName: 'AS', invitedBy: 'Diogo Carvalho' },
            { groupName: 'PSI', invitedBy: 'Rui Rosmaninho' }
        ];

        const currentUserEmail = localStorage.getItem('email');
        if (currentUserEmail === 'diogolinux@gmail.com' && !localStorage.getItem('userInvitations')) {
            const diogoInvitations = [
                { groupName: 'AS', invitedBy: 'Diogo Carvalho' },
                { groupName: 'PSI', invitedBy: 'Rui Rosmaninho' }
            ];
            localStorage.setItem('userInvitations', JSON.stringify(diogoInvitations));
        }

        this.displayRooms();
    }

    needsInitialization(rooms) {
        const hasBasicStructure = rooms.some(room => 
            !room.participants || 
            !room.creator
        );
        
        const currentUserEmail = localStorage.getItem('email');
        if (currentUserEmail === 'diogolinux@gmail.com') {
            return hasBasicStructure || 
                (room.name === 'AS' && (!room.participants.length || room.participants[0].name !== 'Diogo Carvalho'));
        }
        
        return hasBasicStructure;
    }

    saveRooms() {
        console.log('Saving rooms:', this.rooms);
        localStorage.setItem('rooms', JSON.stringify(this.rooms));
        const savedData = localStorage.getItem('rooms');
        console.log('Verified saved data:', JSON.parse(savedData));
    }

    createRoom(name) {
        console.log('Creating new room with name:', name);
        console.log('Current rooms:', this.rooms);
        
        const newId = this.rooms.length > 0 
            ? Math.max(...this.rooms.map(r => Number(r.id))) + 1 
            : 1;
        
        console.log('Generated new room ID:', newId);
        
        const newRoom = new Room(newId, name);
        this.rooms.push(newRoom);
        
        console.log('Updated rooms array:', this.rooms);
        this.saveRooms();
        this.displayRooms();
        return newRoom;
    }

    enterRoom(roomId) {
        console.log('Attempting to enter room:', roomId);
        const room = this.rooms.find(r => r.id === Number(roomId));
        
        if (room) {
            console.log('Found room, storing current room ID:', room.id);
            localStorage.setItem('currentRoom', String(room.id));
            window.location.href = 'groups.html';
        } else {
            console.error('Room not found:', roomId);
        }
    }

    displayRooms() {
        const groupsGrid = document.querySelector('.groups-grid');
        const addButton = document.getElementById('openAddGroup');
        
        if (!groupsGrid || !addButton) return;

        const userGroups = JSON.parse(localStorage.getItem('userGroups')) || [];
        
        const existingCards = groupsGrid.querySelectorAll('.group-item:not(.add-group-button)');
        existingCards.forEach(card => card.remove());

        console
        this.rooms.forEach(room => {
            if (userGroups.includes(room.name)) {
                const div = document.createElement('div');
                div.className = 'group-item';
                div.innerHTML = `
                    <span class="group-title">${room.name}</span>
                    <button class="enter-btn" data-room-id="${room.id}">Enter</button>
                `;
                groupsGrid.insertBefore(div, addButton);
            }
        });
    }

    initializeInvitations() {
        const invitationsGrid = document.querySelector('.invitations-grid');
        const invitationsLabel = document.querySelector('h3.title-text:nth-of-type(2)');
        
        if (!invitationsGrid || !invitationsLabel) return;

        const currentUserEmail = localStorage.getItem('email');
        const allInvitations = JSON.parse(localStorage.getItem('userInvitations')) || {};
        const userInvitations = allInvitations[currentUserEmail] || [];
        
        invitationsGrid.innerHTML = '';

        if (userInvitations.length === 0) {
            invitationsLabel.style.display = 'none';
            return;
        }
        
        invitationsLabel.style.display = 'block';

        userInvitations.forEach(invitation => {
            const invitationItem = document.createElement('div');
            invitationItem.className = 'invitation-item';
            invitationItem.innerHTML = `
                <span class="invitation-title">${invitation.groupName}</span>
                <span class="invited-by">Invited by: ${invitation.invitedBy}</span>
                <div class="invitation-buttons">
                    <button class="accept-btn">Accept</button>
                    <button class="reject-btn">Reject</button>
                </div>
            `;

            invitationItem.querySelector('.accept-btn').addEventListener('click', () => {
                const userGroups = JSON.parse(localStorage.getItem('userGroups')) || [];
                userGroups.push(invitation.groupName);
                localStorage.setItem('userGroups', JSON.stringify(userGroups));

                allInvitations[currentUserEmail] = allInvitations[currentUserEmail].filter(
                    i => i.groupName !== invitation.groupName
                );
                localStorage.setItem('userInvitations', JSON.stringify(allInvitations));

                this.displayRooms();
                this.initializeInvitations();
            });

            invitationItem.querySelector('.reject-btn').addEventListener('click', () => {
                allInvitations[currentUserEmail] = allInvitations[currentUserEmail].filter(
                    i => i.groupName !== invitation.groupName
                );
                localStorage.setItem('userInvitations', JSON.stringify(allInvitations));
                this.initializeInvitations();
            });

            invitationsGrid.appendChild(invitationItem);
        });
    }

    setupEventListeners() {
        document.addEventListener('click', e => {
            if (e.target.classList.contains('enter-btn')) {
                const roomId = e.target.dataset.roomId;
                if (roomId) this.enterRoom(roomId);
            }
        });

        const addBtn = document.getElementById('openAddGroup');
        const popup = document.getElementById('addGroupPopup');
        const confirmBtn = document.getElementById('confirmAddGroup');
        const cancelBtn = document.getElementById('cancelAddGroup');
        const nameInput = document.getElementById('newGroupName');

        if (addBtn && popup && confirmBtn && cancelBtn && nameInput) {
            addBtn.addEventListener('click', () => {
                console.log('Add button clicked');
                popup.classList.remove('hidden');
                nameInput.focus();
            });

            confirmBtn.addEventListener('click', () => {
                console.log('Confirm button clicked');
                const name = nameInput.value.trim();
                console.log('Room name:', name);
                
                if (name) {
                    this.createRoom(name);
                    popup.classList.add('hidden');
                    nameInput.value = '';
                }
            });

            cancelBtn.addEventListener('click', () => {
                popup.classList.add('hidden');
                nameInput.value = '';
            });

            nameInput.addEventListener('keydown', (e) => {
                if (e.key === 'Enter') {
                    confirmBtn.click();
                }
            });
        }
    }
}

document.addEventListener('DOMContentLoaded', () => {
    console.log('DOM loaded, creating RoomManager');
    new RoomManager();
});