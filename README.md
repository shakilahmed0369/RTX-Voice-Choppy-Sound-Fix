# NVIDIA RTX Voice Auto-Start and High Priority Setup For Fix Choppy Sound

## Batch Script Overview

This batch script automates the startup of NVIDIA RTX Voice on Windows and sets its process priority to High automatically. Here’s how it works:

- **Change Directory**: The script navigates to the directory where NVIDIA RTX Voice is installed.
- **Start Application**: It launches NVIDIA RTX Voice using the `start` command.
- **Wait**: It waits for 10 seconds (`timeout /t 10`) to ensure the application has enough time to initialize.
- **Set Priority**: Using `wmic`, the script finds the process by name (`NVIDIA RTX Voice.exe`) and sets its priority to High (`128`).

## Auto-Start Guide Using Task Scheduler

To ensure NVIDIA RTX Voice starts automatically with high priority, follow these steps to create a task in Windows Task Scheduler:

1. **Open Task Scheduler**:
   - Press `Win + R`, type `taskschd.msc`, and press `Enter`.

2. **Create a New Task**:
   - In Task Scheduler, click on `Create Task` in the right-hand pane.

3. **General Tab**:
   - Provide a name for the task (e.g., "Start NVIDIA RTX Voice").
   - Check `Run only when user is logged on`.
   - Check `Run with highest privileges`.

4. **Triggers Tab**:
   - Click `New...`.
   - Set the trigger to `At log on`.
   - Ensure `Any user` is selected.
   - Click `OK`.

5. **Actions Tab**:
   - Click `New...`.
   - Set the action to `Start a program`.
   - Browse to the location of your batch file (`rtx_voice_fix.bat`) and select it.
   - Click `OK`.

6. **Conditions and Settings**:
   - Adjust conditions and settings as needed in the respective tabs (`Conditions`, `Settings`).

7. **Save the Task**:
   - Click `OK` to save the task.


By following these steps, you can automate the startup of NVIDIA RTX Voice with high priority on Windows using a batch script and Task Scheduler.
