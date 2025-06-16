document.addEventListener('DOMContentLoaded', function() {
    const sidebar = document.getElementById("sidebar");
    const openSidebar = document.getElementById("openSidebar");
    const closeSidebar = document.getElementById("closeSidebar");
    
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

    const predefinedAccounts = {
        'diogolinux@gmail.com': {
            fullName: 'Diogo Carvalho',
            shortName: 'Diogo C.',
            birthDate: '1990-05-15',
            phoneNumber: '912345678',
            email: 'diogolinux@gmail.com',
            hashtag: 'DC@90'
        },
        'susanadias@gmail.com': {
            fullName: 'Susana Dias',
            shortName: 'Susana D.',
            birthDate: '1992-08-22',
            phoneNumber: '923456789',
            email: 'susanadias@gmail.com',
            hashtag: 'SD@92'
        }
    };

    const currentUserEmail = localStorage.getItem('email');
    const isPredefinedAccount = predefinedAccounts.hasOwnProperty(currentUserEmail);
    const currentUser = isPredefinedAccount ? predefinedAccounts[currentUserEmail] : JSON.parse(localStorage.getItem('currentUser')) || {};

    document.getElementById('fullName').textContent = currentUser.fullName || 'N/A';
    document.getElementById('shortName').textContent = currentUser.shortName || 'N/A';
    document.getElementById('email').textContent = currentUser.email || 'N/A';
    document.getElementById('birthDate').textContent = currentUser.birthDate || 'N/A';
    document.getElementById('phoneNumber').textContent = currentUser.phoneNumber || 'N/A';
    document.getElementById('hashtag').textContent = currentUser.hashtag ? `#${currentUser.hashtag}` : 'N/A';

    const stats = {
        sessions: isPredefinedAccount ? 24 : 0,
        hours: isPredefinedAccount ? 48 : 0,
        groupSessions: isPredefinedAccount ? 12 : 0,
        goals: isPredefinedAccount ? 36 : 0
    };

    const statElements = document.querySelectorAll('.stat-item');
    if (statElements.length >= 4) {
        statElements[0].querySelector('.stat-value').textContent = stats.sessions;
        statElements[1].querySelector('.stat-value').textContent = stats.hours;
        statElements[2].querySelector('.stat-value').textContent = stats.groupSessions;
        statElements[3].querySelector('.stat-value').textContent = stats.goals;
    }

    const changeAvatarBtn = document.querySelector('.change-avatar-btn');
    if (changeAvatarBtn) {
        changeAvatarBtn.addEventListener('click', () => {
            const input = document.createElement('input');
            input.type = 'file';
            input.accept = 'image/*';
            
            input.onchange = (e) => {
                const file = e.target.files[0];
                if (file) {
                    const reader = new FileReader();
                    reader.onload = (event) => {
                        const avatarImage = document.querySelector('.avatar-image');
                        if (avatarImage) {
                            avatarImage.src = event.target.result;
                            localStorage.setItem('avatar', event.target.result);
                        }
                    };
                    reader.readAsDataURL(file);
                }
            };
            input.click();
        });
    }

    const savedAvatar = localStorage.getItem('avatar');
    if (savedAvatar) {
        const avatarImage = document.querySelector('.avatar-image');
        if (avatarImage) {
            avatarImage.src = savedAvatar;
        }
    }
});