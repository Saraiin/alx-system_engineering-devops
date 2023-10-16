<h1>Firewall</h1>
<table>
<head>
<tr><th>file</th>
<th>Task</th>
</tr></head>
<tr>
<td>0. Block all incoming traffic but</td>
<td>Let’s install the ufw firewall and setup a few rules on web-01.

Requirements:

The requirements below must be applied to web-01 (feel free to do it on lb-01 and web-02, but it won’t be checked)
- Configure ufw so that it blocks all incoming traffic, except the following TCP ports:
- 22 (SSH)
- 443 (HTTPS SSL)
- 80 (HTTP)</td>
</tr>
