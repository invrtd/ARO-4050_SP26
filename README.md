# ARO-4050_SP26
## Why we SHOULD use Git
Git if properly used will make shareing and keeping track of changes easy. Yes there is going to be a learning curve. But trust me when I say it's 100x easier than using sending the files over discord or even onedrive.
## Getting started 
 In matlab 
- Go to New > Git Clone 
- Paste in URL:`https://github.com/invrtd/ARO-4050_SP26` 
- Select folder location you wish to store the project e.g. `C:\Users\YourUser\Documents\MATLAB\ARO-4050_SP26`
- Open > Open... > Your chosen directory e.g. `C:\Users\YourUser\Documents\MATLAB\ARO-4050_SP26`

# Class Git Workflow Guide (MATLAB / Simulink Project)

This guide explains **exactly how our class will use Git day-to-day** to collaborate on the Simulink project. Follow this workflow and you will avoid almost all merge problems.

This is a **user guide** — it tells you what to do when you sit down to work.

---

## Big picture

We use Git to safely combine everyone's work.

### Key ideas

* `main` = **Golden Sim** (always runnable on pull)
* Nobody commits directly to `main`
* Most students work using **MATLAB's Source Control interface**
* Each subsystem has at least **two assigned engineers** (redundancy)
* Only assigned engineers edit that subsystem's `.slx`
* `.slx` collaboration follows a **hot-potato workflow**
* We keep commits **low** by committing only at checkpoints
* Integration controls what reaches `main`

Think of it like this:

> Your working branch = your workspace
> IP branch = subsystem hot-potato workspace
> PR = sharing stable work with the class
> main = the Golden Sim

---

## Use MATLAB's Git integration (default workflow)

Inside MATLAB:

**Home → Project → Source Control**

You will mainly use:

* **Pull**
* **Commit**
* **Push**
* **Branch Manager**
* **Compare → Simulink**

Use MATLAB's interface by default.

Do not use the terminal unless you are comfortable with Git.
Advanced users may use the terminal, but must still follow all workflow rules in this guide.

---

## Ownership & collaboration rules (Simulink)

Simulink files (`.slx`) do not merge well. Because multiple people may work in the **same subsystem and even the same file**, we follow these rules.

### Working boundaries

Do **not edit subsystems you are not assigned to** without coordinating first.

Each subsystem has assigned engineers who:

* review each other's changes
* both understand the implementation
* can step in for each other if needed

The INT team owns all `.m` script files.
If you need workspace variables, coordinate with INT.

If you must edit another subsystem:

* talk to the assigned engineers first
* merge early
* keep branches short-lived

### Hot-potato rule

Each `.slx` behaves like a **hot potato**: only one person holds it at a time.

Before editing, message your subsystem partner/team:

> "Taking XYZ.slx"

After committing and pushing:

> "Released XYZ.slx"

Do not start editing a file if someone else is holding the potato.
Wait for the handoff or coordinate directly.

This simple rule prevents nearly all `.slx` conflicts.

---

## Collaboration workflow (subsystem hot-potato workflow)

Each subsystem uses a shared **IP (in-progress) branch**, for example:

```
vert/Thrust_Forces_Moments/ip
lat/Lat_Dir_Aero_Forces_Moments/ip
int/Propagate_States/ip
```

Only assigned engineers use that branch.

### Checkpoint commits (reduced commit rule)

Do **not commit every tiny change**.

Commit only when:

1. Handing the hot potato to your partner
2. You reached a **stable checkpoint** (model opens and runs/compiles)
3. You are done for the day

If the work is unstable, keep it local.

### Push only stable checkpoints

Push only when your commit is safe for teammates to pull.

This keeps subsystem branches usable and reduces noise.

---

## Sharing work with the class

PRs represent **stable milestones**, not micro-updates.

When a subsystem reaches a meaningful milestone:

1. Subsystem owners notify the maintainer/integration team
2. Maintainer opens a PR from the subsystem branch to `main`
3. PR includes:

   * what changed
   * how to test
4. Maintainer squash-merges into `main`

Most students **do not open PRs** directly.

---

## If a conflict happens

If you encounter a conflict:

* Stop editing and notify your partner/team

If it involves `.slx`:

* Do **not** open it in a text editor
* Do **not** guess or force merges
* Escalate to a maintainer

---

## Daily workflow (MATLAB-first)

### 1. Switch to your subsystem branch and pull

Most work is done **directly on your subsystem IP branch**.

**MATLAB:**

Home → Source Control → Branch Manager
Switch to your subsystem branch (example):

```
vert/Thrust_Forces_Moments/ip
```

Click **Pull**.

**Terminal (advanced users only):**

```
git switch vert/Thrust_Forces_Moments/ip
git pull
```

---

### 2. Take the hot potato

Message your partner/team that you are taking the `.slx`.

---

### 3. Work locally

Edit and test. No commit is required yet.

---

### 4. Commit and release the hot potato

When ready:

**MATLAB:**

1. Source Control → **Commit**
2. Write a short message describing the change
3. Verify the file list
4. Click **Commit**
5. Click **Push**

Then notify your partner/team that the potato is released.

Good commit messages:

* Fix thrust scaling bug
* Add pitch controller saturation
* Refactor aerodynamic forces block

---

## Optional: local sandbox branches (advanced)

Advanced users may create personal sandbox branches for experiments.

Example:

```
git switch -c sandbox-test
```

Merge back only when stable.

Most students should work directly on the subsystem IP branch.

---

## Keeping branches updated

Pull regularly:

```
git pull
```

Keep your subsystem branch synced before major work.

---

## MATLAB / Simulink specific rules

### Use Simulink compare tools

MATLAB → **Home → Compare → Simulink**

Never open `.slx` conflicts in a text editor.

### Avoid unnecessary model churn

* Don't rename large subsystems casually
* Avoid moving blocks unless needed
* Avoid changing global model settings unless assigned
* Keep edits focused and small

If MATLAB prompts to upgrade a model version, stop and contact a maintainer.

---

## Integration & testing expectation

### Golden Sim expectation (`main`)

`main` must always be runnable:

* pull the repo
* run `Sim_Init.m`
* open the SLX
* run the simulation

Integration team is responsible for keeping `main` in this state.

Subsystem teams must:

* test their block independently
* provide clear test steps

Unrunnable code will not be merged.

---

## What not to commit

```
slprj/
*.slxc
*.asv
*.autosave
codegen/
```

If unsure, ask.

---

## Common commands cheat sheet (advanced users)

```
git pull
git add -A
git commit -m "message"
git push
git status
```

Most students should use MATLAB buttons instead.

---

## If something goes wrong

Stop and ask.

Git mistakes are fixable. Guessing makes them worse.

---

## Final rules

* Never commit directly to `main`
* Use subsystem IP branches for collaboration
* PR only stable milestones to `main`
* Follow the hot-potato rule for `.slx`
* Work in assigned pairs
* Keep commits to stable checkpoints
* Ask questions early

Following this workflow keeps the project stable and prevents merge disasters.
