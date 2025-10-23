//--------------------------------+
// Web Security Demo, Script File |
// Created 12/07/2025             |
// Author: R. Hind                |
//--------------------------------+

// User credentials (no roles needed - everyone gets same access)
const users = [
  { username: "alice", password: "Al1ceI5Secure!", displayName: "Alice" },
  { username: "bob", password: "bobpass123", displayName: "Bob" },
  { username: "charlie", password: "hst&87GfT5q9", displayName: "Charlie" }
];

// Simple login function - just validates and redirects
function login() {
  const uname = document.getElementById("username").value.trim();
  const pwd = document.getElementById("password").value.trim();
  const error = document.getElementById("loginError");

  // Find user with matching username and password
  const user = users.find(u => u.username === uname && u.password === pwd);
  
  if (!user) {
    error.textContent = "Invalid username or password.";
    return;
  }

  // Login successful - redirect to the revision page with policies
  window.location.href = "acceptableusepolicy.html";
}

// Allow Enter key to submit login
document.addEventListener('DOMContentLoaded', function() {
  const passwordInput = document.getElementById("password");
  if (passwordInput) {
    passwordInput.addEventListener("keypress", function(event) {
      if (event.key === "Enter") {
        login();
      }
    });
  }
  
  const usernameInput = document.getElementById("username");
  if (usernameInput) {
    usernameInput.addEventListener("keypress", function(event) {
      if (event.key === "Enter") {
        login();
      }
    });
  }
});
