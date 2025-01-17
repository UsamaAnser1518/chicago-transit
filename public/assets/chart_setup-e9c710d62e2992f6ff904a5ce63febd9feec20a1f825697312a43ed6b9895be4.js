// app/javascript/chart_setup.js
import Chart from "chart.js";

function createChart(data) {
    const ctx = document.getElementById('routesChart').getContext('2d');
    return new Chart(ctx, {
        type: 'bar',
        data: data,
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
}

export { createChart };
