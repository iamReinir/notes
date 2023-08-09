# Quality Attribute Senarios
* Source
* Stimulus
* Environment
* Artifact
* Response
* Response Measure

## Example Performance quality scenario
* Source : User using standard web browser as a reader
* Stimulus : User search for a webnovel using the search bar
* Environment : System is operating under stress, there is fewer than 10000 concurrent users. Internet latency is less than 2000ms from user browser to site.
* Artifact : Novelupdate main website.
* Response : User's browser showing the list of all related webnovels.
* Response Measure : Roundtrip time from user click "search" to when the browser show the list. 95% of the time under 10 seconds. 99.99% under 30 seconds.

## Example Availability quality scenario
* Source : User using standard web browser
* Stimulus : User access the main webpage of the site
* Environment : System is operating normally, there is fewer than 1000 concurrent users. Internet latency is less than 1500ms from user browser to site.
* Artifact : Novelupdate main website.
* Response : User enter the main webpage, and the browser show the webpage to user.
* Response Measure : The main webpage must be up 95% of the time, this means about 8.4 hours of maintenance downtime per week.