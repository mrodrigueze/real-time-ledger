# 🧪 Lab Timer — Multi-Category Laboratory Timer

An offline-ready web application designed for precise time management in laboratory workflows. 

**For instance: Do you have multiple colorimetric samples with varying processing times, and need to read them in the spectrophotometer with absolute precision? This tool is built exactly for that.**

![Lab Timer Main Interface](assets/global-app.png)

---

## ✨ Core Features

* **Independent Multi-Timing:** Run multiple countdowns in parallel without UI blocking.
* **Automatic Enumeration:** Sequential tracking (#1, #2...) for individual samples within each category.
* **Dynamic Categorization:** Customizable groups (name and color) to differentiate sample types or treatments.
* **Quick-Launch UI:** Pre-configured interval buttons to start routine processes with a single click.
* **Overtime Tracking:** Progressive counting (+) post-expiration to measure exact delay times before readings.
* **State Persistence:** `localStorage` integration retains your setup even after closing the browser.
* **Zero Dependencies:** A single HTML file. 100% functional offline.

---

## 🔬 Workflow Example

Designed to mitigate human error in protocols demanding batch processing or staggered sampling:

```text
Standard workflow per replicate:
  1. Sample Preparation / Conditioning    → start timer (2 min)
  2. Reagent / Inoculum Addition          → start timer (5 min)
  3. Reaction Time / Incubation           → start timer (15 min)
  4. Process Stop / Data Reading          → spectrophotometer
```

Color-coded and numbered tracking allows you to manage dozens of samples in different phases without losing track of the exact timing for each one.

---

## 🚀 Quick Start

### 🌐 Live Version (Recommended)
Access the application instantly without downloading anything:  
**[Launch Lab Timer Pro](https://mrodrigueze.github.io/real-time-ledger/)**

### 💻 Local Use
1. Download the `index.html` file from this repository.
2. Open it directly in any modern web browser (Chrome, Firefox, Safari, Edge).
3. Define your experimental categories using the **⚙ settings** panel.

<img src="assets/personalization.png" width="350" alt="Settings Configuration">

4. Add your most frequent time intervals to the quick-access grid.

*Note: This file can be instantly deployed on platforms like Netlify for universal access from any lab device.*

---

## 🛠️ Tech Stack

* **Core:** HTML5 / CSS3 / Vanilla JavaScript.
* **Audio:** Web Audio API (synthetic procedural alerts).
* **Data:** `localStorage` (client-side state management).

---

## 👤 Author

**Manuel Isaias Rodriguez Espejo** Biotechnologist & Software Developer  
[GitHub](https://github.com/mrodrigueze) · [LinkedIn](https://www.linkedin.com/in/mrodrigueze)

---

## 📄 License

[MIT License](https://opensource.org/licenses/MIT)
