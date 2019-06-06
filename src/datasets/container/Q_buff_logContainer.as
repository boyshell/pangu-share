package datasets.container {

import datasets.bean.Q_buff_log;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * buff日志
 */
public class Q_buff_logContainer {

    private static var _list: Vector.<Q_buff_log> = new Vector.<Q_buff_log>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_buff_log = new Q_buff_log();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_log_type)] = bean;
        }
    }

    public static function get list(): Vector.<Q_buff_log> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_buff_log {
        return _dict[key.toString()];
    }
}
}
