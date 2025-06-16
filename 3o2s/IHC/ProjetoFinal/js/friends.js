document.addEventListener('DOMContentLoaded', () => {
    const sidebar = document.getElementById("sidebar");
    const openSidebar = document.getElementById("openSidebar");
    const closeSidebar = document.getElementById("closeSidebar");
    
    if (sidebar && openSidebar && closeSidebar) {
        openSidebar.addEventListener("click", (e) => {
            e.stopPropagation();
            sidebar.classList.add("open");
            document.body.classList.add("sidebar-open");
            openSidebar.style.display = "none";
            document.body.style.overflow = 'hidden';
        });
        
        closeSidebar.addEventListener("click", () => {
            sidebar.classList.remove("open");
            document.body.classList.remove("sidebar-open");
            openSidebar.style.display = "block";
            document.body.style.overflow = '';
        });  
    }

    const predefinedAccounts = {
        'diogolinux@gmail.com': ['Diogo Carvalho', 'Luis Sousa', 'Rui Rosmaninho', 'Simão Almeida'],
        'susanadias@gmail.com': []
    };

    const currentUserEmail = localStorage.getItem('email');
    const isPredefinedAccount = currentUserEmail in predefinedAccounts;
    
    let userFriends = JSON.parse(localStorage.getItem('userFriends')) || {};
    if (!userFriends[currentUserEmail]) {
        userFriends[currentUserEmail] = isPredefinedAccount ? predefinedAccounts[currentUserEmail] : [];
        localStorage.setItem('userFriends', JSON.stringify(userFriends));
    }

    let conversations = JSON.parse(localStorage.getItem('conversations')) || {};

    if (isPredefinedAccount && Object.keys(conversations).length === 0) {
        conversations = {
            'Diogo Carvalho': [
                { sender: 'Diogo Carvalho', text: 'Hey, how are you?', time: '08:45' },
                { sender: 'You', text: 'Doing great, Diogo!', time: '08:46' },
                { sender: 'Diogo Carvalho', text: 'Ready for the stand-up?', time: '08:47' }
            ],
            'Luis Sousa': [
                { sender: 'Luis Sousa', text: 'Can you review the PR?', time: '09:15' },
                { sender: 'You', text: 'On it now!', time: '09:16' }
            ],
            'Rui Rosmaninho': [
                { sender: 'Rui Rosmaninho', text: 'Lunch later?', time: '11:00' },
                { sender: 'You', text: 'Sure, see you at 12:30.', time: '11:02' }
            ],
            'Simão Almeida': [
                { sender: 'Simão Almeida', text: 'Do you have the design specs?', time: '14:20' },
                { sender: 'You', text: 'Sent them to your email.', time: '14:22' }
            ]
        };
        localStorage.setItem('conversations', JSON.stringify(conversations));
    }

    const friendList = document.querySelector('.friend-list');
    if (friendList) {
        friendList.innerHTML = '';
        userFriends[currentUserEmail].forEach(friendName => {
            const btn = createFriendButton(friendName);
            friendList.appendChild(btn);
        });
        const initialFriend = document.querySelector('.friend-item');
        if (initialFriend) initialFriend.click();
    }

    const searchInput = document.getElementById('friendSearch');
    if (searchInput) {
        searchInput.addEventListener('input', () => {
            const query = searchInput.value.trim().toLowerCase();
            document.querySelectorAll('.friend-item').forEach(btn => {
                const name = btn.querySelector('.friend-user').textContent.toLowerCase();
                const hashtag = btn.getAttribute('data-hashtag')?.toLowerCase() || '';
                btn.style.display = name.includes(query) || hashtag.includes(query) ? 'flex' : 'none';
            });
        });
    }

    const addBtn = document.querySelector('.add-friend-btn');
    const input_friend = document.getElementById('newFriendName');
    const confirm = document.getElementById('confirmAddFriend');
    const cancel = document.getElementById('cancelAddFriend');
    const popup = document.getElementById('addFriendPopup');
    
    if (addBtn && popup && input_friend && confirm && cancel) {
        addBtn.addEventListener('click', () => {
            popup.classList.remove('hidden');
            input_friend.focus();
        });

        cancel.addEventListener('click', () => {
            popup.classList.add('hidden');
            input_friend.value = '';
            document.getElementById('autocompleteList').innerHTML = '';
        });

        input_friend.addEventListener('input', () => {
            const list = document.getElementById('autocompleteList');
            list.innerHTML = '';
            const val = input_friend.value.trim();

            if (val.length === 0) return;

            const searchTerm = val.toLowerCase();
            const registeredAccounts = JSON.parse(localStorage.getItem('registeredAccounts')) || [];
            
            const matches = registeredAccounts.filter(acc => {
                const hashtag = acc.hashtag.toLowerCase();
                return hashtag.includes(searchTerm.replace('#', '')) || 
                    acc.fullName.toLowerCase().includes(searchTerm);
            });

            matches.forEach(acc => {
                const li = document.createElement('li');
                li.textContent = `${acc.fullName} (#${acc.hashtag})`;
                li.addEventListener('click', () => {
                    input_friend.value = acc.fullName;
                    input_friend.dataset.hashtag = acc.hashtag;
                    list.innerHTML = '';
                });
                list.appendChild(li);
            });
        });

        confirm.addEventListener('click', () => {
            const inputValue = input_friend.value.trim();
            if (!inputValue) return;

            let friendAccount;
            const registeredAccounts = JSON.parse(localStorage.getItem('registeredAccounts')) || [];
            const currentHashtag = input_friend.dataset.hashtag;
            
            if (currentHashtag) {
                friendAccount = registeredAccounts.find(acc =>
                    acc.hashtag.toLowerCase() === currentHashtag.toLowerCase()
                );
            }
            
            if (!friendAccount) {
                friendAccount = registeredAccounts.find(acc =>
                    acc.fullName.toLowerCase() === inputValue.toLowerCase()
                );
            }

            if (friendAccount) {
                const friendName = friendAccount.fullName;
                
                if (!userFriends[currentUserEmail].includes(friendName)) {
                    userFriends[currentUserEmail].push(friendName);
                    localStorage.setItem('userFriends', JSON.stringify(userFriends));
                    
                    if (!conversations[friendName]) {
                        conversations[friendName] = [];
                        localStorage.setItem('conversations', JSON.stringify(conversations));
                    }

                    const btn = createFriendButton(friendName);
                    document.querySelector('.friend-list').appendChild(btn);
                    btn.click();
                } else {
                    alert('This user is already in your friends list.');
                }
            } else {
                alert('No user found with that name or hashtag.');
            }

            popup.classList.add('hidden');
            input_friend.value = '';
            input_friend.dataset.hashtag = '';
            document.getElementById('autocompleteList').innerHTML = '';
        });
    }
    
    const sendBtn = document.querySelector('.chat-send-btn');
    const input = document.querySelector('.chat-input-field');
    
    if (sendBtn && input) {
        sendBtn.addEventListener('click', send_message);
        input.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') send_message();
        });
    }

    function createFriendButton(name) {
        const registeredAccounts = JSON.parse(localStorage.getItem('registeredAccounts')) || [];
        const friendAccount = registeredAccounts.find(acc => acc.fullName === name);
        
        const btn = document.createElement('button');
        btn.type = 'button';
        btn.className = 'friend-item';
        btn.setAttribute('data-hashtag', friendAccount?.hashtag || '');
        btn.innerHTML = `
            <img src="images/user.webp" alt="${name}" class="friend-avatar">
            <h1 class="friend-user">${name}</h1>
        `;
        btn.addEventListener('click', function() {
            document.querySelectorAll('.friend-item').forEach(item => item.classList.remove('active-friend'));
            this.classList.add('active-friend');
            load_messages(name);
        });
        return btn;
    }

    function load_messages(user) {
        const container = document.querySelector('.chat-messages');
        if (!container) return;
        container.innerHTML = '';
        const msgs = conversations[user] || [];
        
        msgs.forEach(msg => {
            const div = document.createElement('div');
            div.className = `message ${msg.sender === 'You' ? 'outgoing' : 'incoming'}`;
            div.innerHTML = `
                <span class="sender">${msg.sender}</span>
                <span class="text">${msg.text}</span>
                <span class="time">${msg.time}</span>
            `;
            container.appendChild(div);
        });
        container.scrollTop = container.scrollHeight;
    }

    function send_message() {
        const input = document.querySelector('.chat-input-field');
        const currentUser = document.querySelector('.friend-item.active-friend')?.querySelector('.friend-user')?.textContent;
        
        if (!input || !currentUser) {
            alert('Please select a friend to chat with');
            return;
        }
        
        const text = input.value.trim();
        if (!text) return;
        
        const msg = {
            sender: 'You',
            text,
            time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })
        };
        
        if (!conversations[currentUser]) conversations[currentUser] = [];
        conversations[currentUser].push(msg);
        localStorage.setItem('conversations', JSON.stringify(conversations));
        
        const div = document.createElement('div');
        div.className = 'message outgoing';
        div.innerHTML = `
            <span class="sender">You</span>
            <span class="text">${text}</span>
            <span class="time">${msg.time}</span>
        `;
        document.querySelector('.chat-messages').appendChild(div);
        input.value = '';
        document.querySelector('.chat-messages').scrollTop = document.querySelector('.chat-messages').scrollHeight;
    }
});