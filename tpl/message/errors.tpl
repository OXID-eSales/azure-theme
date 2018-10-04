[{if $Errors|is_array && $Errors.default|is_array && !empty($Errors.default)}]
<div class="status error corners">
    [{foreach from=$Errors.default item=oEr key=key}]
        <p>[{$oEr->getOxMessage()}]</p>
    [{/foreach}]
</div>
[{/if}]