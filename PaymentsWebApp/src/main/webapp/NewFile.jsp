<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* Reset default browser styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
}

header {
  background-color: #333;
  color: #fff;
  padding: 10px;
  text-align: center;
}

nav {
  background-color: #444;
  color: #fff;
  padding: 10px;
}

nav ul {
  list-style-type: none;
  display: flex;
  justify-content: right;
}

nav ul li {
  margin: 0 10px;
}

nav ul li a {
  color: #fff;
  text-decoration: none;
}

main {
  padding: 20px;
}

.cards {
  display: flex;
  justify-content: space-between;
}

.card {
  background-color: #f4f4f4;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  flex-basis: calc(50% - 20px);
}

footer {
  background-color: #333;
  color: #fff;
  padding: 10px;
  text-align: center;
}


</style>
<body>



   <header>
    <h1>Dashboard</h1>
  </header>
  <nav>
    <ul>
    <div>
        <label for="floatingInput">profile:</label>
     
      <li><a href="#">notification</a></li>
      <li><a href="#">Settings</a></li>
      <li><a href="#">Logout</a></li>
      </div>
    </ul>
  </nav>
  <main>
    <section class="cards">
      <div class="card">
        <h2>Card 1</h2>
        <p>Content for card 1 goes here.</p>
      </div>
      <div class="card">
        <h2>Card 2</h2>
        <p>Content for card 2 goes here.</p>
      </div>
    </section>
  </main>
  <footer>
    <p>Footer content here.</p>
  </footer>
</body>

</html>


