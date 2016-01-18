[{assign var="iManufacturerLimit" value="20"}]
[{assign var="manufacturers" value=$oView->getManufacturerlist()}]
[{if $manufacturers|count}]
    [{block name="footer_manufacturers"}]
        <ul class="manufacturers list-unstyled">
            [{assign var="rootManufacturer" value=$oView->getRootManufacturer()}]
            <li><a href="[{$rootManufacturer->getLink()}]">[{oxmultilang ident="allBrands"}]</a></li>
            [{foreach from=$manufacturers item=_mnf name=manufacturers}]
                [{if $smarty.foreach.manufacturers.index < $iManufacturerLimit}]
                    <li><a href="[{$_mnf->getLink()}]" [{if $_mnf->expanded}]class="exp"[{/if}]>[{$_mnf->oxmanufacturers__oxtitle->value}]</a></li>
                [{elseif $smarty.foreach.manufacturers.index == $iManufacturerLimit}]
                    <li><a href="[{$rootManufacturer->getLink()}]">[{oxmultilang ident="WIDGET_FOOTER_MANUFACTURERS_MORE"}]</a></li>
                [{/if}]
            [{/foreach}]
        </ul>
    [{/block}]
[{/if}]