document.addEventListener('DOMContentLoaded', () => {
  const thumbnails = document.querySelectorAll('.thumbnail');
  const modal = document.getElementById('imageModal');
  const modalImage = document.getElementById('modalImage');
  const closeBtn = document.querySelector('.close');
  const arrowLeft = document.querySelector('.arrow-left');
  const arrowRight = document.querySelector('.arrow-right');
  let currentIndex = 0;

  // Abrir el modal y mostrar la imagen
  function openModal(index) {
    const largeImageSrc = thumbnails[index].getAttribute('data-large');
    modalImage.src = largeImageSrc;
    modal.classList.add('show');
    currentIndex = index;
  }

  // Cerrar el modal
  function closeModal() {
    modal.classList.remove('show');
    setTimeout(() => {
      modalImage.src = ''; // Limpiar la imagen
    }, 300);
  }

  // Navegar a la siguiente imagen
  function nextImage() {
    currentIndex = (currentIndex + 1) % thumbnails.length;
    openModal(currentIndex);
  }

  // Navegar a la imagen anterior
  function prevImage() {
    currentIndex = (currentIndex - 1 + thumbnails.length) % thumbnails.length;
    openModal(currentIndex);
  }

  // Eventos para cada miniatura
  thumbnails.forEach((thumbnail, index) => {
    thumbnail.addEventListener('click', () => {
      openModal(index);
    });
  });

  // Evento para el botón de cierre
  closeBtn.addEventListener('click', closeModal);

  // Eventos para las flechas de navegación
  arrowRight.addEventListener('click', nextImage);
  arrowLeft.addEventListener('click', prevImage);

  // Cerrar el modal al hacer clic fuera de la imagen
  modal.addEventListener('click', (event) => {
    if (event.target === modal) {
      closeModal();
    }
  });
});
