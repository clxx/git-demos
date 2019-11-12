# Trunk-Based Branching Strategy: Release Flow

## Idee

* Release Flow als Vereinfachung gegenüber GitFlow.
* "Standing on the shoulders of giants": Microsoft, Google, Facebook...
* Exzellent dokumentiert.

## Argumentation und Grafiken

* [Contao-News - Wechsel von GitFlow zu Trunk-based Development](https://contao.org/de/news/wechsel-von-gitflow-zu-trunk-based-development.html)
* [Trunk-based Development vs. Git Flow](https://www.toptal.com/software/trunk-based-development-git-flow)
* [Grafik (ohne kurzlebige Feaure Branches)](https://paulhammant.com/2014/01/08/googles-vs-facebooks-trunk-based-development/)

## Links

[Adopt a Git branching strategy](https://docs.microsoft.com/en-us/azure/devops/repos/git/git-branching-guidance?view=azure-devops)  
**Aber Vorsicht: Das ist noch *nicht* der Release Flow!**  
> Port your changes from your release branch into a new feature branch to bring them back into the master branch.
> Use cherry-picking instead of merging so that you have exact control over which commits are ported back to the master branch.
> Merging the feature branch into the master branch can bring over release-specific changes you don't want in the master branch.
>
> Release branches [...] coordinate and stabilize changes in a release of your code.
> This branch is long-lived and isn't merged back into the master branch in a pull request, unlike the feature branches.

**[How We Use Git at Microsoft](https://docs.microsoft.com/en-us/azure/devops/learn/devops-at-microsoft/use-git-microsoft)**  
**Das ist der Release Flow!**  
> Release Flow lets us [...] work from short-lived topic branches.
> When we're ready to ship, [...] we start a new release branch off master.
> Release branches never merge back to master, so we require cherry-picking important changes.
> [Hotfixes:] once we have merged the pull request into master, we cherry-pick the change into the release branch.

**[Trunk Based Development: Introduction](https://trunkbaseddevelopment.com/)**  
Vgl. besonders [Trunk Based Development: Branch for release](https://trunkbaseddevelopment.com/branch-for-release/)

**[Release Flow](https://docs.microsoft.com/en-us/azure/devops/learn/devops-at-microsoft/release-flow)**  
[Grafik 1: Releasing Hotfixes](https://docs.microsoft.com/en-us/azure/devops/learn/devops-at-microsoft/release-flow#moving-on)  
[Grafik 2: Moving On](https://docs.microsoft.com/en-us/azure/devops/learn/devops-at-microsoft/release-flow#releasing-hotfixes)  
*Anmerkung: (Hotfix-)Releases werden durch Tags gekennzeichnet.*

**[Progressive Experimentation with Feature Flags](https://docs.microsoft.com/en-us/azure/devops/learn/devops-at-microsoft/progressive-experimentation-feature-flags)**  
**Feature Flags**  
Vermeiden lang laufende Feature Branches, die ein Alptraum zum Mergen sind!  
> Azure DevOps merges the code to master, and it'll deploy in the next sprint or TFS release.
> Importantly, that doesn't mean the new feature will show up right away.
> We've talked elsewhere about how we decouple deployment and exposure of new features using feature flags.
> This means even if the feature needs a little more bake time before it's ready to show off, if the product builds and deploys, it's safe to go to master.
> Once in master, the code ends up in an official build, where it's (again) tested, confirmed to meet policy, and digitally signed.
Vgl. auch [Feature Flags Allow Code to Be Deployed with Controlled Exposure](https://docs.microsoft.com/en-us/azure/devops/learn/devops-at-microsoft/use-git-microsoft#feature-flags-allow-code-to-be-deployed-with-controlled-exposure)

[Feature Flags, Toggles, Controls - The Hub for Feature Flag Driven Development](https://featureflags.io/)

## Pull Requests

[Squash merge pull requests](https://docs.microsoft.com/en-us/azure/devops/repos/git/merging-with-squash?view=azure-devops)

## Videos

* [Microsoft Developer - Git patterns and anti-patterns for successful developers](https://www.youtube.com/watch?time_continue=786&v=t_4lLR6F_yk&feature=emb_logo)
* [Microsoft Ignite - Git at scale - BRK3281](https://www.youtube.com/watch?time_continue=2485&v=ppzIBIQz_KY&feature=emb_logo)
