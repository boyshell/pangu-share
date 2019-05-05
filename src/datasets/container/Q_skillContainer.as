package datasets.container {

import datasets.bean.Q_skill;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 技能
 */
public class Q_skillContainer {

    private static var _list: Vector.<Q_skill> = new Vector.<Q_skill>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_skill = new Q_skill();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_id)] = bean;
        }
    }

    public static function get list(): Vector.<Q_skill> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_skill {
        return _dict[key.toString()];
    }
}
}
