# Real-Time Transaction Ledger

A web application for high-speed transaction data entry, real-time metrics compute, and live database synchronization.

## 🚀 Live Demo
[View Live Application]([https://YOUR_GITHUB_USERNAME.github.io/real-time-ledger/public/index.html](https://mrodrigueze.github.io/real-time-ledger/))

## 🛠️ System Architecture
* **Frontend:** Vanilla JavaScript (ES6+), HTML5, CSS3.
* **Backend & Database:** Supabase (PostgreSQL).
* **Real-time Engine:** WebSockets via Supabase Realtime Broadcast channels.

## 🧠 Key Features
1. **Database-Level Compute:** Metrics calculations are delegated directly to PostgreSQL via Relational Views.
2. **High-Velocity Data Entry Workflow:** Real-time redundancy checks intercept user inputs to dynamically lock matching fields and switch technical execution blocks from `INSERT` to `UPDATE`.
3. **Reactive UI Ecosystem:** Integrated native asynchronous state listeners driven by PostgreSQL WAL replication channels to automatically hot-reload UI components without page refreshes.
4. **Data Integrity Constraints:** Strict database-level regex pattern enforcement (`^[0-9]{9}$`) applied on phone entries.
