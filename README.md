# autocreate.bat
Automatically create a basic website structure using Windows Batch Script
## 🔧 Description

This `autocreate.bat` script allows you to automatically generate a basic structure for a website, including:

- `assets/css`, `assets/js`, `assets/img` folders
- `index.html` base HTML file
- `reset.css`, `normalize.css`, `style.css` styles
- `app.js` empty JavaScript file
- `OpenGraph / Twitter Card` metadata
## 🛠 Purpose

Ideal for:
- starting new web projects
- quickly deploying a framework without manually preparing files
- educational purposes (learning HTML/CSS/JS framework)

---

## 📂 Framework after launch
project-root/
│
├── autocreate.bat
├── index.html
└── assets/
├── css/
│ ├── reset.css
│ ├── normalize.css
│ └── style.css
├── js/
│ └── app.js
└── img/

## ▶️ How to use

1. Copy the `autocreate.bat` file to the desired directory.
2. Double-click or run it in the command line:
```cmd
autocreate.bat
The result will be a complete site structure with basic content.

⚠️ Make sure that the system supports UTF-8 encoding (the script performs chcp 65001).

## 🖋️ Settings
You can change the title and description variables in the script:

set title=Site_name
set description=Site_description
🧑‍💻 Author
Cherniievskyi Yurii
🔗 https://miditaur.net

## 📝 License
This project is licensed under the MIT License.
You are free to use, modify, and distribute it.

## 📅 Metadata
Version: 1.0
Date of creation: March 20, 2024
Last modified: August 7, 2025
