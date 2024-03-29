[{oxscript add="$('a.js-external').attr('target', '_blank');"}]
[{capture append="oxidBlock_content"}]

  <h1 class="pageHead">[{$oView->getTitle()}]</h1>
  [{block name="search_results"}]
  [{if $oView->getArticleCount()}]
    <div class="listRefine clear bottomRound">
        [{block name="search_top_listlocator"}]
        [{include file="widget/locator/listlocator.tpl"  locator=$oView->getPageNavigationLimitedTop() listDisplayType=true itemsPerPage=true sort=true}]
        [{/block}]
    </div>
  [{else}]
    <div>[{oxmultilang ident="NO_ITEMS_FOUND"}]</div>
  [{/if}]
  [{if $oView->getArticleList()}]
    [{foreach from=$oView->getArticleList() name=search item=product}]
      [{include file="widget/product/list.tpl" type=$oView->getListDisplayType() listId="searchList" products=$oView->getArticleList() showMainLink=true}]
    [{/foreach}]
  [{/if}]
  [{if $oView->getArticleCount()}]
    [{include file="widget/locator/listlocator.tpl" locator=$oView->getPageNavigationLimitedBottom() place="bottom"}]
  [{/if}]
  [{/block}]
[{/capture}]
[{include file="layout/page.tpl" sidebar="Left"}]
