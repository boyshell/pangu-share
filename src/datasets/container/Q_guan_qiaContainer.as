package datasets.container {

import datasets.bean.Q_guan_qia;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 关卡
 */
public class Q_guan_qiaContainer {

    private static var _list: Vector.<Q_guan_qia> = new Vector.<Q_guan_qia>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_guan_qia = new Q_guan_qia();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_id)] = bean;
        }
    }

    public static function get list(): Vector.<Q_guan_qia> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_guan_qia {
        return _dict[key.toString()];
    }
}
}
