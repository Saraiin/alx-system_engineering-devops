<html>
<head></head>
<body>
<h1 style="font-family:IMPACT;">0x0B. SSH</h1>
<table>
<tr>
<td>name</td>
<td> task</td>
</tr>
<tr>
<td> 0. Use a private key</td>
<td> Bash script that uses ssh to connect to your server using the private key ~/.ssh/school with the user ubuntu.

Requirements:

- Only use ssh single-character flags
- You cannot use -l
- You do not need to handle the case of a private key protected by a passphrase</td>
</tr>
<tr>
<td>1. Create an SSH key pair</td>
<td>Write a Bash script that creates an RSA key pair.

Requirements:

- Name of the created private key must be school
- Number of bits in the created key to be created 4096
- The created key must be protected by the passphrase betty</td>
</tr>
<tr>
<td>2. Client configuration file</td>
<td>Your machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password. Share your SSH client configuration in your answer file.

Requirements:

- Your SSH client configuration must be configured to use the private key ~/.ssh/school
- Your SSH client configuration must be configured to refuse to authenticate using a password</td>
</tr>
<tr>
<td>4. Client configuration file (w/ Puppet)</td>
<td>Let’s practice using Puppet to make changes to our configuration file. Just as in the previous configuration file task, we’d like you to set up your client SSH configuration file so that you can connect to a server without typing a password.

Requirements:

- Your SSH client configuration must be configured to use the private key ~/.ssh/school
- Your SSH client configuration must be configured to refuse to authenticate using a password</td>
</tr>
</table>
</body>
</html>
