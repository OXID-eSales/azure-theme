[{oxscript add="$('a.js-external').attr('target', '_blank');"}]
[{assign var="currency" value=$oView->getActCurrency()}]
[{foreach from=$oView->getBargainArticleList() item=_product name=bargainList}]
    [{if $smarty.foreach.bargainList.first}]
        [{oxid_include_widget cl="oxwArticleBox" _parent=$oView->getClassKey() nocookie=1 _navurlparams=$oViewConf->getNavUrlParams() iLinkType=$_product->getLinkType() _object=$_product anid=$_product->getId() isVatIncluded=$oView->isVatIncluded() iIteration=$smarty.foreach.bargainList.iteration sWidgetType=product sListType=bargainitem inlist=$_product->isInList() skipESIforUser=1}]
    [{/if}]
[{/foreach}]
