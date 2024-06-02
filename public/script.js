document.getElementById('fetchTopStudents').addEventListener('click', function() {
    const numberOfStudents = document.getElementById('numberOfStudents').value;
    fetch('/topstudents?numberOfStudents=' + numberOfStudents)
        .then(response => response.json())
        .then(data => {
            const tbody = document.querySelector('#studentsTable tbody');
            tbody.innerHTML = '';
            data.forEach(student => {
                const tr = document.createElement('tr');
                tr.innerHTML = `
                    <td>${student.id}</td>
                    <td>${student.first_name}</td>
                    <td>${student.last_name}</td>
                    <td>${student.gender}</td>
                    <td>${student.phone}</td>
                    <td>${student.email}</td>
                    <td>${student.rating}</td>
                `;
                tbody.appendChild(tr);
            });
        });
});
