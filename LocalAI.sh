#!/bin/bash

# Function to check if Ollama is installed
check_ollama() {
    if ! command -v ollama &> /dev/null; then
        echo "Ollama is not installed. Installing now..."
        curl -fsSL https://ollama.com/install.sh | sh
        if [ $? -ne 0 ]; then
            echo "Installation failed. Please check your internet connection or try again."
            exit 1
        fi
        echo "Ollama installed successfully!"
    else
        echo "Ollama is already installed."
    fi
}

# Display URLs for user reference
display_options() {
    echo "Please refer to the following links for available versions and documentation:"
    echo "Ollama GitHub Repository: https://github.com/ollama/ollama"
    echo "Official Ollama Website: https://ollama.com/"
}

# Pull a model
pull_model() {
    read -p "Enter the model/version name you want to pull (e.g., llama2, stablelm): " version
    if [ -z "$version" ]; then
        echo "No version entered. Returning to main menu..."
        return
    fi

    echo "Pulling model: $version..."
    ollama pull "$version"
    if [ $? -eq 0 ]; then
        echo "Successfully pulled '$version'."
    else
        echo "Failed to pull '$version'. Please check the version name."
    fi
}

# List all available models
list_models() {
    echo "Listing all models:"
    ollama list
}

# Run a model
run_model() {
    read -p "Enter the model/version you want to run: " version
    if [ -z "$version" ]; then
        echo "No version entered. Returning to main menu..."
        return
    fi

    echo "Running model: $version..."
    ollama run "$version"
}

# Stop a running model
stop_model() {
    read -p "Enter the model/version you want to stop: " version
    if [ -z "$version" ]; then
        echo "No version entered. Returning to main menu..."
        return
    fi

    echo "Stopping model: $version..."
    ollama stop "$version"
}

# Remove a model
remove_model() {
    read -p "Enter the model/version you want to remove: " version
    if [ -z "$version" ]; then
        echo "No version entered. Returning to main menu..."
        return
    fi

    echo "Removing model: $version..."
    ollama rm "$version"
}

# Show information about a model
show_model() {
    read -p "Enter the model/version you want information for: " version
    if [ -z "$version" ]; then
        echo "No version entered. Returning to main menu..."
        return
    fi

    echo "Showing information for: $version..."
    ollama show "$version"
}

# Main Menu
main_menu() {
    while true; do
        echo ""
        echo "=== Ollama Management Script ==="
        echo "1. Pull a Model"
        echo "2. List Models"
        echo "3. Run a Model"
        echo "4. Stop a Running Model"
        echo "5. Remove a Model"
        echo "6. Show Information About a Model"
        echo "================================"
        echo "Note: To check Ollama's status, visit http://localhost:11434"
        echo "================================"
        echo "7. Exit"
        echo "================================"
        read -p "Enter your choice [1-7]: " choice

        case $choice in
            1) pull_model ;;
            2) list_models ;;
            3) run_model ;;
            4) stop_model ;;
            5) remove_model ;;
            6) show_model ;;
            7) echo "Exiting. Goodbye!"; exit 0 ;;
            *) echo "Invalid choice. Please enter a number between 1 and 7." ;;
        esac
    done
}

# Main script execution
echo "=== Ollama Installation and Management Script ==="

# Step 1: Check and install Ollama if not present
check_ollama

# Step 2: Display helpful URLs
display_options

# Step 3: Launch the main menu
main_menu
