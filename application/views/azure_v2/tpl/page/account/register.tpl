[{capture append="oxidBlock_pageBody"}]
    [{if $oView->isEnabledPrivateSales()}]
        [{oxid_include_widget cl="oxwCookieNote" _parent=$oView->getClassName() nocookie=1}]
    [{/if}]
[{/capture}]

[{capture append="oxidBlock_content"}]
    [{assign var="template_title" value="PAGE_ACCOUNT_REGISTER_OPENACCOUNT"|oxmultilangassign}]
    [{if $oView->isActive('PsLogin')}]
        [{include file="message/errors.tpl"}]
    [{/if}]

    <h1 id="openAccHeader" class="page-header">[{oxmultilang ident="PAGE_ACCOUNT_REGISTER_OPENACCOUNT"}]</h1>
    [{include file="form/register.tpl"}]

    [{insert name="oxid_tracker" title=$template_title}]
[{/capture}]

[{if $oView->isActive('PsLogin')}]
    [{include file="layout/popup.tpl"}]
[{else}]
    [{include file="layout/page.tpl" sidebar="Right"}]
[{/if}]