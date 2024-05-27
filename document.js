document.addEventListener('DOMContentLoaded', function () {
    const tipoSelect = document.getElementById('tipo');
    const portatilFields = document.getElementById('portatil_fields');
    const equiposMesaFields = document.getElementById('equipos_mesa_fields');
    const impresorasFields = document.getElementById('impresoras_fields');

    function toggleFields() {
        portatilFields.style.display = 'none';
        equiposMesaFields.style.display = 'none';
        impresorasFields.style.display = 'none';

        if (tipoSelect.value === 'Portátil') {
            portatilFields.style.display = 'block';
        } else if (tipoSelect.value === 'Equipo de Mesa') {
            equiposMesaFields.style.display = 'block';
        } else if (tipoSelect.value === 'Impresora') {
            impresorasFields.style.display = 'block';
        }
    }

    tipoSelect.addEventListener('change', toggleFields);
    toggleFields(); // Inicialmente para ocultar/mostrar según el valor seleccionado
});
