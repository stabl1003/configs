#!/bin/bash

# Check if brightnessctl is installed
if ! command -v brightnessctl &> /dev/null
then
    echo "brightnessctl is not installed. Please install it first."
    exit 1
fi

# Get the current brightness percentage
current_brightness=$(brightnessctl g)

# Get the max brightness
max_brightness=$(brightnessctl m)

# Calculate the percentage
brightness_percentage=$(( 100 * current_brightness / max_brightness ))

# Output the current brightness percentage
echo "${brightness_percentage}% "
