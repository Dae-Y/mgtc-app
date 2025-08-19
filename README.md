# MG TC Owners Club — Perth WA (Mobile App)

[![Flutter](https://img.shields.io/badge/Flutter-mobile%20app-blue)](#)
[![Dart](https://img.shields.io/badge/Dart-language-informational)](#)
[![Platform](https://img.shields.io/badge/Platforms-Android%20%7C%20iOS-lightgrey)](#)

A lightweight Flutter app I’m building as a **Curtin CS** student to help my father and the **MG TC Owners Club (Perth, Western Australia)** stay connected. The app puts the essentials, **Impromptu Runs**, **Club Calendar**, and **Membership info**, one tap away, with a clean card-style UI and a classic blueprint header.

> Club website: https://www.mgtcownersclub.com/home

---

## ✨ Features

- **Hero header** with blueprint background and club details (MG TC Owners Club — Perth, WA)  
- **Card tiles** for quick actions:  
  - **Impromptu Runs** (open WhatsApp/FB group or a page you specify)  
  - **Calendar** → links to the live club calendar  
  - **Membership** → links to About/Join page  
- **External link launcher** with simple error handling  
- **Responsive layout** for phones & small tablets

---

## 📸 Screenshots

<div style="display:flex; gap:30px; flex-wrap:wrap;">

  <img src="https://github.com/user-attachments/assets/addcefd7-abf3-4104-b220-38e504e01a55" alt="mobile app screen" style="width:30%; height:auto;" />

  <img src="https://github.com/user-attachments/assets/a400bdf6-5a57-4bd8-a85f-a087aaa762b6" alt="mobile app screen3" style="width:32%; height:auto;" />

  <img src="https://github.com/user-attachments/assets/ab4bbd9d-66fa-4741-9640-3dcc80af8d78" alt="mobile app screen2" style="width:30%; height:auto;" />

</div>


---


## 🧱 Tech Stack

- **Flutter** + **Dart**
- Core packages (suggested):  
  - `url_launcher` for external links  
  - `intl` (optional) for any date formatting  
- No backend required (links to official club resources)

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed (`flutter --version`)
- Android Studio or Xcode for device emulators
- A phone or simulator to run the app

### Clone & Run
```bash
git clone https://github.com/<your-username>/mgtc-app.git
cd mgtc-app

# Install dependencies
flutter pub get

# List connected devices (Chrome, Android, iOS, etc.)
flutter devices

flutter run

# Run the app on Chrome
flutter run -d chrome

```

---

## 🛣️ Possible Future Updates

- [ ] Push notifications for event updates  
- [ ] Offline calendar snapshot (read-only)  
- [ ] Event RSVP / “I’m attending” quick action  
- [ ] Theme toggle (light/dark)  
- [ ] Basic admin shortcuts (open website backend, if approved)

---

## 🙌 Acknowledgements

- **MG TC Owners Club — Perth, WA** for inspiration and content  
- Family & club members for feedback and testing  
- Flutter community packages

---

## 🤝 Contributing

This app is built for a community use-case. If you’re a club member and want to suggest improvements, please open an Issue or submit a PR with a short description and screenshots.

---

## 📄 License

Choose a license that fits your intent. Common choices:
- **MIT** (open, permissive)  
- **Proprietary / Club-use only** (if you prefer to keep distribution limited)

---

## 📬 Contact

**Daehwan Yeo** — Final-year Computer Science student at Curtin University 

[LinkedIn](https://www.linkedin.com/in/daehwan-y/)   ·   📧 [Email](mailto:dae.y.dev@gmail.com)

If you spot a bug or have an idea, feel free to open an Issue or contact me. I'm happy to improve the app with the community!
