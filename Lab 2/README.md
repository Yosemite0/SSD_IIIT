

# Assignment 2 - Software System Development – Monsoon 2024

**Student ID        :** 2024201029

**Student Name      :** Yash Chordia

**Submission Date   :** 21 August 2024, 05:30 pm

## Description

This assignment consists of two questions, each requiring the creation of shell scripts:

1. **Question 1:** Locate a file on the system and print the first 4 lines of the file.
2. **Question 2:**
   - **Part A:** Generate the first N Fibonacci numbers.
   - **Part B:** Add two numbers using environment variables.

## Directory Structure

The submission should have the following structure:

```
2024201029.zip
|_____2024201029
      |_____2024201029_q1.sh
      |_____2024201029_q2a.sh
      |_____2024201029_q2b.sh
      |_____README.md
```

## Execution Instructions

### Question 1: Find and Display First 4 Lines of a File

**Script Name:** `2024201029_q1.sh`

This script searches the entire filesystem from the root directory `/` to locate a file containing a specific string (e.g., `john_doe` in the file name) and prints the first 4 lines of the file.

**Usage:**

```
./2024201029_q1.sh <file_name>
```

**Example:**

```
./2024201029_q1.sh john_doe
```

**Notes:**
- The script will start searching from the root directory.
- Ensure you have sufficient permissions to execute this script.

### Question 2a: Generate Fibonacci Sequence

**Script Name:** `2024201029_q2a.sh`

This script generates and prints the first N numbers of the Fibonacci sequence. The value of N should be provided as a command-line argument.

**Usage:**

```
./2024201029_q2a.sh <N>
```

**Example:**

```
./2024201029_q2a.sh 10
```

**Notes:**
- Ensure that `N` is a natural number (i.e., a positive integer).

### Question 2b: Add Two Numbers Using Environment Variables

**Script Name:** `2024201029_q2b.sh`

This script adds two numbers that are provided through environment variables `A` and `B` and prints the result.

**Usage:**

Before running the script, set the environment variables `A` and `B` in your terminal:

```
export A=10
export B=5
```

Then, run the script:

```
./2024201029_q2b.sh
```

**Notes:**
- The script will use the values of `A` and `B` from the environment. Ensure they are set correctly before running the script.

## Dependencies

No external dependencies are required to run these scripts. All scripts are written in Bash and should work on any Unix-like operating system with a standard shell environment.

## Additional Information

- Please make sure that the script files have execute permissions (`chmod +x <script_name>`).
- These scripts assume you have basic privileges on the system to search directories and execute scripts.
- Follow the naming conventions strictly as mentioned in the instructions to avoid penalties.

