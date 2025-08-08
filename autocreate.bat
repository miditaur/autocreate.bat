@echo off

:: Changing the console code page to support Cyrillic (UTF-8)
chcp 65001 > nul
:: Output information about the file
echo *****************File Information***************
echo * Filename: autocreate.bat v1.0                *
echo * Type: Windows batch file                     *
echo * Description:Automatic creation of the basic  *
echo * structure of the website                     *
echo * Author: Cherniievskyi Yurii                  *
echo * Created on: March 20, 2024                   *
echo * Last Modified: August 7, 2025                *
echo * Link:https://chyw.pp.ua                      *
echo * License:MIT Open Source License              *
echo ************************************************

:: Get the current date and time for use in file information
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set datestamp=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%
set timestamp=%datetime:~8,2%:%datetime:~10,2%:%datetime:~12,2%

:: Assigning values to the title and description variables
set title=Site_name
set description=Site_description

:: Create the assets and subdirectories
mkdir assets
mkdir assets\css
mkdir assets\js
mkdir assets\img
echo The assets/css, assets/js, assets/img directories have been created successfully.

:: Creating and filling index.html file content
(
  echo ^<html^>
  echo   ^<head^>
  echo     ^<meta charset="utf-8"^>
  echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
  echo     ^<title^>%title%^</title^>
  echo     ^<meta name="title" content="%title%"^>
  echo     ^<meta name="description" content="%description%"^>
  echo     ^<meta property="og:title" content="%title%"^>
  echo     ^<meta property="og:description" content="%description%"^>
  echo     ^<meta property="og:type" content="website"^>
  echo     ^<meta property="og:image" content="https://miditaur.net/assets/img/og-image.webp"^>
  echo     ^<meta name="twitter:title" content="%title%"^>
  echo     ^<meta property="twitter:description" content="%description%"^>
  echo     ^<meta name="twitter:card" content="summary_large_image"^>
  echo     ^<meta property="twitter:image" content="https://miditaur.net/assets/img/og-image.webp"^>
  echo     ^<link rel="icon" href="assets/img/favicon.ico"^>
  echo     ^<link rel="stylesheet" type="text/css" href="assets/css/reset.css"^>
  echo     ^<link rel="stylesheet" type="text/css" href="assets/css/normalize.css"^>
  echo     ^<link rel="stylesheet" type="text/css" href="assets/css/style.css"^>
  echo   ^</head^>
  echo   ^<body^>
  echo   ^<header^>
  echo     ^<h1^>Welcome to %title%^</h1^>
  echo   ^</header^>
  echo   ^<main^>
  echo     ^<p^>%description%^</p^>
  echo   ^</main^>
  echo ^<footer^>
  echo ^<p^>^&copy; %datestamp% Cherniievskyi Yurii. All rights reserved.^</p^>
  echo ^</footer^>
  echo     ^<script src="assets/js/app.js"^>^</script^>
  echo   ^</body^>
echo ^</html^>
) > index.html

echo The index.html file has been created and content has been added successfully.

:: Create reset.css
(
  echo /* ****************************************** */	
  echo /* File name: reset.css                       */
  echo /* Description: CSS Reset for consistency     */
  echo /* Author: Cherniievskyi Yurii                */
  echo /* Date: %datestamp% %timestamp%              */
  echo /* License: MIT                               */
  echo /* ****************************************** */
  echo html, body, div, span, applet, object, iframe,
  echo h1, h2, h3, h4, h5, h6, p, blockquote, pre,
  echo a, abbr, acronym, address, big, cite, code,
  echo del, dfn, em, img, ins, kbd, q, s, samp,
  echo small, strike, strong, sub, sup, tt, var,
  echo b, u, i, center,
  echo dl, dt, dd, ol, ul, li,
  echo fieldset, form, label, legend,
  echo table, caption, tbody, tfoot, thead, tr, th, td,
  echo article, aside, canvas, details, embed,
  echo figure, figcaption, footer, header, hgroup,
  echo menu, nav, output, ruby, section, summary,
  echo time, mark, audio, video {
  echo   margin: 0;
  echo   padding: 0;
  echo   border: 0;
  echo   font-size: 100%%;
  echo   font: inherit;
  echo   vertical-align: baseline;
  echo }
  echo /* HTML5 display-role reset for older browsers */
  echo article, aside, details, figcaption, figure,
  echo footer, header, hgroup, menu, nav, section {
  echo   display: block;
  echo }
  echo body {
  echo   line-height: 1;
  echo }
  echo ol, ul {
  echo   list-style: none;
  echo }
  echo blockquote, q {
  echo   quotes: none;
  echo }
  echo blockquote:before, blockquote:after,
  echo q:before, q:after {
  echo   content: '';
  echo   content: none;
  echo }
  echo table {
  echo   border-collapse: collapse;
  echo   border-spacing: 0;
  echo }
) > assets/css/reset.css

echo The reset.css file was created successfully.

:: Create normalize.css
(
  echo /* ****************************************** */	
  echo /* File name: normalize.css                   */
  echo /* Description: Normalize styles              */
  echo /* Author: Cherniievskyi Yurii                */
  echo /* Date: %datestamp% %timestamp%              */
  echo /* License: MIT                               */
  echo /* ****************************************** */
  echo html {
  echo   line-height: 1.15;
  echo   -webkit-text-size-adjust: 100%%;
  echo }
  echo body {
  echo   margin: 0;
  echo }
  echo main {
  echo   display: block;
  echo }
  echo h1 {
  echo   font-size: 2em;
  echo   margin: 0.67em 0;
  echo }
  echo a {
  echo   background-color: transparent;
  echo }
  echo img {
  echo   border-style: none;
  echo }
  echo button,
  echo input,
  echo select,
  echo textarea {
  echo   font-family: inherit;
  echo   font-size: 100%%;
  echo   line-height: 1.15;
  echo   margin: 0;
  echo }
) > assets/css/normalize.css

echo The normalize.css file was created successfully.

:: Create style.css
(
  echo /* ****************************************** */	
  echo /* File name: style.css                       */
  echo /* Description: Custom styles                 */
  echo /* Author: Cherniievskyi Yurii                */
  echo /* Date: %datestamp% %timestamp%              */
  echo /* License: MIT                               */
  echo /* ****************************************** */
  echo html {
  echo   box-sizing: border-box;
  echo }
  echo *, *::after, *::before {
  echo   box-sizing: inherit;
  echo }
  echo body {
  echo   font-family: Arial, sans-serif; margin: 0; padding: 0; background-color: #f4f4f4; color: #333;
  echo }
  echo header {
  echo   background-color: #4CAF50;
  echo   color: white;
  echo   padding: 20px;
  echo   text-align: center;
  echo }
  echo h1, h2, h3 {
  echo   color: #333;
  echo }
  echo main {
  echo   padding: 20px;
  echo }
  echo footer {
  echo   background-color: #333;
  echo   color: white;
  echo   text-align: center;
  echo   padding: 10px;
  echo   position: fixed;
  echo   bottom: 0;
  echo   width: 100%%;
  echo }
) > assets/css/style.css

echo The style.css file was created successfully.

:: Create app.js
(
  echo /* ****************************************** */
  echo /* File name: app.js                          */
  echo /* Description: JavaScript for miditaur.net   */
  echo /* Author: Cherniievskyi Yurii                */
  echo /* Date: %datestamp% %timestamp%              */
  echo /* License: MIT                               */
  echo /* ****************************************** */
  echo // JavaScript code here
) > assets/js/app.js

echo The app.js file was created successfully.

pause


