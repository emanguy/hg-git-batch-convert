To use the converter, place mercurial repositories in the input folder. Then, run hg-batch-convert.sh. 

hg-batch-convert.sh requires Mercurial, Git, and Python (not Python3). If you run "Python --version" and it does not say "Python 2.7.10" or another 2.x version of python, this will likely not work.

Conversion will place the new repositories in the Output/ folder. It will also add a single commit on every branch which has a .hgignore, where it has converted the existing .hgignore to a .gitignore.

fast-export can be added by running `git submodule init && git submodule update`.
