[{assign var="blFirstTab" value=true}]

[{block name="details_tabs_longdescription"}]
    [{oxhasrights ident="SHOWLONGDESCRIPTION"}]
        [{assign var="oLongdesc" value=$oDetailsProduct->getLongDescription()}]
        [{if $oLongdesc->value}]
            [{capture append="tabs"}]<a href="#description" data-toggle="tab">[{oxmultilang ident="PAGE_DETAILS_TABS_DESCRIPTION"}]</a>[{/capture}]
            [{capture append="tabsContent"}]
                <div id="description" class="tab-pane[{if $blFirstTab}] active[{/if}]" itemprop="description">
                    [{oxeval var=$oLongdesc}]
                    [{if $oDetailsProduct->oxarticles__oxexturl->value}]
                        <a id="productExturl" class="js-external" href="http://[{$oDetailsProduct->oxarticles__oxexturl->value}]">
                        [{if $oDetailsProduct->oxarticles__oxurldesc->value}]
                            [{$oDetailsProduct->oxarticles__oxurldesc->value}]
                        [{else}]
                            [{$oDetailsProduct->oxarticles__oxexturl->value}]
                        [{/if}]
                        </a>
                    [{/if}]
                </div>
            [{/capture}]
            [{assign var="blFirstTab" value=false}]
        [{/if}]
    [{/oxhasrights}]
[{/block}]

[{block name="details_tabs_attributes"}]
    [{if $oView->getAttributes()}]
        [{capture append="tabs"}]<a href="#attributes" data-toggle="tab">[{oxmultilang ident="DETAILS_SPECIFICATION"}]</a>[{/capture}]
        [{capture append="tabsContent"}]
            <div id="attributes" class="tab-pane[{if $blFirstTab}] active[{/if}]">[{include file="page/details/inc/attributes.tpl"}]</div>
            [{assign var="blFirstTab" value=false}]
        [{/capture}]
    [{/if}]
[{/block}]

[{block name="details_tabs_pricealarm"}]
    [{if $oView->isPriceAlarm() && !$oDetailsProduct->isParentNotBuyable()}]
        [{capture append="tabs"}]<a href="#pricealarm" data-toggle="tab">[{oxmultilang ident="DETAILS_PRICEALARM"}]</a>[{/capture}]
        [{capture append="tabsContent"}]
            <div id="pricealarm" class="tab-pane[{if $blFirstTab}] active[{/if}]">[{include file="form/pricealarm.tpl"}]</div>
            [{assign var="blFirstTab" value=false}]
        [{/capture}]
    [{/if}]
[{/block}]

[{block name="details_tabs_tags"}]
    [{if $oView->showTags() && ( $oView->getTagCloudManager() || ( ( $oView->getTagCloudManager() || $oxcmp_user) && $oDetailsProduct ) )}]
        [{capture append="tabs"}]<a href="#tags" data-toggle="tab">[{oxmultilang ident="PAGE_DETAILS_TABS_TAGS"}]</a>[{/capture}]
        [{capture append="tabsContent"}]
            <div id="tags" class="tab-pane[{if $blFirstTab}] active[{/if}]">[{oxid_include_dynamic file="page/details/inc/tags.tpl"}]</div>
            [{assign var="blFirstTab" value=false}]
        [{/capture}]
    [{/if}]
[{/block}]

[{block name="details_tabs_media"}]
    [{if $oView->getMediaFiles() || $oDetailsProduct->oxarticles__oxfile->value}]
        [{capture append="tabs"}]<a href="#media" data-toggle="tab">[{oxmultilang ident="PAGE_DETAILS_TABS_MEDIA"}]</a>[{/capture}]
        [{capture append="tabsContent"}]
            <div id="media" class="tab-pane[{if $blFirstTab}] active[{/if}]">[{include file="page/details/inc/media.tpl"}]</div>
            [{assign var="blFirstTab" value=false}]
        [{/capture}]
    [{/if}]
[{/block}]

[{block name="details_tabs_fbcomments"}]
    [{if $oView->isActive('FbComments') && $oViewConf->getFbAppId()}]
        [{capture append="tabs"}]<a href="#productFbComments" data-toggle="tab">[{oxmultilang ident="FACEBOOK_COMMENTS"}]</a>[{/capture}]
        [{assign var='_fbScript' value="http://connect.facebook.net/en_US/all.js#appId="|cat:$oViewConf->getFbAppId()|cat:"&amp;xfbml=1"}]
        [{capture append="tabsContent"}]
            <div id="productFbComments" class="tab-pane[{if $blFirstTab}] active[{/if}]">[{include file="widget/facebook/enable.tpl" source="widget/facebook/comments.tpl" ident="#productFbComments" script=$_fbScript}]</div>
            [{assign var="blFirstTab" value=false}]
        [{/capture}]
    [{/if}]
[{/block}]

[{block name="details_tabs_fbinvite"}]
    [{if $oView->isActive('FbInvite') && $oViewConf->getFbAppId()}]
        [{capture append="tabs"}]<a href="#productFbInvite" data-toggle="tab">[{oxmultilang ident="FACEBOOK_INVITE"}]</a>[{/capture}]
        [{capture append="tabsContent"}]
            <div id="productFbInvite" class="tab-pane[{if $blFirstTab}] active[{/if}]">
                <fb:serverfbml width="560px" id="productFbInviteFbml">
                    [{include file="widget/facebook/enable.tpl" source="widget/facebook/invite.tpl" ident="#productFbInviteFbml" type="text"}]
                </fb:serverfbml>
            </div>
            [{assign var="blFirstTab" value=false}]
        [{/capture}]
    [{/if}]
[{/block}]

[{block name="details_tabs_main"}]
    [{if $tabs}]
        <div class="tabbedWidgetBox clear">
            <ul id="itemTabs" class="nav nav-tabs">
                [{foreach from=$tabs item="tab" name="tabs"}]
                    <li[{if $smarty.foreach.tabs.first}] class="active"[{/if}]>[{$tab}]</li>
                [{/foreach}]
            </ul>
            <div class="tab-content">
                [{foreach from=$tabsContent item="tabContent" name="tabsContent"}]
                    [{$tabContent}]
                [{/foreach}]
            </div>
        </div>
    [{/if}]
[{/block}]