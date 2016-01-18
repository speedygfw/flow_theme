[{assign var="template_title" value="PAGE_ACCOUNT_DASHBOARD_MYACCOUNT"|oxmultilangassign}]
[{capture append="oxidBlock_content"}]
    <div class="accountDashboardView">
        <h1 id="accountMain" class="page-header">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_MYACCOUNT"}]
            "[{$oxcmp_user->oxuser__oxusername->value}]"</h1>

        <div class="row">
            <div class="col-xs-12 col-md-6">
                [{block name="account_dashboard_col1"}]
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a id="linkAccountPassword" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_password"}]">[{oxmultilang ident="CHANGE_PASSWORD"}]</a>
                            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_password"}]" class="btn btn-default btn-xs pull-right">
                                <i class="fa fa-arrow-right"></i>
                            </a>
                        </div>
                        <div class="panel-body">[{oxmultilang ident="CHANGE_PASSWORD"}]</div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a id="linkAccountNewsletter" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_newsletter"}]">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_NEWSLETTERSETTINGS"}]</a>
                            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_newsletter"}]" class="btn btn-default btn-xs pull-right">
                                <i class="fa fa-arrow-right"></i>
                            </a>
                        </div>
                        <div class="panel-body">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_NEWSLETTERSUBSCRIBE"}]</div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a id="linkAccountBillship" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_user"}]">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_BILLINGSHIPPINGSET"}]</a>
                            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_user"}]" class="btn btn-default btn-xs pull-right">
                                <i class="fa fa-arrow-right"></i>
                            </a>
                        </div>
                        <div class="panel-body">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_UPDATEYOURBILLINGSHIPPINGSET"}]</div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a id="linkAccountOrder" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_order"}]">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_ORDERHISTORY"}]</a>
                            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_order"}]" class="btn btn-default btn-xs pull-right">
                                <i class="fa fa-arrow-right"></i>
                            </a>
                        </div>
                        <div class="panel-body">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_ORDERS"}] [{$oView->getOrderCnt()}]</div>
                    </div>
                    [{if $oView->isEnabledDownloadableFiles()}]
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a id="linkAccountDownloads" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_downloads"}]">[{oxmultilang ident="MY_DOWNLOADS"}]</a>
                                <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_downloads"}]" class="btn btn-default btn-xs pull-right">
                                    <i class="fa fa-arrow-right"></i>
                                </a>
                            </div>
                            <div class="panel-body">[{oxmultilang ident="MY_DOWNLOADS_DESC"}]</div>
                        </div>
                    [{/if}]
                [{/block}]
            </div>
            <div class="col-xs-12 col-md-6">
                [{block name="account_dashboard_col2"}]
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_noticelist"}]">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_MYNOTICELIST"}]</a>
                            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_noticelist"}]" class="btn btn-default btn-xs pull-right">
                                <i class="fa fa-arrow-right"></i>
                            </a>
                        </div>
                        <div class="panel-body">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_PRODUCT3"}] [{if $oxcmp_user}][{$oxcmp_user->getNoticeListArtCnt()}][{else}]0[{/if}]</div>
                    </div>
                    [{if $oViewConf->getShowWishlist()}]
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_wishlist"}]">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_MYWISHLIST"}]</a>
                                <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_wishlist"}]" class="btn btn-default btn-xs pull-right">
                                    <i class="fa fa-arrow-right"></i>
                                </a>
                            </div>
                            <div class="panel-body">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_PRODUCT3"}] [{if $oxcmp_user}][{$oxcmp_user->getWishListArtCnt()}][{else}]0[{/if}]</div>
                        </div>
                    [{/if}]
                    [{if $oViewConf->getShowCompareList()}]
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=compare"}]">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_MYPRODUCTCOMPARISON"}]</a>
                                <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=compare"}]" class="btn btn-default btn-xs pull-right">
                                    <i class="fa fa-arrow-right"></i>
                                </a>
                            </div>
                            <div class="panel-body">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_PRODUCT3"}] [{if $oView->getCompareItemsCnt()}][{$oView->getCompareItemsCnt()}][{else}]0[{/if}]</div>
                        </div>
                    [{/if}]
                    [{if $oViewConf->getShowListmania()}]
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_recommlist"}]">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_MYRECOMMLIST"}]</a>
                                <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_recommlist"}]" class="btn btn-default btn-xs pull-right">
                                    <i class="fa fa-arrow-right"></i>
                                </a>
                            </div>
                            <div class="panel-body">[{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_LISTS"}] [{if $oxcmp_user->getRecommListsCount()}][{$oxcmp_user->getRecommListsCount()}][{else}]0[{/if}]</div>
                        </div>
                    [{/if}]
                [{/block}]
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 text-right">
            <a href="[{$oViewConf->getLogoutLink()}]" class="btn btn-danger" role="getLogoutLink">
                <i class="fa fa-off"></i> [{oxmultilang ident="PAGE_ACCOUNT_DASHBOARD_LOGOUT"}]
            </a>
        </div>
    </div>
    [{insert name="oxid_tracker" title=$template_title}]
[{/capture}]


[{capture append="oxidBlock_sidebar"}]
    [{include file="page/account/inc/account_menu.tpl"}]
[{/capture}]
[{include file="layout/page.tpl" sidebar="Left"}]