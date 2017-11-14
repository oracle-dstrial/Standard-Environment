# datascience-example-env
A repository to house the standard DataScience.com example environment. Fully compatible with all customer onboarding, engagement, and education materials. 

Python 2.7 and R 3.3.3

## Sharing with customers/prospects:
* Give them `ds-std-eg-env-Dockerfile` and `ds-std-eg-env-context.tar`
	* `ds-std-eg-env-Dockerfile` - The content of this file goes into the 'Custom Dockerfile' field when building environments
	* `ds-std-eg-env-context.tar` - Upload when building environments via the Upload TAR button
* No need to share anything in `context-files`

## Commit 34d36b1 Checks:
### Passed:
* Jupyter/Py2 Session and Notebook
* RStudio Session, Notebook, and Knitting
* Py2 API
* R API
* Shiny app
* spaCy Pt 1 Seminar

### Failed:
* None

### TBD:
* Other seminars
* POC Engagement/success plans
