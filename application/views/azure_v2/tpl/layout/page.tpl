[{capture append="oxidBlock_pageBody"}]
    [{if $oView->showRDFa()}]
        [{include file="rdfa/rdfa.tpl"}]
    [{/if}]

    [{include file="layout/header.tpl"}]

    [{assign var="blFullwidth" value=$oViewConf->getViewThemeParam('blFullwidthLayout')}]

    <div id="wrapper" [{if $sidebar}]class="sidebar[{$sidebar}]"[{/if}]>

        [{$smarty.capture.loginErrors}]

        <div class="[{if $blFullwidth}]container[{else}]container-fluid[{/if}]">

            <div class="underdog">

                <div class="row">

                    [{if $oView->getClassName()=='start' && $oView->getBanners()|@count > 0}]
                        [{include file="widget/promoslider.tpl"}]
                    [{/if}]

                </div>

                <div class="content-box">

                    [{if $oView->getClassName() != "start" && !$blHideBreadcrumb}]
                        [{include file="widget/breadcrumb.tpl"}]
                    [{/if}]

                    <div class="row">
                        [{if $sidebar && $sidebar != "Right"}]
                            <div class="col-xs-12 col-md-3 [{$oView->getClassName()}]">
                                <div id="sidebar">
                                    [{include file="layout/sidebar.tpl"}]
                                </div>
                            </div>
                        [{/if}]

                        <div class="col-xs-12 [{if $sidebar}]col-md-9[{/if}]">

                            <div id="content">
                                [{include file="message/errors.tpl"}]

                                [{foreach from=$oxidBlock_content item="_block"}]
                                    [{$_block}]
                                [{/foreach}]
                            </div>

                        </div>

                        [{if $sidebar && $sidebar == "Right"}]
                            <div class="col-xs-12 col-md-3 [{$oView->getClassName()}]">
                                <div id="sidebar">
                                    [{include file="layout/sidebar.tpl"}]
                                </div>
                            </div>
                        [{/if}]
                    </div>

                </div>

            </div>

        </div>

    </div>

    [{include file="layout/footer.tpl"}]

    [{include file="widget/facebook/init.tpl"}]
    [{if $oView->isPriceCalculated()}]
        [{block name="layout_page_vatinclude"}]
            [{oxifcontent ident="oxdeliveryinfo" object="oCont"}]
                <div id="incVatMessage" class="small">
                    [{if $oView->isVatIncluded()}]
                        * <span class="deliveryInfo">[{oxmultilang ident="PLUS_SHIPPING"}]<a href="[{$oCont->getLink()}]">[{oxmultilang ident="PLUS_SHIPPING2"}]</a></span>
                    [{else}]
                        * <span class="deliveryInfo">[{oxmultilang ident="PLUS"}]<a href="[{$oCont->getLink()}]">[{oxmultilang ident="PLUS_SHIPPING2"}]</a></span>
                    [{/if}]
                </div>
            [{/oxifcontent}]
        [{/block}]
    [{/if}]

    <i class="fa fa-chevron-circle-up icon-4x" id="jumptotop"></i>
[{/capture}]
[{include file="layout/base.tpl"}]