document.addEventListener('DOMContentLoaded', function() {
    const registerBtn = document.getElementById('registerBtn');
    const passwordInput = document.getElementById('password');
    const confirmPasswordInput = document.getElementById('confirmPassword');
    const phoneNumberInput = document.getElementById('phoneNumber');
    
    const warningIcon = document.querySelector('.warning-icon');
    const passwordWrapper = document.querySelector('.password-input-wrapper');
    const passwordTooltip = document.querySelector('.password-hint-tooltip');
    const confirmWarningIcon = document.querySelector('.confirm-warning-icon');
    const confirmPasswordWrapper = document.querySelector('.confirm-password-wrapper');
    const confirmPasswordTooltip = document.querySelector('.confirm-password-tooltip');
    const criteriaElements = {
        length: document.getElementById('length-criteria'),
        uppercase: document.getElementById('uppercase-criteria'),
        number: document.getElementById('number-criteria')
    };

    function showErrorPopup(message) {
        const existingPopup = document.querySelector('.error-popup');
        if (existingPopup) existingPopup.remove();
        
        let popupContainer = document.querySelector('.popup-container');
        if (!popupContainer) {
            popupContainer = document.createElement('div');
            popupContainer.className = 'popup-container';
            document.body.appendChild(popupContainer);
        }
        
        const popup = document.createElement('div');
        popup.className = 'error-popup';
        popup.textContent = message;
        popupContainer.appendChild(popup);
        
        setTimeout(() => popup.classList.add('show'), 10);
        setTimeout(() => {
            popup.classList.remove('show');
            setTimeout(() => {
                popup.remove();
                if (popupContainer.children.length === 0) popupContainer.remove();
            }, 300);
        }, 3000);
    }
    
    function updateCriteria(isMet, element) {
        if (isMet) element.classList.add('valid');
        else element.classList.remove('valid');
    }
    
    function validatePassword(password) {
        return {
            hasLength: password.length >= 6 && password.length <= 16,
            hasUppercase: /[A-Z]/.test(password),
            hasNumber: /\d/.test(password),
            isValid: password.length >= 6 && password.length <= 16 && /[A-Z]/.test(password) && /\d/.test(password)
        };
    }
    
    function generateHashtag(fullName, birthDate) {
        const nameParts = fullName.trim().split(' ');
        const firstName = nameParts[0];
        const lastName = nameParts.length > 1 ? nameParts[nameParts.length - 1] : '';
        const initials = (firstName.charAt(0) + (lastName ? lastName.charAt(0) : '')).toUpperCase();
        const yearDigits = birthDate.slice(2,4);
        return `${initials}@${yearDigits}`;
    }
    
    passwordInput.addEventListener('input', function() {
        const password = this.value;
        const validation = validatePassword(password);
        
        updateCriteria(validation.hasLength, criteriaElements.length);
        updateCriteria(validation.hasUppercase, criteriaElements.uppercase);
        updateCriteria(validation.hasNumber, criteriaElements.number);
        
        if (password.length > 0 && !validation.isValid) {
            warningIcon.style.display = 'block';
            passwordWrapper.classList.add('invalid');
        } else {
            warningIcon.style.display = 'none';
            passwordWrapper.classList.remove('invalid');
        }
        
        if (confirmPasswordInput.value.length > 0) {
            if (password !== confirmPasswordInput.value) {
                confirmPasswordInput.setCustomValidity('Passwords do not match');
                confirmWarningIcon.style.display = 'block';
                confirmPasswordWrapper.classList.add('invalid');
            } else {
                confirmPasswordInput.setCustomValidity('');
                confirmWarningIcon.style.display = 'none';
                confirmPasswordWrapper.classList.remove('invalid');
            }
        }
    });
    
    passwordWrapper.addEventListener('mouseenter', function() {
        if (warningIcon.style.display === 'block') {
            passwordTooltip.style.display = 'block';
        }
    });
    
    passwordWrapper.addEventListener('mouseleave', function() {
        passwordTooltip.style.display = 'none';
    });
    
    passwordInput.addEventListener('focus', function() {
        if (warningIcon.style.display === 'block') {
            passwordTooltip.style.display = 'block';
        }
    });
    
    passwordInput.addEventListener('blur', function() {
        passwordTooltip.style.display = 'none';
    });
    
    confirmPasswordInput.addEventListener('input', function() {
        if (passwordInput.value !== this.value && this.value.length > 0) {
            this.setCustomValidity('Passwords do not match');
            confirmWarningIcon.style.display = 'block';
            confirmPasswordWrapper.classList.add('invalid');
        } else {
            this.setCustomValidity('');
            confirmWarningIcon.style.display = 'none';
            confirmPasswordWrapper.classList.remove('invalid');
        }
    });
    
    confirmPasswordWrapper.addEventListener('mouseenter', function() {
        if (confirmWarningIcon.style.display === 'block') {
            confirmPasswordTooltip.style.display = 'block';
        }
    });
    
    confirmPasswordWrapper.addEventListener('mouseleave', function() {
        confirmPasswordTooltip.style.display = 'none';
    });
    
    confirmPasswordInput.addEventListener('focus', function() {
        if (confirmWarningIcon.style.display === 'block') {
            confirmPasswordTooltip.style.display = 'block';
        }
    });
    
    confirmPasswordInput.addEventListener('blur', function() {
        confirmPasswordTooltip.style.display = 'none';
    });
    
    phoneNumberInput.addEventListener('input', function(e) {
        this.value = this.value.replace(/\D/g, '');
        if (this.value.length > 9) this.value = this.value.slice(0, 9);
    });
    
    registerBtn.addEventListener('click', function(event) {
        event.preventDefault();
        const fullName = document.getElementById('fullName').value;
        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const birthDate = document.getElementById('birthDate').value;
        const phoneNumber = document.getElementById('phoneNumber').value;
        
        if (!fullName || !email || !password || !confirmPassword || !birthDate || !phoneNumber) {
            showErrorPopup('Por favor, preencha todos os campos');
            return;
        }
        
        if (!/^\d{9}$/.test(phoneNumber)) {
            showErrorPopup('O número de telefone deve conter exatamente 9 dígitos');
            return;
        }
        
        if (!validatePassword(password).isValid) {
            showErrorPopup('A password não cumpre os requisitos');
            return;
        }
        
        if (password !== confirmPassword) {
            showErrorPopup('As passwords não coincidem!');
            return;
        }
        
        if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
            showErrorPopup('Por favor, insira um email válido.');
            return;
        }
        
        const registeredAccounts = JSON.parse(localStorage.getItem('registeredAccounts')) || [];
        const predefinedAccounts = [
            { email: 'diogolinux@gmail.com', password: 'birdlover' },
            { email: 'susanadias@gmail.com', password: 'susanadias' }
        ];
        
        if ([...predefinedAccounts, ...registeredAccounts].some(account => account.email === email)) {
            showErrorPopup('Este email já está registado. Por favor, utilize outro email.');
            return;
        }
        
        const hashtag = generateHashtag(fullName, birthDate);
        const nameParts = fullName.split(' ');
        let shortName = nameParts[0];
        if (nameParts.length > 1) shortName += ' ' + nameParts[1].charAt(0) + '.';
        
        const userData = {
            fullName: fullName,
            shortName: shortName,
            email: email,
            password: password,
            birthDate: birthDate,
            phoneNumber: phoneNumber,
            hashtag: hashtag,
            hasAccount: 'true'
        };
        
        registeredAccounts.push(userData);
        localStorage.setItem('registeredAccounts', JSON.stringify(registeredAccounts));
        localStorage.setItem('currentUser', JSON.stringify(userData));
        
        window.location.href = 'login.html';
    });
});