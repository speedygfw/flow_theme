[{if $oxcmp_shop->oxshops__oxproductive->value}]
    [{oxscript include="js/libs/jqBootstrapValidation.min.js" priority=10}]
[{else}]
    [{oxscript include="js/libs/jqBootstrapValidation.js" priority=10}]
[{/if}]
[{oxscript add="$('input,select,textarea').not('[type=submit]').jqBootstrapValidation();"}]
<div class="row">
    <div class="col-xs-12 col-md-6 pull-right">
        <div class="panel panel-default">
            <div class="panel-heading">[{oxmultilang ident="DD_LOGIN_ACCOUNT_PANEL_LOGIN_TITLE"}]</div>
            <div class="panel-body">
                <form name="login" class="js-oxValidate form-horizontal" action="[{$oViewConf->getSslSelfLink()}]" method="post" novalidate="novalidate">
                    <div class="hidden">
                        [{$oViewConf->getHiddenSid()}]
                        [{$oViewConf->getNavFormParams()}]
                        <input type="hidden" name="fnc" value="login_noredirect">
                        <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
                        <input type="hidden" name="tpl" value="[{$oViewConf->getActTplName()}]">
                        <input type="hidden" name="oxloadid" value="[{$oViewConf->getActContentLoadId()}]">
                        [{if $oView->getArticleId()}]
                            <input type="hidden" name="aid" value="[{$oView->getArticleId()}]">
                        [{/if}]
                        [{if $oView->getProduct()}]
                            [{assign var="product" value=$oView->getProduct()}]
                            <input type="hidden" name="anid" value="[{$product->oxarticles__oxnid->value}]">
                        [{/if}]
                    </div>

                    <p>[{oxmultilang ident="PAGE_ACCOUNT_INC_LOGIN_ALREADYCUSTOMER"}]</p>

                    <div class="form-group[{if $aErrors}] oxInValid[{/if}]">
                        <label class="req control-label col-lg-2">[{oxmultilang ident="FORM_LOGIN_ACCOUNT_EMAIL"}]</label>
                        <div class="col-lg-10">
                            <input id="loginUser" class="js-oxValidate js-oxValidate_notEmpty form-control" type="text" name="lgn_usr" role="loginUser" required="required">
                            <div class="help-block"></div></div>
                    </div>
                    <div class="form-group[{if $aErrors}] oxInValid[{/if}]">
                        <label class="req control-label col-lg-2">[{oxmultilang ident="FORM_LOGIN_ACCOUNT_PWD"}]</label>
                        <div class="col-lg-10">
                            <input id="loginPwd" class="js-oxValidate js-oxValidate_notEmpty  form-control" type="password" name="lgn_pwd" role="loginPwd" required="required">
                            <div class="help-block"></div></div>
                    </div>
                    [{if $oView->showRememberMe()}]
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" class="checkbox" name="lgn_cook" value="1"> [{oxmultilang ident="FORM_LOGIN_ACCOUNT_KEEPLOGGEDIN"}]
                                    </label>
                                </div>
                            </div>
                        </div>
                    [{/if}]

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button id="loginButton" type="submit" class="btn btn-primary btn-block" role="loginButton">[{oxmultilang ident="FORM_LOGIN_ACCOUNT_LOGIN"}]</button>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <a id="forgotPasswordLink" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=forgotpwd"}]" class="textLink">[{oxmultilang ident="FORM_LOGIN_ACCOUNT_FORGOTPWD"}]</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="col-xs-12 col-md-6 pull-left">
        <div class="panel panel-default">
            <div class="panel-heading">[{oxmultilang ident="DD_LOGIN_ACCOUNT_PANEL_CREATE_TITLE"}]</div>
            <div class="panel-body">
                <p>[{oxmultilang ident="DD_LOGIN_ACCOUNT_PANEL_CREATE_BODY"}]</p>
                <a id="openAccountLink" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=register"}]" class="btn btn-primary btn-block" role="button">[{oxmultilang ident="FORM_LOGIN_ACCOUNT_OPENACCOUNT"}]</a><br />
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>