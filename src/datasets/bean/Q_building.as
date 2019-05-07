package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 建筑
 */
public class Q_building extends Bean {
    /** 建筑ID */
    private var _q_id:int;
    /** 建筑等级 */
    private var _q_level:int;
    /** 建筑类型 */
    private var _q_type:int;
    /** 建筑参数 */
    private var _q_param:String;
    /** 升级所需时间(秒) */
    private var _q_upgrade_time:int;
    /** 升级消耗资源 */
    private var _q_upgrade_cost:int;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_level = readInt(_buf);
        this._q_type = readInt(_buf);
        this._q_param = readString(_buf);
        this._q_upgrade_time = readInt(_buf);
        this._q_upgrade_cost = readInt(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_level():int {
        return _q_level;
    }
    public function get q_type():int {
        return _q_type;
    }
    public function get q_param():String {
        return _q_param;
    }
    public function get q_upgrade_time():int {
        return _q_upgrade_time;
    }
    public function get q_upgrade_cost():int {
        return _q_upgrade_cost;
    }
}
}
