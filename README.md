# Set of simple tweaks and batch scripts for Windows


## Description

It's set of simple tweaks and batch scripts for Windows.


## Usage

Just run these scripts in cmd.
Some files require administrator rights!

Some tasks (eg Orchestrator Idle Start) require SYSTEM rights, administrator rights are not enough!
The problem is solved by running `taskschd.msc` (manual task management)
 or just `cmd.exe` (using batch scripts) with SYSTEM rights.
There is a solution for this problem:
Download the Microsoft Sysinternals utility called [PsExec](https://learn.microsoft.com/en-us/sysinternals/downloads/psexec).
Run `cmd.exe` with administrator rights, run the command in it:
```
psexec64.exe -s -i cmd.exe
```

This will launch the entire console with SYSTEM rights, in which you can run the scripts you need,
 or run `taskschd.msc` to manually manage tasks.

Some scripts require administrator rights, others require SYSTEM rights, and if you run the main script.
Then I recommend running it once with administrator rights and another time with SYSTEM rights (using the `psexec64` utility).


> Note:
> PSExec may give an error (Error creating key file on ...) this is due to the fact that there is no network or network interface.
> (you can downgrade the version of the utility, or use the [AdvancedRun utility](https://www.nirsoft.net/utils/advanced_run.html))


## License

[MIT](./LICENSE).
