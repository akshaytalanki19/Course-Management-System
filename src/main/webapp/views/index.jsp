<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>SDP-JFSD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  </head>
  <body>
    <nav>
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <label class="logo">SDP</label>
      <ul>
        <li><a class="/" href="#">HOME</a></li>
        <li><a href="adminlogin">ADMIN</a></li>
        <li><a href="login">USER</a></li>
        <li><a href="#">STAFF</a></li>
        <li><a href="#">ABOUT US</a></li>
        <li><a href="contact">CONTACT US</a></li>
        
      </ul>
    </nav>
    <img src="https://www.eleapsoftware.com/wp-content/uploads/2020/02/17-Course-Management-System--scaled.jpg" width="1500" height="1000">
    <section></section>
    <footer>
        <div class="foot-panel1">
            Back to Top
        </div>

        <div class="foot-panel2">
                <ul>
                <p>Materials</p>
                <h1>About Us</h1>
                <h1>Careers</h1>
                <h1>Guided materials</h1>
                <h1>Contact</h1>

            </ul>
            <ul>
                <p>Event materials</p>
                <h1>Paid courses</h1>
                <h1>Guest courses</h1>
                <h1>Limited edition</h1>
                <h1>Chat with us</h1>

            </ul>
             <ul>
                <p>Materials</p>
                <h1>About Us</h1>
                <h1>Careers</h1>
                <h1>Guided materials</h1>
                <h1>Contact</h1>

            </ul>
            <ul>
                <p>Event materials</p>
                <h1>Paid courses</h1>
                <h1>Guest courses</h1>
                <h1>Limited edition</h1>
                <h1>Chat with us</h1>

            </ul>
        </div>

        <div class="foot-panel3">
            <div class="logo"></div>
        </div>

        <div class="foot-panel4">
            <div class="pages">
                <a>Conditions of Use</a>
                <a>Privacy Notice</a>
                <a>Your Ads Privacy Choices</a>
            </div>
            <div class="copyright">
                � 1996-2023, Amazon.com, Inc. or its affiliates
            </div>
        </div>

    </footer>
  </body>
</html>
    </body>
    </html>
    <style>
    *{
  padding: 0;
  margin: 0;
  text-decoration: none;
  list-style: none;
  box-sizing: border-box;
}
body{
  font-family: montserrat;
}
nav{
  background: #0082e6;
  height: 80px;
  width: 100%;
}
label.logo{
  color: white;
  font-size: 35px;
  line-height: 80px;
  padding: 0 100px;
  font-weight: bold;
}
nav ul{
  float: right;
  margin-right: 20px;
}
nav ul li{
  display: inline-block;
  line-height: 80px;
  margin: 0 5px;
}
nav ul li a{
  color: white;
  font-size: 17px;
  padding: 7px 13px;
  border-radius: 3px;
  text-transform: uppercase;
}
a.active,a:hover{
  background: #1b9bff;
  transition: .5s;
}
.checkbtn{
  font-size: 30px;
  color: white;
  float: right;
  line-height: 80px;
  margin-right: 40px;
  cursor: pointer;
  display: none;
}
#check{
  display: none;
}
@media (max-width: 952px){
  label.logo{
    font-size: 30px;
    padding-left: 50px;
  }
  nav ul li a{
    font-size: 16px;
  }
}
@media (max-width: 858px){
  .checkbtn{
    display: block;
  }
  ul{
    position: fixed;
    width: 100%;
    height: 100vh;
    background: #2c3e50;
    top: 80px;
    left: -100%;
    text-align: center;
    transition: all .5s;
  }
  nav ul li{
    display: block;
    margin: 50px 0;
    line-height: 30px;
  }
  nav ul li a{
    font-size: 20px;
  }
  a:hover,a.active{
    background: none;
    color: #0082e6;
  }
  #check:checked ~ ul{
    left: 0;
  }
}
/ footer /
footer {
    margin-top: 15px;
}
.foot-panel1 {
    background-color: #37475a;
    color: white;
    height: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 0.85rem;
}
.foot-panel2 {
    background-color: #222f3d;
    color: white;
    height: 300px;
    display: flex;
    justify-content: space-evenly;
}

ul {
    margin-top: 20px;
}
ul h1 {
    display: block;
    font-size: 0.85rem;
    margin-top: 10px;
    color: #dddddd;

}

.foot-panel3 {
    background-color: #222f3d;
    color: white;
    border-top: 0.5px solid white;
    height: 70px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.logo {
    background-image: url("amazon_logo.png");
    background-size: cover;
    height: 50px;
    width: 100px;
}

.foot-panel4 {
    background-color: #0f1111;
    color: white;
    height: 100px;
    font-size: 0.7rem;
    text-align: center;

}

.pages {
    padding-top: 25px;
}
.copyright {
    padding-top: 5px;
}
section{
  background: url(bg1.jpg) no-repeat;
  background-size: cover;
  height: calc(100vh - 80px);
}
div.gallery {
  border: 1px solid #ccc;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 460px;
  height: 250px;
  border-radius: 30px;
}

div.desc {
  padding: 15px;
  text-align: center;
}

* {
  box-sizing: border-box;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 24.99999%;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
    
    </style>