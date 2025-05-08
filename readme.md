# 🔬 Fusion64 – IDA Pro Plugin

**Fusion64** is an IDA Pro plugin designed to help with binary reverse engineering by generating **code patterns** and **signature patterns** quickly and efficiently.

> ✅ Updated to support **IDA Pro 9.1**

---

### 🙏 Credits

This project is based on the original work by [senator715](https://github.com/senator715/IDA-Fusion).  
All core functionality and ideas belong to them — this is simply an updated build for compatibility with newer IDA versions.

---

## 🛠️ Build Instructions

You can build this plugin using **two methods**:

### 📦 1. GitHub Actions (Manual Trigger)

> **Note**: This workflow is **not automatic**. You must manually trigger it and enter version info.

- Go to the **Actions** tab on GitHub.
- Select **"Build Fusion64 C++"**.
- Click **"Run workflow"** (top right).
- Enter:
  - **Release version** (e.g., `v0.1.0`)
  - **Tag message** (e.g., `Fusion Plugin for IDA Pro 9.1`)
- The plugin will be compiled and published.

🧪 Artifacts are stored under [GitHub Releases](https://github.com/TomieAi/Fusion64-IDA-PLUGIN/releases)

---

### 🧰 2. Manual Build (Local)

1. Ensure **Visual Studio 2022** is installed with the **C++ desktop development** workload.
2. Run `build.bat` (or open `Fusion64.sln` and build it manually).
3. Output `.dll` will be in `x64/Release/`.

---

## 📥 Installation

To install the plugin:

1. Copy the `.dll` file from `x64/Release/`
2. Paste it into your IDA Pro 9.1 plugin directory:
