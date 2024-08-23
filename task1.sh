#!/bin/bash

# Check if the input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path_to_accounts.csv>"
    exit 1
fi

input_file="$1"
output_file="accounts_new.csv"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' not found!"
    exit 1
fi

# Function to format the name
format_name() {
    echo "$1" | awk -F',' '{ for(i=1;i<=NF;i++) { $i=tolower($i); $i=toupper(substr($i,1,1)) substr($i,2) } print }' OFS=' '
}

# Function to format the email
format_email() {
    name=$1
    surname=$2
    location_id=$3
    email="${name:0:1}${surname,,}@abc.com"
    
    if grep -q "$email" "$output_file"; then
        echo "${email%.*}${location_id}@abc.com"
    else
        echo "$email"
    fi
}

# Read the input file and create the output file
{
    # Read the header and write it to the output file
    IFS=',' read -r -a headers
    echo "id,location_id,name,title,email,department" > "$output_file"
    
    # Process each line in the input file
    while IFS=',' read -r id location_id name title email department; do
        formatted_name="$(format_name "$name")"
        formatted_email="$(format_email "$name" "$surname" "$location_id")"
        echo "$id,$location_id,$formatted_name,$title,$formatted_email,$department"
    done < <(tail -n +2 "$input_file")
} >> "$output_file"

echo "New accounts file '$output_file' created successfully."

