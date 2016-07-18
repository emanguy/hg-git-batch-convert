To use the converter, place mercurial repositories in the input folder. Then, run hg-batch-convert.sh on Cygwin. 

hg-batch-convert.sh requires Cygwin to have Mercurial, Git, and Python (not Python3) installed. If you run "Python --version" and it does not say "Python 2.7.10" or another 2.x version of python, this will likely not work.

Conversion will place the new repositories in the Output/ folder. It will also add a single commit on every branch which has a .hgignore, where it has converted the existing .hgignore to a .gitignore.

If you get errors during the process that look like there are a bunch of "Modified: file x" lines, run "git config --global core.autocrlf true", clean out the Output/ directory, then run the converter again.