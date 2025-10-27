🏏 Easy Count App

A Flutter-based mobile application for managing and scoring cricket matches in real-time.
It enables users to create new matches, track scores, view player statistics, and manage summaries — all offline using Hive Database for data storage.

📱 Overview
Easy Count App simplifies cricket match management for players, scorers, and enthusiasts.
It provides tools to record runs, wickets, overs, and extras efficiently.
Users can review match summaries and player performance anytime, even without internet access.
The app functions fully offline using Hive local storage for smooth performance and reliability.

⚙️ Tech Stack
 Category         | Tools / Frameworks   
 ---------------- | ------------------------ 
 Frontend         | Flutter (Dart)           
 Local Database   | Hive                     
 State Management | Stateful Widgets         
 UI Framework     | Material Design          
 IDE              | Android Studio / VS Code 
 
🗃️ Local Database – Hive
The app uses Hive, a lightweight, NoSQL database designed for Flutter.
All match data is stored locally on the user’s device in Hive “boxes.”

 | **Box**      | **Description**                                         |
| ------------ | ------------------------------------------------------- |
| `matchesBox` | Stores match details (team names, overs, results, etc.) |
| `playersBox` | Stores player profiles and stats                        |
| `scoresBox`  | Holds runs, wickets, and ball-by-ball data              |
| `summaryBox` | Contains overall match summaries                        |

✅ Why Hive?
Fast and lightweight
Works completely offline
No SQL required
Perfect for structured Flutter data
Provides instant read/write access

🌟 Key Features
🏏 Match Management
Create and manage new matches
Real-time scoring (runs, wickets, extras)
Scoreboard and inning summaries

📊 Player Statistics
View batsman and bowler performance
Track 4s, 6s, strike rates, and economy

🕒 History & Summary
Access old matches with full details
Tab-based match summary (1st & 2nd innings)

📋 Drawer Screens
About Us
Contact Us
Terms & Conditions

🧠 App Structure
 Folder             | Description                                                           
 ------------------ | ------------------------------------------------------------------------- 
 drawer_screens/    | Contains About Us, Contact Us, and Terms & Conditions screens             
 home_screens/      | Includes Home, New Match, Stats, and History screens                      
 new_match_screens/ | Handles live scoring (First Innings, Second Innings, Scoreboard, Summary) 
 stats_screens/     | Displays player and bowler statistics                                     
 demo.dart          | Demo file for UI testing                                                  
 splash_screen.dart | Splash screen for app launch                                              
 main.dart          | Entry point for the app   

 🚀 Getting Started
1️⃣ Clone the Repository
git clone https://github.com/AbdulRafiy/EasyCount.git
cd EasyCount

2️⃣ Install Dependencies
flutter pub get

3️⃣ Run the App
flutter run

⚙️ Requirements

Flutter SDK (≥ 3.0)

Dart (≥ 2.17)

Android Studio or VS Code

🧾 License

This project is developed for academic and educational purposes as part of a Course-End Project (CEP).
You are free to modify or extend it for learning or personal use.

👨‍💻 Authors

Abdul Rafiy
Abid Ali
📍 Pakistan
