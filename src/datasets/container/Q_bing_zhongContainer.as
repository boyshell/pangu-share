package datasets.container {

import datasets.bean.Q_bing_zhong;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将兵种
 */
public class Q_bing_zhongContainer {

    private static var _list: Vector.<Q_bing_zhong> = new Vector.<Q_bing_zhong>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_bing_zhong = new Q_bing_zhong();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_bing_zhong)] = bean;
        }
    }

    public static function get list(): Vector.<Q_bing_zhong> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_bing_zhong {
        return _dict[key.toString()];
    }
}
}
