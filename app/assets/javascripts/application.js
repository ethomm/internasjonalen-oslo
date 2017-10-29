// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


$( document ).on('turbolinks:load', function() {
	$('#nav-icon2').click(function(){
		$(this).toggleClass('open');
	});
	// checks if any inputs has the class apeningstider
	if($('input').hasClass('apningstider')){
		setDoubleInteger();
	}

	// Makes shure to not bloat the input field with class apningstider
	$('.apningstider').on('focusout', function(){
		if(this.value == 0){
    		this.value = "00";
    	}else if(this.value > 0 && this.value < 10){
    		var value = this.value.toString();
    		var newvalue = "0" + value;
    		//console.log(newvalue.length)
    		if(newvalue.length == 2){
    			this.value = "0"+value;
    		}
    		
    	}
	});

});

// Function to correct the inputfields of apningstider to double digets
function setDoubleInteger(){
	$(".apningstider").each(function() {
    	if(this.value == 0){
    		this.value = "00";
    	}else if(this.value > 0 && this.value < 10){
    		var value = this.value.toString();
    		this.value = "0"+value;
    	}
	});
}
