var sharedSignupInfo = ("<br><input id='user_first_name' name='user[first_name]' placeholder='First Name*' required='required' size='30' type='text' /> \
  <br><input id='user_last_name' name='user[last_name]' placeholder='Last Name*' required='required' size='30' type='text' /> \
  <br><input id='user_email' name='user[email]' placeholder='Email*' required='required' size='30' type='text' /> \
  <br><input id='user_password' name='user[password]' placeholder='Password*' required='required' size='30' type='password' /> \
  <br><input id='user_location' name='user[location]' placeholder='Location*' required='required' size='30' type='text' /> \
  <br><input id='user_phone' name='user[phone]' placeholder='Phone Number' size='30' type='text' /> \
  ")

var sharedOptionalInfo = ("<br><input id='user_github_handle' name='user[github_handle]' placeholder='Github Username' size='30' type='text' /> \
  <br><input id='user_facebook_url' name='user[facebook_url]' placeholder='Facebook URL' size='30' type='text' /> \
  <br><input id='user_linkedin_url' name='user[linkedin_url]' placeholder='LinkedIn URL' size='30' type='text' /> \
  <br><input id='user_tumblr_url' name='user[tumblr_url]' placeholder='Tumblr URL' size='30' type='text' /> \
  <br><input id='user_twitter_url' name='user[twitter_url]' placeholder='Twitter URL' size='30' type='text' /> \ ")

var alumniSignup = ("<div class='signup-popup'>" + "<span>Student Signup</span><form accept-charset='UTF-8' action='/create_student' method='post'><div style='margin:0;padding:0;display:inline'><input name='utf8' type='hidden' value='&#x2713;' /> \ "+sharedSignupInfo+" \
  <br><input id='user_graduation_date' name='user[graduation_date]' placeholder='Graduation Date' size='30' type='text' /> \
  "+sharedOptionalInfo+" \
  <br><textarea cols='30' id='user_intro' name='user[intro]' placeholder='Brief Intro (Tweet-sized)*' required='required' rows='3'></textarea> \
  <br><select id='user_groupable_id' name='user[groupable_id]'><option value=''>Please select</option> \
  <option value='1'>Squirrels 2013</option> \
  <option value='2'>Foxes 2013</option> \
  <option value='3'>Otters 2013</option></select> \
  <br><br><input name='commit' type='submit' value='Signup' /> \
  </form>" + "</div>")

var mentorSignup = ("<div class='signup-popup'>" + "<span>Mentor Signup</span>"+sharedSignupInfo+" \
  <br><input id='user_company_name' name='user[company_name]' placeholder='Company Name' size='30' type='text' /> \
  "+sharedOptionalInfo+" \
  <br><input name='commit' type='submit' value='Signup' /> \
  </form>" + "</div>")

var staffSignup = ("<div class='signup-popup'>" + "<span>Staff Signup</span>"+sharedSignupInfo+" \
  <br><input id='user_company_name' name='user[company_name]' placeholder='Company Name' size='30' type='text' /> \
  "+sharedOptionalInfo+" \
  <br><input name='commit' type='submit' value='Signup' /> \
  </form>" + "</div>")

var employerSignup = ("<div class='signup-popup'>" + "<span>Employer Signup</span>"+sharedSignupInfo+" \
  <br><select id='user_groupable_id' name='user[groupable_id]'><option value='>Please select</option> \
  <option value='1'>Franecki-Lindgren</option></select> \
  <br><input name='commit' type='submit' value='Signup' /> \
  </form><br> \
  <form action='/companies/new' class='button_to' method='get'><div><input type='submit' value='Add my company' /></div></form>" + "</div>")

function overlay(whichSignup) {
	var docHeight = $(document).height();
	$("body").append("<div id='overlay'><div id='box'><button class='close' id='popup'>X</button></div></div>");
	$('#box').append(whichSignup).css({
   'background-color' : 'rgba(255, 255, 255, 100)',
   'position' :'absolute',
   'text-align' : 'center',
   'top' : '25%',
   'left' : '35%',
   'width' : '30%',
   'height' : '55%',
   'border-radius' : '25px',
   'z-index' : 4999
 }).hide().show(('slow','fade'));

	$("#overlay")
  .height(docHeight)
  .css({
   'position' : 'absolute',
   'top' : 0,
   'left' : 0,
   'background-color' : 'rgba(0,0,0,0.5)',
   'width' : '100%',
   'z-index' : 5000
 });
		// $('body div #box form').on('submit',function(e){
		// 	e.preventDefault();
		// 	console.log(this);
		// 	$(this).replaceWith('<div>Thanks! You\'ll receive an email as soon as we activate your account.</div>');
		// });
$('button.close#popup').click(function(){
  $(this).parent().parent().remove();
})
}

$(document).ready(function(){
  $('.signup-buttons button').bind('click',function(e){
   e.preventDefault();
   overlay(eval(this.id+"Signup"));
 });

});
