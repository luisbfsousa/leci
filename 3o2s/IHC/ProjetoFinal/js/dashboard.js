document.addEventListener('DOMContentLoaded', function() {
  const sidebar = document.getElementById("sidebar");
  const openSidebar = document.getElementById("openSidebar");
  const closeSidebar = document.getElementById("closeSidebar");
  const openBtn = document.getElementById('openAddGroup');
  const popup = document.getElementById('addGroupPopup');
  const input = document.getElementById('newGroupName');
  const confirm = document.getElementById('confirmAddGroup');
  const cancel = document.getElementById('cancelAddGroup');
  const grid = document.querySelector('.groups-grid');
  const invitationsGrid = document.querySelector('.invitations-grid');
  const invitationsLabel = document.querySelector('h3.title-text:nth-of-type(2)');

  const predefinedAccounts = {
    'diogolinux@gmail.com': {
        groups: ['BD'],
        invitations: [
            { groupName: 'AS', invitedBy: 'Diogo Carvalho' },
            { groupName: 'C', invitedBy: 'Diogo Carvalho' }
        ]
    },
    'susanadias@gmail.com': {
        groups: ['BD'],
        invitations: [
            { groupName: 'PSI', invitedBy: 'Susana Dias' }
        ]
    }
  };

  const currentUserEmail = localStorage.getItem('email');
  const isPredefinedAccount = predefinedAccounts.hasOwnProperty(currentUserEmail);

  const defaultRooms = [
      { id: 1, name: 'BD', participants: [] },
      { id: 2, name: 'IHC', participants: [] },
      { id: 3, name: 'AS', participants: [] },
      { id: 4, name: 'PSI', participants: [] },
      { id: 5, name: 'C', participants: [] }
  ];

  if (!localStorage.getItem('rooms')) {
      localStorage.setItem('rooms', JSON.stringify(defaultRooms));
  }

  if (!localStorage.getItem('userInvitations')) {
      localStorage.setItem('userInvitations', JSON.stringify({}));
  }

  if (
        sidebar && openSidebar &&
        localStorage.getItem('openSidebarOnDashboard') === 'true'
    ) {
        sidebar.classList.add("open");
        document.body.classList.add("sidebar-open");
        openSidebar.style.display = "none";
        localStorage.removeItem('openSidebarOnDashboard');
    }

 if (sidebar && openSidebar && closeSidebar) {
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
  const allUserInvitations = JSON.parse(localStorage.getItem('userInvitations'));
  
  let userInvitations = [];
  if (isPredefinedAccount) {
      userInvitations = [...predefinedAccounts[currentUserEmail].invitations];
      if (!allUserInvitations[currentUserEmail]) {
          allUserInvitations[currentUserEmail] = userInvitations;
          localStorage.setItem('userInvitations', JSON.stringify(allUserInvitations));
      }
  } else {
      userInvitations = allUserInvitations[currentUserEmail] || [];
  }

  let userGroups = isPredefinedAccount ? 
      [...predefinedAccounts[currentUserEmail].groups] : 
      JSON.parse(localStorage.getItem('userGroups')) || [];


  function initializeInvitations() {
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
              userGroups.push(invitation.groupName);
              localStorage.setItem('userGroups', JSON.stringify(userGroups));
              
              const allInvitations = JSON.parse(localStorage.getItem('userInvitations'));
              allInvitations[currentUserEmail] = allInvitations[currentUserEmail].filter(
                  i => i.groupName !== invitation.groupName
              );
              localStorage.setItem('userInvitations', JSON.stringify(allInvitations));
              
              userInvitations = allInvitations[currentUserEmail];
              
              initializeGroups();
              initializeInvitations();
          });

          invitationItem.querySelector('.reject-btn').addEventListener('click', () => {
              const allInvitations = JSON.parse(localStorage.getItem('userInvitations'));
              allInvitations[currentUserEmail] = allInvitations[currentUserEmail].filter(
                  i => i.groupName !== invitation.groupName
              );
              localStorage.setItem('userInvitations', JSON.stringify(allInvitations));
              
              userInvitations = allInvitations[currentUserEmail];
              
              initializeInvitations();
          });

          invitationsGrid.appendChild(invitationItem);
      });
  }

  if (openBtn && popup && input && confirm && cancel) {
      openBtn.addEventListener('click', () => {
          popup.classList.remove('hidden');
          input.focus();
      });

      cancel.addEventListener('click', () => {
          popup.classList.add('hidden');
      });

      confirm.addEventListener('click', () => {
          const name = input.value.trim();
          if (!name) return;
          
          userGroups.push(name);
          localStorage.setItem('userGroups', JSON.stringify(userGroups));
          
          initializeGroups();
          popup.classList.add('hidden');
          input.value = '';
      });
  }

  initializeGroups();
  initializeInvitations();
});



//esta