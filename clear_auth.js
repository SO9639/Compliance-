// Clear authentication and show login modal
// Run this in your browser console

// Clear localStorage
localStorage.clear();

// Hide main content
document.querySelector('.container').style.display = 'none';

// Show login modal
const modal = new bootstrap.Modal(document.getElementById('loginModal'));
modal.show();

// Hide user dropdown
document.getElementById('userDropdown').classList.add('hidden');

console.log('Authentication cleared. Login modal should now be visible.');