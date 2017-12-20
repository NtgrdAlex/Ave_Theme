{extends file='parent:frontend/index/footer.tpl'}
{* Footer menu *}
{block name='frontend_index_footer_menu' append}
    <div class="footer--columns block-group">
		{include file='frontend/index/footer-navigation-secondRow.tpl'}
    </div>
{/block}


{* Shopware footer *}
        {block name="frontend_index_shopware_footer"}
        {/block}