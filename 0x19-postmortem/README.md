<h1>Incident Postmortem: WordPress Service Outage</h1>
<h2>Issue Summary:</h2>
<h3>Duration:</h3> November 8, 2023, 08:00 AM - 09:30 AM (UTC)
<h3>Impact:</h3>
WordPress service experienced intermittent outages during the specified duration.
Users reported slow response times, with approximately 30% of users being affected.
<h3>Root Cause:</h3> The file extension in the WordPress configuration file was changed from .php to .phpp
<h2>Timeline:</h2>
- 08:00 AM (UTC): Users reported that the WordPress service was doing the cha-cha slower than usual.<br>
- 08:15 AM (UTC): Monitoring alerts got their groove on, signaling a party in the server room.<br>
- 08:20 AM (UTC): Investigation initiated to identify the cause.<br>
- 08:30 AM (UTC): Initial assumption pointed towards server load issues.<br>
- 08:45 AM (UTC): Further investigation revealed the unexpected file extension change.<br>
- 09:00 AM (UTC): Incident escalated to the system administration team.<br>
- 09:15 AM (UTC): Decision made to roll back the file extension change.<br>
- 09:30 AM (UTC): Service restored to normal operations.<br>
<h2>Root Cause and Resolution:</h2>
<h3>Root Cause:</h3>
The issue stemmed from a Puppet script execution that inadvertently changed the file extension in the WordPress configuration file (/var/www/html/wp-settings.php) from .php to .phpp. This change disrupted the proper execution of PHP files, leading to slow response times and intermittent outages.
<h3>Resolution:</h3>
The incident was resolved by rolling back the file extension change. The following command was executed to correct the extension:
<br>
<b>sed -i s/phpp/php/g /var/www/html/wp-settings.php </b> <br>
This command replaced all instances of '.phpp' with '.php' in the WordPress configuration file, restoring the correct file extension and resolving the service disruption.
<h2>Corrective and Preventive Measures</h2>
- Code Review and Testing<br>
- Documentation Update 
