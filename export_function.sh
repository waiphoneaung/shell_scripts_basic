#!/bin/bash

# Common function in a separate file
COMMON_FUNCTION_FILE="/home/waiphoneaung/assignment_script/common_functions.sh"

# Check if the common function file exists
if [ ! -f "$COMMON_FUNCTION_FILE" ]; then
    echo "#!/bin/bash" > "$COMMON_FUNCTION_FILE"
    echo "log_info() {" >> "$COMMON_FUNCTION_FILE"
    echo '    echo "$(date) - $1" >> /home/waiphoneaung/assignment_script/logfile.log' >> "$COMMON_FUNCTION_FILE"
    echo "}" >> "$COMMON_FUNCTION_FILE"
    chmod +x "$COMMON_FUNCTION_FILE"
    echo "Common function file created with log_info function."
else
    echo "Common function file already exists."
fi

# Source the common function file
source "$COMMON_FUNCTION_FILE"

# Use the common function
log_info "This is a log message from the script using the common function."

