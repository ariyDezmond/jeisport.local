<form id="back_call_form" action="javascript:" method="post">
    <input <?php
    if (strpos(validation_errors(), '"Имя"')) {
        echo 'style="border-color:red;"';
    }
    ?> name="name" value="<?= set_value('name') ?>" type="text" placeholder="Введите имя">
    <input <?php
    if (strpos(validation_errors(), '"Телефон"')) {
        echo 'style="border-color:red;"';
    }
    ?> name="phone" value="<?= set_value('phone') ?>" type="text" placeholder="Введите телефон">
    <input type="hidden" name="do" value="sendbackcall">
    <input id="point_input_url" type="hidden" name="point_url" value="">
    <input type="button" value="Отправить" onclick="javascript:sendbackcall()">
</form>