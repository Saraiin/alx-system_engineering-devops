#Configuration management
<html>
<head>
</head>
<body>
<table>
<tr>
<td> name of tasks </td>
<td> tasks </td>
</tr>
<tr>
<td> 0. Create a file </td>
<td>Using Puppet, create a file in /tmp.

Requirements:

File path is /tmp/school
File permission is 0744
File owner is www-data
File group is www-data
File contains I love Puppet </td>
</tr>
<tr>
<td> 1. Install a package</td>
<td>Using Puppet, install flask from pip3.

Requirements:

Install flask
Version must be 2.1.0</td>
</tr>
<tr>
<td>2. Execute a command</td>
<td> Using Puppet, create a manifest that kills a process named killmenow.

Requirements:

Must use the exec Puppet resource
Must use pkill</td>
</tr>
</table>
</body>
</html>
