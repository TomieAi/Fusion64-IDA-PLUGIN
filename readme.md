# 🔬 Fusion64 – IDA Pro Plugin

**Fusion64** is an IDA Pro plugin designed to help with binary reverse engineering by generating **code patterns** and **signature patterns**.

> ✅ Updated to support **IDA Pro 9.1**

---

### 🙏 Credits

This project is based on the original work by [senator715](https://github.com/senator715/IDA-Fusion).  
The core implementation remains theirs — we've only updated it for **IDA 9.1 compatibility** and added a **GitHub Actions-based build system** for safer, verifiable builds.

---

## 🛠️ Build Instructions

You can build this plugin using **two methods**:

### 📦 1. GitHub Actions (Manual Trigger)

> **⚠️ NOTE:** This workflow is **manual**. You must trigger it and enter version info.

- Go to the **Actions** tab on GitHub.
- Select **"Build Fusion64 C++"**.
- Click **"Run workflow"** (top right).
- Enter:
  - **Release version** (e.g., `v0.1.0`)
  - **Tag message** (e.g., `Fusion Plugin for IDA Pro 9.1`)
- The plugin will be compiled and published automatically.

🧪 Artifacts are stored under [GitHub Releases](https://github.com/TomieAi/Fusion64-IDA-PLUGIN/releases)

> 🔐 **Security Note**: This is the safest place to get this plugin — each release is built using a clean GitHub Actions environment, ensuring integrity and reproducibility.

---

### 🧰 2. Manual Build (Local)

1. Ensure **Visual Studio 2022 Preview** is installed with the **C++ Desktop Development** workload.
2. Run `build.bat` (or open `Fusion64.sln` and build it manually).
3. Output `.dll` will be in `x64/Release/`.

---

## 📥 Installation

To install the plugin:

1. Copy the `.dll` file from `x64/Release/`
2. Paste it into your IDA Pro 9.1 plugin directory:
