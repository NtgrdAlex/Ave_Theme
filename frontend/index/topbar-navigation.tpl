{extends file='parent:frontend/index/topbar-navigation.tpl'}

{block name="frontend_index_checkout_actions_service_menu" prepend}
 <div class="navigation--entry entry--service has--drop-down" role="menuitem" aria-haspopup="true" data-drop-down-menu="true">
                                <i class="icon--new"></i> {s namespace='frontend/index/checkout_actions' name='IndexLinkSpecials'}{/s}

                                {* Include of the widget *}
                                {block name="frontend_index_checkout_actions_service_menu_include"}
                                    {include file="widgets/index/menu.tpl" sGroup=gBottom2}
                                {/block}
                            </div>
{/block}