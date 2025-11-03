##インベントリにアイテムを設置
#アイテムを設置
    $item replace entity @s container.$(Slot) with $(id) $(count)
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].components run function save_inv:load/inventory/set_components with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0]
#まだあるなら再帰
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].Slot run function save_inv:load/inventory/_ with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0]