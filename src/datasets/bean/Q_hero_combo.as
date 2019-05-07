package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将组合
 */
public class Q_hero_combo extends Bean {
    /** 组合名称 */
    private var _q_name:String;
    /** 组合技能 */
    private var _q_skill:int;
    /** 武将卡列表 */
    private var _q_heroes:String;

    override public function read(_buf:ByteArray): void {
        this._q_name = readString(_buf);
        this._q_skill = readInt(_buf);
        this._q_heroes = readString(_buf);
    }

    public function get q_name():String {
        return _q_name;
    }
    public function get q_skill():int {
        return _q_skill;
    }
    public function get q_heroes():String {
        return _q_heroes;
    }
}
}
