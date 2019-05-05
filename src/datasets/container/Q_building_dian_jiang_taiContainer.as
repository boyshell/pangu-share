package datasets.container {

import datasets.bean.Q_building_dian_jiang_tai;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 点将台
 */
public class Q_building_dian_jiang_taiContainer {

    private static var _list: Vector.<Q_building_dian_jiang_tai> = new Vector.<Q_building_dian_jiang_tai>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_building_dian_jiang_tai = new Q_building_dian_jiang_tai();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_level)] = bean;
        }
    }

    public static function get list(): Vector.<Q_building_dian_jiang_tai> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_building_dian_jiang_tai {
        return _dict[key.toString()];
    }
}
}
