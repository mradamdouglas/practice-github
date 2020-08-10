## Configure ##
### git config ###

	Sets configuration settings
 
	--global user.name "[name]":  Sets the name you want attached to your commit transactions::
	--global user.email "[email address]": Sets the email you want attached to your commit transactions::
	--global color.ui auto: Enables helpful colorization of command line output::


## Branches ##
### git branch ###
	**[branch-name]**: creates a new branch

### git checkout ###
	**[branch-name]**: Switches to the specified branch and updates the directory

### git merge ###
	Combines the specified branch's history into the current branch. This is usually done in pull requests, but is an important Git operation::


## Create Repos ##
### git init ###
	Turn an existing directory into a git repository

### git clone ###
	**[url]:** Clone (download) a repository that already exists on GitHub, including all the files, branches and commits::


## Synchronize Changes ##
### git fetch ###
	Download remote branches from remote repositories *without* merging the content with your current workspace automatically::

### git merge ###
	Combines remote tracking branch into current local branches

### git push ###
	Automatically merge the remote branch with the current local branch

### git pull ###
	Updates your current local working branch with all new commits from the corresponding remote branch on GitHub.
	*This is a combination of git fetch and git merge*


## Make Changes ##
### git log ###
	Lists version history for the current branches
	**--follow [file]:** lists version history for a file, including renames

### git diff ###
	**[first-name]...[second-name]:** Shows content differences between two branches
	**--staged:** An alias to --cached, this will show all staged files compared to the named commit::

### git show ###
	**[commit]:** Outputs metadata and content changes of the specified commit
	**-p**: show changes line by line before adding file to staging area

### git add ###
	Stages files. Snapshots the file in preparation for versioning.

### git commit ###
	Records file snapshots permanently in version history
	**-m [descriptive-message]:**  Adds a description message to the commit


## Redo Commits ##
### git reset ###
	**[commit]:** Undoes all commits after [commit], preserving changes locally
	**--soft HEAD**:
	**--hard [commit]:** Discards all history and changes back to the specified commit


## Remote Commands ##
### git remote update ###
	Get the contents of a remote branch **without** merging

### git remote show origin ###
	Find more information about a remote branch

### git log ###
	**-l:**
	**-p:** produces patch text
	**--stat:** show some stats about lines added/removed  in a commit


## Glossary ##
	**pull request:** a place to compare and discuss the differences introduced on a branch with reviews, comments, integrated tests, and more::
	**HEAD:** Representing your current working directory, the HEAD pointer can be moved to different branches, tags, or commits when using git checkout::


## Merge Types ##
### Explicit merge ###
	Creates a new merge commit

### Fast-Forward merge ###


### Implicit merge ###
