# Git Tutorial Part 2 - Workflow

## Primer

* [Create a pull request](https://docs.microsoft.com/en-us/azure/devops/repos/git/pullrequest?view=azure-devops-2019)
* [Resolve merge conflicts](https://docs.microsoft.com/de-de/azure/devops/repos/git/merging?view=azure-devops-2019&tabs=visual-studio)
* [Squash merge pull requests](https://docs.microsoft.com/de-de/azure/devops/repos/git/merging-with-squash?view=azure-devops-2019)

## Workflow

* [Comparing Git Workflows](https://www.codingblocks.net/podcast/comparing-git-workflows/)
* [Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

## Deep Dive

* Anatomy of a pull request:
  * <https://docs.microsoft.com/en-us/azure/devops/repos/git/pull-requests?view=azure-devops>
  * [Squash merge pull requests](https://docs.microsoft.com/en-us/azure/devops/repos/git/merging-with-squash?view=azure-devops)
  
TODO

Fast forward merge

Squash (wie und warum) und rebase vor pr mit Konflikten in tfs zur Vorbereitung des Squash merge.

---

Problem B0 commit ganz am Ende von https://git-scm.com/docs/git-merge-base beim rebase (der ist genau das, was wir wollen)...

https://stackoverflow.com/a/42143069

git merge-base --fork-point develop

Also besser git reset -- soft xyz und dann in einem Schritt?

https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-request-merges !!!

---

Alte Notizen für git Schulung einarbeiten...

---

Tortoise git: how would my pr look like?

---

Git Clean dfx
Und rebase -i mit commit Reihenfolge

---

Erst Tutorial für Essential commands.
Dann collab on feature branch: Konflikt auflösen mit merge und rebase
Was macht tfs bei einem pr
Squash (wir und warum) und rebase vor pr mit Konflikten in tfs zur Vorbereitung des Squash merge.

---

Commit message template: "User Story #123: Message..."
https://devblogs.microsoft.com/devops/linking-work-items-to-git-branches-commits-and-pull-requests/

## Visual Studio

* [Get Started with Azure Repos and Visual Studio](https://docs.microsoft.com/de-de/azure/devops/repos/git/gitquickstart?view=azure-devops-2019&tabs=visual-studio)
