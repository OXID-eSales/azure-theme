[{if $oView->getClassKey() eq "details"}]
    [{include file="rdfa/details/details.tpl"}]
[{elseif $oView->getClassKey() eq "content"}]
    [{include file="rdfa/content/content.tpl"}]
[{/if}]