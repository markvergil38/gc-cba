<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/jquery.mobile-1.2.0.min.css">
	<script src="js/jquery-1.8.2.min.js"></script>
	<script src="js/jquery.mobile-1.2.0.min.js"></script>



<head>
<body>
<div data-role="page" data-theme="e">
<div data-role="header" data-position="fixed">
	<center><img src="assets/banner.png" style="max-width:100%"></center>
</div>
	<div data-role="content" data-theme="e">
	
	
	
	<table width="300" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<form name="form1" method="post" action="checklogin.php">
<td>
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
<tr>
<td colspan="3"><strong>Member Login </strong></td>
</tr>
<tr>
<td width="78">Username</td>
<td width="6">:</td>
<td width="294"><input name="myusername" type="text" id="myusername"></td>
</tr>
<tr>
<td>Password</td>
<td>:</td>
<td><input name="mypassword" type="password" id="mypassword"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Login"></td>
</tr>
</table>
</td>
</form>
</tr>
</table>

	</div>
<div data-role="footer" data-position="fixed" data-theme="e">
	<div data-role="navbar">
	<ul>
		<li><a href="index.html" data-theme="e"><font size="2em" face="Garamond">BACK</font></a></li>
	</ul>
	</div><!-- /navbar -->
</div>



</div>
</body>
</html>