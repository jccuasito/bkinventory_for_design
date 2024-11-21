document.addEventListener('DOMContentLoaded', function() {
    fetch('fetch_sales_data.php')
        .then(response => response.json())
        .then(data => {
            const salesData = data.map(item => item.sales_quantity_sold);
            const months = data.map(item => item.month);
            const year = new Date().getFullYear(); // Get the current year

            const chart = document.querySelector('.chart');
            const yAxis = document.querySelector('.y-axis');
            const labelsContainer = document.querySelector('.labels');

            const maxSales = 200; // Fixed maxSales to ensure consistent Y-axis

            // Clear previous content
            yAxis.innerHTML = '';
            chart.innerHTML = '';
            labelsContainer.innerHTML = '';

            // Create bars and labels dynamically based on salesData
            salesData.forEach((sales, index) => {
                const bar = document.createElement('div');
                bar.classList.add('bar');
                bar.style.height = `${(sales / maxSales) * 100}%`;

                // Add a label to show the exact sales value
                const barLabel = document.createElement('div');
                barLabel.classList.add('bar-label');
                barLabel.textContent = sales;
                bar.appendChild(barLabel);

                chart.appendChild(bar);

                const label = document.createElement('div');
                label.classList.add('label');
                label.textContent = months[index];
                labelsContainer.appendChild(label);
            });

            // Add the year label below the months
            const yearLabel = document.createElement('div');
            yearLabel.classList.add('year-label');
            yearLabel.textContent = year;
            labelsContainer.appendChild(yearLabel);
        })
        .catch(error => console.error('Error fetching data:', error));
});
