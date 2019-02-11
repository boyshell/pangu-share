package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 建筑
 */
public class Q_building extends Bean {
    /** 建筑类型 */
    private var _q_type:int;
    /** 建筑等级 */
    private var _q_level:int;
    /** 建筑参数 */
    private var _q_param:String;

    override public function read(_buf:ByteArray): void {
        this._q_type = readInt(_buf);
        this._q_level = readInt(_buf);
        this._q_param = readString(_buf);
    }

    public function get q_type():int {
        return _q_type;
    }
    public function get q_level():int {
        return _q_level;
    }
    public function get q_param():String {
        return _q_param;
    }
}
}
