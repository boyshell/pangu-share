package datasets.container {

import datasets.bean.Q_building;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 建筑
 */
public class Q_buildingContainer {

    private static var _list: Vector.<Q_building> = new Vector.<Q_building>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_building = new Q_building();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_id)] = bean;
        }
    }

    public static function get list(): Vector.<Q_building> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_building {
        return _dict[key.toString()];
    }
}
}
