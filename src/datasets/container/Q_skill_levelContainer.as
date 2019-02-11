package datasets.container {

import datasets.bean.Q_skill_level;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 技能等级
 */
public class Q_skill_levelContainer {

    private static var _list: Vector.<Q_skill_level> = new Vector.<Q_skill_level>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_skill_level = new Q_skill_level();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_skill_level)] = bean;
        }
    }

    public static function get list(): Vector.<Q_skill_level> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_skill_level {
        return _dict[key.toString()];
    }
}
}
