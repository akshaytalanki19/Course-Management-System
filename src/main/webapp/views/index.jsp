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
      <label class="logo">Course Management system</label>
      <ul>
        <li><a class="/" href="#">HOME</a></li>
        <li><a href="adminlogin">ADMIN</a></li>
        <li><a href="login">USER</a></li>
        <li><a href="stafflogin">STAFF</a></li>
        <li><a href="#">ABOUT US</a></li>
        <li><a href="#">CONTACT US</a></li>
        
      </ul>
    </nav>
    <center><h1>REGISTER FOR A COURSE</h1></center>
<div class="responsive">
    
  <div class="gallery">
    <a target="_blank" href="img_5terre.jpg">
      <img src="cyber.jfif" alt="Cinque Terre" width="600" height="400">
    </a>
    <div class="desc"><button class="button button1">CLOUD COMPUTING</button></div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_forest.jpg">
      <img src="/DS" alt="Forest" width="600" height="600">
    </a>
    <div class="desc"><button class="button button1">DATA SCIENCE</button></div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_lights.jpg">
      <img src="/English.jfif" alt="Northern Lights" width="600" height="400">
    </a>
    <div class="desc"><button class="button button1">COMMUNICATION SKILLS</button></div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_mountains.jpg">
      <img src="/cy.jpg" alt="Mountains" width="600" height="400">
    </a>
    <div class="desc"><button class="button button1">CYBER SECURITY</button></div>
  </div>
  <br>
  
</div>

<div class="responsive">
    
    <div class="gallery">
      <a target="_blank" href="img_5terre.jpg">
        <img src="/ai.jpg" alt="Cinque Terre" width="600" height="400">
      </a>
      <div class="desc"><button class="button button1">ARTIFICIAL INTELLEGINCE</button></div>
    </div>
  </div>
  
  
  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="img_forest.jpg">
        <img src="/ml.jfif" alt="Forest" width="600" height="600">
      </a>
      <div class="desc"><button class="button button1">MACHINE LEARNING</button></div>
    </div>
  </div>
  
  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="img_lights.jpg">
        <img src="/db.jfif" alt="Northern Lights" width="600" height="400">
      </a>
      <div class="desc"><button class="button button1">DATABASE</button></div>
    </div>
  </div>
  
  <div class="responsive">
    <div class="gallery">
      <a target="_blank" href="img_mountains.jpg">
        <img src="/UX.jfif" alt="Mountains" width="600" height="400">
      </a>
      <div class="desc"><button class="button button1">UX DESIGN</button></div>
    </div>
    <br>
    
  </div>
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
/* .button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
} */

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

@media only screen and (max-width: 700px) {
  .responsive {
    width: 49.99999%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}
</style>