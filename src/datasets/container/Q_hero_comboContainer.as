package datasets.container {

import datasets.bean.Q_hero_combo;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将组合
 */
public class Q_hero_comboContainer {

    private static var _list: Vector.<Q_hero_combo> = new Vector.<Q_hero_combo>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_hero_combo = new Q_hero_combo();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_name)] = bean;
        }
    }

    public static function get list(): Vector.<Q_hero_combo> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_hero_combo {
        return _dict[key.toString()];
    }
}
}
