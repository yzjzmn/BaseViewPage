# BaseViewPage
Base Page (page:loading,error,empty)

eg:
var basePage : PromptPage?
basePage = PromptPage.init(self)
basePage?.showLoadingPage()
basePage?.dismiss()
basePage?.showNoResultsPage()
basePage?.showErrNetworkPage {
  //do 
}
basePage?.showErrResultsPage {
  //do 
}
