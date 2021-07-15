[{assign var="sender_name" value=$userinfo->send_name}]
[{assign var="shop_name" value=$shop->oxshops__oxname->getRawValue()}]
[{assign var="invite_array" value='|del|'|explode:"$sender_name|del|$shop_name"}]
[{oxmultilang ident="INVITE_TO_SHOP" args=$invite_array}]
[{oxmultilang ident="FROM" suffix="COLON"}] [{$userinfo->send_name}]
[{oxmultilang ident="EMAIL" suffix="COLON"}] [{$userinfo->send_email}]

[{$userinfo->send_message}]

[{$sHomeUrl}]

[{oxmultilang ident="MANY_GREETINGS"}] [{$userinfo->send_name}]

[{oxcontent ident="oxemailfooterplain"}]
