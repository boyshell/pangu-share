package datasets.container {

import datasets.bean.Q_hero_star;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将星
 */
public class Q_hero_starContainer {

    private static var _list: Vector.<Q_hero_star> = new Vector.<Q_hero_star>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_hero_star = new Q_hero_star();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_hero_star)] = bean;
        }
    }

    public static function get list(): Vector.<Q_hero_star> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_hero_star {
        return _dict[key.toString()];
    }
}
}
