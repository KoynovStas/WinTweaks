# Set of simple tweaks and batch scripts for Windows


## Description

It's set of simple tweaks and batch scripts for Windows.


## Usage

Just run these scripts in cmd.
Some files require administrator rights!

Some tasks (eg Orchestrator Idle Start) require SYSTEM rights, administrator rights are not enough!
The problem is solved by running `taskschd.msc` (manual task management) or just `cmd.exe` (using batch scripts) with SYSTEM rights.
There is a solution for this problem:
Download the Microsoft Sysinternals utility called [PsExec](https://learn.microsoft.com/en-us/sysinternals/downloads/psexec).
Run `cmd.exe` with administrator rights, run the command in it:
```
psexec64.exe -s -i cmd.exe
```

This will launch the entire console with SYSTEM rights, in which you can run the scripts you need, or run `taskschd.msc` to manually manage tasks.


## License

[MIT](./LICENSE).
