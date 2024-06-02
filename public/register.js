document.addEventListener('DOMContentLoaded', function() {
    const registerForm = document.querySelector('.register-form');
    
    if (registerForm) {
        registerForm.addEventListener('submit', function(event) {
            event.preventDefault();

            const formData = new FormData(registerForm);

            const data = {
                firstName: formData.get('first_name'),
                lastName: formData.get('last_name'),
                gender: formData.get('gender'),
                phone: formData.get('phone'),
                email: formData.get('email'),
                rating: formData.get('rating'),
                username: formData.get('username'),
                password: formData.get('password')
            };

            fetch('/register', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Registration successful');
                } else {
                    alert('Registration failed: ' + data.message);
                }
            })
            .catch(error => {
                console.error('Error during registration:', error);
                alert('An error occurred during registration.');
            });
        });
    }
});
