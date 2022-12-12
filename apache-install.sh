#!/bin/bash

#install apache
sudo yum -y install httpd

#enable and start apache
sudo systemctl enable httpd
sudo systemctl start httpd

#navigate to the html folder that apache creates on install
cd /var/www/html

sudo mkdir Css
sudo mkdir Scripts

#create index.html file and change file permissions
touch index.html
sudo chmod 775 index.html

sudo echo '<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />

		<title>A Basic HTML5 Template</title>
		<meta name="description" content="A simple HTML5 Template for new projects." />
		<meta name="author" content="SitePoint" />

		<meta property="og:title" content="Welcome" />
		<meta property="og:type" content="website" />
		<meta property="og:url" content="https://www.sitepoint.com/a-basic-html5-template/" />
		<meta property="og:description" content="A simple HTML5 Template for new projects." />
		<meta property="og:image" content="image.png" />

		<link rel="icon" href="/favicon.ico" />
		<link rel="icon" href="/favicon.svg" type="image/svg+xml" />

		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link
			href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700;800&display=swap"
			rel="stylesheet"
		/>

		<link rel="stylesheet" href="css/styles.css?v=1.0" />
	</head>

	<body>
		<div class="wrapper">
			<div class="container">
				<h1>Welcome! An Apache web server has been started successfully.</h1>
				<p>Replace this with your own index.html file in /var/www/html.</p>
			</div>
		</div>
		<!-- your content here... -->
	</body>
</html>

<style>
	body {
		background-color: #34333d;
		display: flex;
		align-items: center;
		justify-content: center;
		font-family: Inter;
		padding-top: 128px;
	}

	.container {
		box-sizing: border-box;
		width: 741px;
		height: 449px;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: flex-start;
		padding: 48px 48px 48px 48px;
		box-shadow: 0px 1px 32px 11px rgba(38, 37, 44, 0.49);
		background-color: #5d5b6b;
		overflow: hidden;
		align-content: flex-start;
		flex-wrap: nowrap;
		gap: 24;
		border-radius: 24px;
	}

	.container h1 {
		flex-shrink: 0;
		width: 100%;
		height: auto; /* 144px */
		white-space: pre-wrap;
		word-wrap: break-word;
		word-break: break-word;
		position: relative;
		color: #ffffff;
		line-height: 1.2;
		font-size: 40px;
	}
	.container p {
		white-space: pre-wrap;
		word-wrap: break-word;
		word-break: break-word;
		position: relative;
		color: #ffffff;
		line-height: 1.2;
		font-size: 18px;
	}
</style>
' > index.html
