package datasets.container {

import datasets.bean.Q_train;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 演武
 */
public class Q_trainContainer {

    private static var _list: Vector.<Q_train> = new Vector.<Q_train>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_train = new Q_train();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_difficulty)] = bean;
        }
    }

    public static function get list(): Vector.<Q_train> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_train {
        return _dict[key.toString()];
    }
}
}
