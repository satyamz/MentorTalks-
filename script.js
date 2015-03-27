/* list of fruit names should go in this list. This is the source of the auto complete which will be populated in the text box */
var data = [
  "Operating system",
  "Theory of computation",
  "Cloud security",
  "Artificial Intelligence",
  "Astronomy",
  "Computer Vision",
  "Data Mining",
  "Data Modeling",
  "Devices and Circuits",
  "Digital Electronics",
  "Distributed system security",
  "Distributed systems",
  "Forecasting and Prediction algorithms",
  "grid middle ware","HCI","Information Security",
  "Machine Learning",
  "Microwave engineering",
  "networking security",
  "Power Electronics",
  "software engineering",
  "Speech Processing",
  "Wireless Networks"
  ];
  
/*  jQuery ready function. Specify a function to execute when the DOM is fully loaded.  */
$(document).ready(
  
  /* This is the function that will get executed after the DOM is fully loaded */
  function () {
    
  /* binding the text box with the jQuery Auto complete function. */
    $( "#fruits" ).autocomplete({
      /*Source refers to the list of fruits that are available in the auto complete list. */
      source:data,
      /* auto focus true means, the first item in the auto complete list is selected by default. therefore when the user hits enter,
      it will be loaded in the textbox */
      autoFocus: true ,

    });
  }

);
