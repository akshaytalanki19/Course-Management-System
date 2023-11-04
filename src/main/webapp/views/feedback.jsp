<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>Contact Us</title> 
    <style> 
        body { 
            font-family: Arial, sans-serif; 
            background-color: #f0f0f0; 
            text-align: center; 
        } 
 
        .container { 
            max-width: 400px; 
            margin: 0 auto; 
            padding: 20px; 
            background-color: #fff; 
            border-radius: 5px; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); 
        } 
 
        .input-group { 
            margin-bottom: 15px; 
        } 
 
        .input-group input { 
            width: 100%; 
            padding: 10px; 
            border: 1px solid #ccc; 
            border-radius: 5px; 
        } 
 
        .button-container { 
            text-align: center; 
        } 
 
        .submit-button { 
            background-color: #007bff; 
            color: #fff; 
            border: none; 
            border-radius: 5px; 
            padding: 10px 20px; 
            cursor: pointer; 
        } 
    </style> 
</head> 
<body> 
<%@ include file="empnavbar.jsp" %>  
<div class="container"> 
    <form action="https://formspree.io/f/xaygkbqp" method="POST"> 
        <div class="input-group"> 
            <input type="text" placeholder="Name" required name="Name"> 
        </div> 
        <div class="input-group"> 
            <input type="email" placeholder="Email" required name="Email"> 
        </div> 
        <div class="input-group"> 
            <input type="text" placeholder="Subject" required name="Subject"> 
        </div> 
        <div class="input-group"> 
            <textarea placeholder="Message" required name="Message" rows="5"></textarea> 
        </div> 
        <div class="button-container"> 
            <button class="submit-button" type="submit">SEND MESSAGE</button> 
        </div> 
    </form> 
</div> 
</body> 
</html>