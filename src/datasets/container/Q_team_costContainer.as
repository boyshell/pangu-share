package datasets.container {

import datasets.bean.Q_team_cost;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 征兵及维护资源消耗
 */
public class Q_team_costContainer {

    private static var _list: Vector.<Q_team_cost> = new Vector.<Q_team_cost>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_team_cost = new Q_team_cost();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_country)] = bean;
        }
    }

    public static function get list(): Vector.<Q_team_cost> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_team_cost {
        return _dict[key.toString()];
    }
}
}
