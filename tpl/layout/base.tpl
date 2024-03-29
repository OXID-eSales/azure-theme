[{* Important ! render page head and body to collect scripts and styles *}]
[{capture append="oxidBlock_pageHead"}]
    <meta charset="[{$oView->getCharSet()}]">
    <title>[{block name="head_title"}][{$oView->getPageTitle()}][{/block}]</title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    [{block name="head_meta_robots"}]
        [{if $oView->noIndex() == 1}]
            <meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
        [{elseif $oView->noIndex() == 2}]
            <meta name="ROBOTS" content="NOINDEX, FOLLOW">
        [{/if}]
    [{/block}]

    [{block name="head_meta_description"}]
        [{if $oView->getMetaDescription()}]
            <meta name="description" content="[{$oView->getMetaDescription()}]">
        [{/if}]
    [{/block}]

    [{block name="head_meta_keywords"}]
        [{if $oView->getMetaKeywords()}]
            <meta name="keywords" content="[{$oView->getMetaKeywords()}]">
        [{/if}]
    [{/block}]

    [{block name="head_meta_open_graph"}]
    [{/block}]

    [{assign var="canonical_url" value=$oView->getCanonicalUrl()}]
    [{block name="head_link_canonical"}]
        [{if $canonical_url}]
            <link rel="canonical" href="[{$canonical_url}]">
        [{/if}]
    [{/block}]

    [{block name="head_link_favicon"}]
        <link rel="shortcut icon" href="[{$oViewConf->getImageUrl('favicon.ico')}]">
    [{/block}]

    [{block name="base_style"}]
        [{oxstyle include="css/reset.css"}]
        [{oxstyle include="css/oxid.css"}]
        [{oxstyle include="css/ie7.css" if="IE 7"}]
        [{oxstyle include="css/ie8.css" if="IE 8"}]
        [{oxstyle include="css/libs/jscrollpane.css"}]
    [{/block}]

    [{block name="head_css"}]
        [{foreach from=$oxidBlock_head item="_block"}]
            [{$_block}]
        [{/foreach}]
    [{/block}]
[{/capture}]
<!DOCTYPE HTML>
[{assign var="sLanguage" value=$oView->getActiveLangAbbr()}]
<html [{if $sLanguage}]lang="[{$sLanguage}]"[{/if}][{block name="head_html_namespace"}][{/block}]>
    <head>
        [{foreach from=$oxidBlock_pageHead item="_block"}]
            [{$_block}]
        [{/foreach}]
        [{oxstyle}]
    </head>
    <body>
        [{foreach from=$oxidBlock_pageBody item="_block"}]
            [{$_block}]
        [{/foreach}]
        [{foreach from=$oxidBlock_pagePopup item="_block"}]
            [{$_block}]
        [{/foreach}]

        [{block name="base_js"}]
            [{oxscript include="js/libs/jquery.min.js" priority=1}]
            [{oxscript include="js/libs/cookie/jquery.cookie.js" priority=1}]
            [{oxscript include="js/libs/jquery-ui.min.js" priority=1}]
            [{oxscript include='js/libs/superfish/hoverIntent.js'}]
            [{oxscript include='js/libs/superfish/supersubs.js'}]
            [{oxscript include='js/libs/superfish/superfish.js'}]
        [{/block}]

        [{if $oViewConf->isTplBlocksDebugMode()}]
            [{oxscript include="js/widgets/oxblockdebug.js"}]
            [{oxscript add="$( 'hr.debugBlocksStart' ).oxBlockDebug();"}]
        [{/if}]

        [{oxscript}]
        [{oxid_include_dynamic file="widget/dynscript.tpl"}]

        [{foreach from=$oxidBlock_pageScript item="_block"}]
            [{$_block}]
        [{/foreach}]

        <!--[if (gte IE 6)&(lte IE 8)]>
            <script type="text/javascript" src="[{$oViewConf->getResourceUrl('js/libs/selectivizr.js')}]"></script>
            <script type="text/javascript" src="[{$oViewConf->getResourceUrl('js/IE6-8.js')}]"></script>
        <![endif]-->
    </body>
</html>
