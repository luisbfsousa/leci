function showPaymentMethods() {
    var modal = document.getElementById("payment-modal");
    modal.style.display = "block";
}

function closePaymentModal() {
    var modal = document.getElementById("payment-modal");
    modal.style.display = "none";
}

function showInput(method) {
    closePaymentModal();

    var inputModal = document.getElementById("input-modal");
    inputModal.style.display = "block";

    var inputs = document.querySelectorAll('.payment-input');
    inputs.forEach(function(input) {
        input.style.display = 'none';
    });

    var input = document.getElementById(method + '-input');
    if (input) {
        input.style.display = 'block';
    }
}

function closeInputModal() {
    var inputModal = document.getElementById("input-modal");
    inputModal.style.display = "none";
}

function submitPayment() {
    var inputs = document.querySelectorAll('.payment-input');
    inputs.forEach(function(input) {
        input.style.display = 'none';
    });

    var processingMessage = document.getElementById('processing-message');
    processingMessage.style.display = 'block';

    var dots = '';
    var intervalId = setInterval(function() {
        dots += '.';
        if (dots.length > 3) {
            dots = '';
        }
        document.getElementById('loading-dots').textContent = dots;
    }, 400);

    setTimeout(function() {
        clearInterval(intervalId);
        processingMessage.style.display = 'none';
        var successMessage = document.getElementById('success-message');
        successMessage.style.display = 'block';
        setTimeout(function() {
            window.location.href = 'index.html';
        }, 4000);
    }, 4000);
}

window.onclick = function(event) {
    var paymentModal = document.getElementById("payment-modal");
    var inputModal = document.getElementById("input-modal");
    if (event.target == paymentModal) {
        paymentModal.style.display = "none";
    } else if (event.target == inputModal) {
        inputModal.style.display = "none";
    }
};

document.addEventListener('keydown', function(event) {
    if (event.key === "Escape") {
        closePaymentModal();
        closeInputModal();
    }
});

document.addEventListener("DOMContentLoaded", function() {
    var scrollButton = document.getElementById('scroll-to-bottom');
    var isAtBottom = false;

    scrollButton.addEventListener('click', function(event) {
        event.preventDefault();

        if (isAtBottom) {
            window.scrollTo({ top: 0, behavior: 'smooth' });
            isAtBottom = false;
            scrollButton.innerHTML = '<img src="assets/images/down.png" alt="Scroll down">';
        } else {
            var currentScrollPos = window.innerHeight + window.scrollY;
            var isNearBottom = currentScrollPos >= document.body.offsetHeight - 100;

            if (isNearBottom) {
                isAtBottom = true;
                scrollButton.innerHTML = '<img src="assets/images/up.png" alt="Scroll up">';
                window.scrollTo({ top: document.body.scrollHeight, behavior: 'smooth' });
            } else {
                var targetElement = document.getElementById('bottom');
                targetElement.scrollIntoView({ behavior: 'smooth', block: 'end' });
            }
        }
    });

    window.addEventListener('scroll', function() {
        var currentScrollPos = window.innerHeight + window.scrollY;
        var isNearBottom = currentScrollPos >= document.body.offsetHeight - 100;

        if (isNearBottom) {
            isAtBottom = true;
            scrollButton.innerHTML = '<img src="assets/images/up.png" alt="Scroll up">';
        } else {
            isAtBottom = false;
            scrollButton.innerHTML = '<img src="assets/images/down.png" alt="Scroll down">'; 
        }
    });
});
