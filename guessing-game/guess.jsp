<%
int randomNumber = (int) (Math.random() * 10) + 1;%>
<!doctype html> 
<html lang="en"> 
<head> 
<title>Guessing Game</title> 
</head> 
<body> 
<% String submit = request.getParameter("submit");
String hint = request.getParameter("hint");



if(submit !=null)
{

String guessNumber = request.getParameter("guessNumber");
int guess = Integer.parseInt(guessNumber);

String rand=request.getParameter("randomNumber");
int random = Integer.parseInt(rand);

randomNumber=random;
	
	
	if (guess==randomNumber)
	{	out.println("Correct!, the number was " + randomNumber);
		randomNumber = (int) (Math.random() * 10) + 1;
	}
		else if(guess>randomNumber)
					out.println("Sorry, That was incorrect. Too High!");
				else
					out.println("Sorry, That was incorrect. Too Low!");
	}
if(hint !=null)
out.println("Your number modded by 2 is " + randomNumber%2);
	
%>
<form method="post" action="guess.jsp">
<input type="hidden" value="<%= randomNumber %>" name="randomNumber" />

<p>Guess a number 1-10:</p>
<input type="text" value="" name = "guessNumber"/>
<input type="submit" value="Submit" name = "submit"/>
<input type="button" value="Hint" name = "hint"/>

</form>
</body> 
</html>