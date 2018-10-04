[{capture append="oxidBlock_pageBody"}]
    <div class="errorBox">
          [{if $Errors|is_array && $Errors.default|is_array && !empty($Errors.default)}]
          <div class="status error corners">
              [{foreach from=$Errors.default item=oEr key=key}]
                  <p>[{$oEr->getOxMessage()}]</p>

                  <p class="stackTrace">[{$oEr->getStackTrace()|nl2br}];</p>
              [{/foreach}]
          </div>
          [{/if}]
    </div>
[{/capture}]

[{include file="layout/base.tpl"}]