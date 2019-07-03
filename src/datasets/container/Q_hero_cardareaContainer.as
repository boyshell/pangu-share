package datasets.container {

import datasets.bean.Q_hero_cardarea;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 卡片显示区域配置
 */
public class Q_hero_cardareaContainer {

    private static var _list: Vector.<Q_hero_cardarea> = new Vector.<Q_hero_cardarea>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_hero_cardarea = new Q_hero_cardarea();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_id)] = bean;
        }
    }

    public static function get list(): Vector.<Q_hero_cardarea> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_hero_cardarea {
        return _dict[key.toString()];
    }
}
}
