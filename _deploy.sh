#==================================RESOURCES ON RMARKDOWN_SITE=====================================#
#   https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html
#   https://rmarkdown.rstudio.com/lesson-13.html
#==================================================================================================#



#=========================================== (start) ================================================#
#================================== Invoke copy_folders.R  & build_site.R FROM SHELL ================================#
# cd ./BrazilWaterSurvey # (otherwise thinks it is in ./)
pwd
# Rscript copy_folders.R
# Rscript build_site.R
#=========================================== (end) ================================================#


# check status
git status

# 		# Add FIRST TIME
#       git add Annex-Casi-Maintenance.Rproj
#       git add ANNEX_G20_CasesMaint.*
#       # git add Annex-Casi-Maintenance.Rproj
#       #   _deploy.sh
#       git add  input/* # INPUT
#       git add  casi.Rdata # OUTPUT
#        git add  figs_tbls/*
#        git add  figs_tbls/quadriplot/

# Add TRACKED changes to git Index.
git add -u
	# Add ALL changes to git Index.
	# git add -A


# Create Std commit "message"....
msg="rebuilt on `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

# ... Commit Those changes.
git commit -m "$msg"

		# or git commit -m "added quadriplot"
		# git commit -m "added 1st"

# Push source and build repos.
git push origin main #  starting Oct. 2020, any new repository is created with the default branch main, not master

# # Come Back up to the Project Root
# cd ..
#
# # Delete the local repository in the shell:
# rm -rf myrepo/
