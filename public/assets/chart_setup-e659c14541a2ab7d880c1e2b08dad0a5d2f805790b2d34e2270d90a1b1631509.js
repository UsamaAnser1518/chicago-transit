// app/javascript/chart_setup.js
import Chart from "chart.js";

document.addEventListener('DOMContentLoaded', () => {
    const ctx = document.getElementById('routesChart').getContext('2d');
    const chart = new Chart(ctx, {
        type: 'bar', // or 'line', 'pie', etc.
        data: {
            labels: ['Stop with Most Routes'], // Add more labels for more stops if necessary
            datasets: [{
                label: 'Number of Routes',
                data: [], // This will be dynamically set in your ERB file
                backgroundColor: ['rgba(54, 162, 235, 0.2)'],
                borderColor: ['rgba(54, 162, 235, 1)'],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
});

export { chart };
