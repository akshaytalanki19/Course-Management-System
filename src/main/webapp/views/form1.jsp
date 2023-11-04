<body>
    <h1 id="title">FCC Survey Form</h1>
    <style>
    *, ::before, ::after {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

body {
    width: 100%;
    height: 100%;
    margin: 5em auto;
    font-family: verdana, sans-serif;
    font-size: 16px;
    background-color: #2D6A4F;
    color: #ffffff;
    accent-color: #97728D;
  }
  
  h1, p {
    margin: 0.8em auto;
    text-align: center; 
  }

p {
  font-style: italic;
  }
  
  fieldset {
    width: 50%;
    padding: 2em;
    margin: 3em auto;
    line-height: 1.5em;
    border: none; 
    border-radius: 5px;
    background-color: #081C15;   
  }
  
  label {
    display: block;
  }
  
  div {
    margin: 5px 0 15px;
  }
  
  .box {
    width: 100%;
    height: 2em; 
    margin: 5px 0 15px;
    border-radius: 5px;
    border-width: 2px;
    border-color: #2D6A4F;
    background-color: #ffffff;
  }
  
  .large {
    display: block; 
    height: auto;
  }
  
  #submit {
    margin-top: 2em;
    height: 3em; 
    font-weight: bold;
    letter-spacing: 0.5px;
    color: #ffffff;
    background-color: #97728D;
  }

@media screen and (max-width: 700px) {
      fieldset {
        width: 80%; 
      }
  }
    </style>
    <p id="description">Thank you for taking the time to help us improve the platform</p>
    
    <form id="survey-form">
      <fieldset>
        <label for="name" id="name-label">Name</label> 
        <input class="box" id="name" type="text" name="name" placeholder="Enter your name" required>
        
        <label for="email" id="email-label">Email</label>
        <input class="box" id="email" type="email" name="email" placeholder="Enter your Email" required>

        <label for="number" id="number-label">Age(optional)</label> 
        <input class="box" id="number" type="number" name="age" placeholder="Age" min="13" max="120" >

        <label for="dropdown" id="dropdown-label">Which option best describes your current role?</label>
         <select class="box" id="dropdown">
           <option>Select current role</option>
           <option>Student</option>
           <option>Full Time Job</option>
           <option>Full Time Learner</option>
           <option>Prefer not to say</option>
           <option>Other</option>
        </select>  

        <label for="radio" id="radio-label">Would you recommend our service to a friend?</label>
        <div>
          <label for="definitely"><input type="radio" id="definitely" name="definitely-maybe-notsure" value="1" checked> Definitely</label>
          <label for="maybe"><input type="radio" id="maybe" name="definitely-maybe-notsure" value="2"> Maybe</label>
          <label for="notsure"><input type="radio" id="notsure" name="definitely-maybe-notsure" value="3"> Not sure</label>
        </div>

        <label for="checkbox" id="checkbox-label">What would you like to see more? (Check all that apply)</label>
        <div>
         <label for="frontend"><input type="checkbox" id="frontend" name="frontend" value="1" > Front-end Projects</label>
         <label for="backend"><input type="checkbox" id="backend" name="backend" value="2" > Back-end Projects</label>
          <label for="courses"><input type="checkbox" id="courses" name="courses" value="3" > Additional Courses</label>
        </div>

        <label for="comment" id="comment-label">Any comments or suggestions?</label>
        <textarea class="box large" id="comment" name="comment" rows="3" cols="30" placeholder="Enter your text here..." ></textarea>

      <button class="box" type="submit" id="submit" name="submit">Submit</button>
      </fieldset>
    </form>
  </body>