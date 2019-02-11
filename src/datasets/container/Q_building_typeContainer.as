package datasets.container {

import datasets.bean.Q_building_type;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 建筑类型
 */
public class Q_building_typeContainer {

    private static var _list: Vector.<Q_building_type> = new Vector.<Q_building_type>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_building_type = new Q_building_type();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_type)] = bean;
        }
    }

    public static function get list(): Vector.<Q_building_type> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_building_type {
        return _dict[key.toString()];
    }
}
}
