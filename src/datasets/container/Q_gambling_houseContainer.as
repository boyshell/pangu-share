package datasets.container {

import datasets.bean.Q_gambling_house;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 招募卡包
 */
public class Q_gambling_houseContainer {

    private static var _list: Vector.<Q_gambling_house> = new Vector.<Q_gambling_house>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_gambling_house = new Q_gambling_house();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_id)] = bean;
        }
    }

    public static function get list(): Vector.<Q_gambling_house> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_gambling_house {
        return _dict[key.toString()];
    }
}
}
