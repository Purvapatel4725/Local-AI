# 🚀 Local-AI Management Script

## Overview 📄

**Local-AI** is a lightweight and user-friendly Bash script that simplifies managing Ollama's AI models locally. Whether you need to pull, run, stop, or remove models, this script provides an intuitive **menu-driven interface** to handle everything seamlessly.

---

## Key Features ✨

- **Automatic Installation**: Checks if Ollama is installed; if not, it installs it automatically.
- **Pull Models**: Easily download specific models.
- **List Models**: View all available models on your system.
- **Run Models**: Run your desired models directly from the script.
- **Stop Models**: Stop running models effortlessly.
- **Remove Models**: Delete unwanted models to free up space.
- **Show Model Info**: Display detailed information about any model.
- **Status Check**: A note guides you to check Ollama's local status via `http://localhost:11434`.

---

## Prerequisites ⚙️

Ensure you have the following tools ready:

- **Bash**: Default on most Linux distributions.
- **curl**: Required to download Ollama if it's not already installed.

> **Note**: This script is designed for Linux-based systems.


## Installation 🛠️

To set up and use the **Local-AI** management script:

1. Clone the repository:
   ```bash
   git clone https://github.com/Purvapatel4725/Local-AI.git
   ```

2. Navigate to the repository directory:
   ```bash
   cd Local-AI
   ```

3. Make the script executable:
   ```bash
   chmod +x LocalAI.sh
   ```

4. Run the script:
   ```bash
   ./LocalAI.sh
   ```

---

## Usage 🚀

Once the script is executed, you will see an interactive menu like this:

```
=== Ollama Management Script ===
1. Pull a Model
2. List Models
3. Run a Model
4. Stop a Running Model
5. Remove a Model
6. Show Information About a Model
================================
Note: To check Ollama's status, visit http://localhost:11434
================================
7. Exit
================================
Enter your choice [1-7]: 
```

### Menu Breakdown:

1. **Pull a Model**:
   - Enter the model name (e.g., `llama2`, `stablelm`) to download it locally.

2. **List Models**:
   - Display all models available on your system.

3. **Run a Model**:
   - Start a specific model for use.

4. **Stop a Running Model**:
   - Stop any active model that is currently running.

5. **Remove a Model**:
   - Remove an unwanted model to free up space.

6. **Show Information About a Model**:
   - Get details about a specific model, including version and metadata.

7. **Exit**:
   - Quit the script safely.

> 💡 **Pro Tip**: Ollama's status and interface are available at `http://localhost:11434`.

---

## Example Demonstration 💻

### 1. Pulling a Model
```bash
Enter your choice [1-7]: 1
Enter the model/version name you want to pull (e.g., llama2, stablelm): llama2
Pulling model: llama2...
Successfully pulled 'llama2'.
```

### 2. Listing Models
```bash
Enter your choice [1-7]: 2
Listing all models:
NAME           VERSION        SIZE
llama2         13B            4.5GB
stablelm       1.0            3.2GB
```

### 3. Running a Model
```bash
Enter your choice [1-7]: 3
Enter the model/version you want to run: llama2
Running model: llama2...
```

---

## Why Use This Script? 💡

- **Local Operation**: Keeps your data secure by running everything locally, ensuring no risk of data exposure or theft.
- **Easy Installation**: Automatically installs Ollama if it’s missing, ensuring a hassle-free setup.
- **Automation**: Reduces manual work when managing AI models.
- **Offline Functionality**: Most tasks can be executed without relying on external services or internet connections.
- **User-Friendly**: Menu-driven approach ensures accessibility for all skill levels.
- **Efficient**: Manage Ollama models directly without remembering complex commands.

---

## Contribution 🤝

If you'd like to contribute to this project, feel free to:

- Fork the repository.
- Make improvements or add new features.
- Submit a pull request.

I appreciate all contributions! ❤️

---

## About the Author ✍️

This project is created and maintained by **Purva Patel**.  
For inquiries, feedback, or collaboration, feel free to connect via GitHub.

---

## Disclaimer ⚠️

This script is provided for educational and ethical purposes **only**. By using this script, you agree to take full responsibility for your actions. Use it **at your own risk** and ensure compliance with all applicable laws and regulations. The author holds no liability for any misuse or unintended consequences arising from this script.

Use responsibly. Use ethically. 🚨
---
