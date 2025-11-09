function loadTable() {
    const table = document.getElementById('tableSelect').value;
    fetch(`fetch_data.php?table=${table}`)
        .then(response => response.json())
        .then(data => {
            const container = document.getElementById('tableContainer');
            container.innerHTML = `<table><thead><tr>${data.columns.map(col => `<th>${col}</th>`).join('')}</tr></thead><tbody>${data.rows.map(row => `<tr>${row.map(cell => `<td>${cell}</td>`).join('')}</tr>`).join('')}</tbody></table>`;
        });

    // Dynamically generate add form fields based on table
    fetch(`get_columns.php?table=${table}`)
        .then(response => response.json())
        .then(columns => {
            const formFields = document.getElementById('formFields');
            formFields.innerHTML = columns.map(col => `
                <label>${col}: </label>
                <input type="text" name="${col}" required><br>
            `).join('');
            document.getElementById('selectedTable').value = table;
            document.getElementById('removeTable').value = table;
        });
}

function addEntry(event) {
    event.preventDefault();
    const form = document.getElementById('addForm');
    const formData = new FormData(form);
    fetch('add_remove.php', {
        method: 'POST',
        body: formData
    }).then(response => response.text())
      .then(result => alert(result))
      .then(() => loadTable());
}

function removeEntry(event) {
    event.preventDefault();
    const form = document.getElementById('removeForm');
    const formData = new FormData(form);
    fetch('add_remove.php', {
        method: 'POST',
        body: formData
    }).then(response => response.text())
      .then(result => alert(result))
      .then(() => loadTable());
}

// Load default table on page load
window.onload = () => loadTable();