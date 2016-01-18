[{if $oxcmp_shop->oxshops__oxproductive->value}]
    [{oxscript include="js/libs/jqBootstrapValidation.min.js" priority=10}]
[{else}]
    [{oxscript include="js/libs/jqBootstrapValidation.js" priority=10}]
[{/if}]
[{oxscript add="$('input,select,textarea').not('[type=submit]').jqBootstrapValidation();"}]

<form class="form-horizontal" action="[{$oViewConf->getSelfActionLink()}]" name="forgotpwd" method="post" role="form"  novalidate="novalidate">
    [{assign var="aErrors" value=$oView->getFieldValidationErrors()}]
    <div class="hidden">
        [{$oViewConf->getHiddenSid()}]
        [{$oViewConf->getNavFormParams()}]
        <input type="hidden" name="fnc" value="updatePassword">
        <input type="hidden" name="uid" value="[{$oView->getUpdateId()}]">
        <input type="hidden" name="cl" value="forgotpwd">
        <input type="hidden" id="passwordLength" value="[{$oViewConf->getPasswordLength()}]">
    </div>

    <div class="form-group[{if $aErrors.oxuser__oxpassword}] oxInValid[{/if}]">
        <label class="control-label col-sm-3">[{oxmultilang ident="PAGE_ACCOUNT_FORGOTPWD_NEWPASSWORD"}]</label>
        <div class="col-md-9">
            <input type="password" name="password_new" class="form-control js-oxValidate js-oxValidate_notEmpty js-oxValidate_length js-oxValidate_match textbox">
        </div>
        <p class="help-block"></p>
    </div>
    <div class="form-group [{if $aErrors.oxuser__oxpassword}] oxInValid[{/if}]">
        <label class="control-label col-md-3">[{oxmultilang ident="PAGE_ACCOUNT_FORGOTPWD_CONFIRMPASSWORD"}]</label>
        <div class="col-md-9">
            <input type="password" name="password_new_confirm" class="form-control js-oxValidate js-oxValidate_notEmpty js-oxValidate_length js-oxValidate_match textbox">
        </div>
        <p class="help-block"></p>
    </div>
    <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <button class="btn btn-primary submitButton" type="submit" name="save" value="[{oxmultilang ident="PAGE_ACCOUNT_FORGOTPWD_UPDATEPASSWORD"}]">[{oxmultilang ident="PAGE_ACCOUNT_FORGOTPWD_UPDATEPASSWORD"}]</button>
        </div>
    </div>
</form>