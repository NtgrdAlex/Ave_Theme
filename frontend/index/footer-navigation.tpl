
{block name="frontend_index_footer_column_newsletter"}
    <div class="footer--column column--newsletter block">
        {block name="frontend_index_footer_column_newsletter_headline"}
            <div class="column--headline">{s name="sFooterNewsletterHead"}{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_newsletter_content"}
            <div class="column--content">
                <p class="column--desc">
                    {s name="sFooterNewsletter"}{/s}
                </p>

                {block name="frontend_index_footer_column_newsletter_form"}
                    <form class="newsletter--form" action="{url controller='newsletter'}" method="post">
                        <input type="hidden" value="1" name="subscribeToNewsletter" />

                        {block name="frontend_index_footer_column_newsletter_form_field"}
                            <input type="email" name="newsletter" class="newsletter--field" placeholder="{s name="IndexFooterNewsletterValue"}{/s}" />
                            {if {config name="newsletterCaptcha"} !== "nocaptcha"}
                                <input type="hidden" name="redirect">
                            {/if}
                        {/block}

                        {block name="frontend_index_footer_column_newsletter_form_submit"}
                            <button type="submit" class="newsletter--button btn">
                                <i class="icon--mail"></i> <span class="button--text">{s name='IndexFooterNewsletterSubmit'}{/s}</span>
                            </button>
                        {/block}
                    </form>
                {/block}
            </div>
        {/block}
    </div>
{/block}
		
{* Social Media *}
{block name="frontend_index_footer_column_service_hotline"}
    <div class="footer--column column--hotline block">
        {block name="frontend_index_footer_column_service_hotline_headline"}
            <div class="column--headline">{s name="sFooterSocialHeadline"}{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_hotline_content"}
            <div class="column--content">
                <p class="column--desc">{s name="sFooterSocialContent"}{/s}</p>
            </div>
        {/block}
    </div>
{/block}

		
{* Unsere Zahlungsarten *}
{block name="frontend_index_footer_column_service_hotline"}
    <div class="footer--column column--hotline block">
        {block name="frontend_index_footer_column_service_hotline_headline"}
            <div class="column--headline">{s name="sFooterPaymentHead"}{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_hotline_content"}
            <div class="column--content">
                <p class="column--desc">{s name="sFooterPaymentContent"}{/s}</p>
            </div>
        {/block}
    </div>
{/block}

		
{* Unsere Versandarten *}
{block name="frontend_index_footer_column_service_hotline"}
    <div class="footer--column column--hotline block">
        {block name="frontend_index_footer_column_service_hotline_headline"}
            <div class="column--headline">{s name="sFooterShippingHead"}{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_hotline_content"}
            <div class="column--content">
                <p class="column--desc">{s name="sFooterShippingContent"}{/s}</p>
            </div>
        {/block}
    </div>
{/block}


