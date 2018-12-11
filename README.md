# BaseViewPage
Base Page (page:loading,error,empty)</br></br>

eg:</br>
var basePage : PromptPage?</br>
basePage = PromptPage.init(self)</br>
basePage?.showLoadingPage()</br>
basePage?.dismiss()</br>
basePage?.showNoResultsPage()</br>
basePage?.showErrNetworkPage {</br>
</br>  //do 
</br>}</br>
basePage?.showErrResultsPage {</br>
</br>  //do 
</br>}</br>
