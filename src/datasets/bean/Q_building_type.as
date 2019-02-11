package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 建筑类型
 */
public class Q_building_type extends Bean {
    /** 建筑类型 */
    private var _q_type:int;
    /** 建筑名字 */
    private var _q_name:String;

    override public function read(_buf:ByteArray): void {
        this._q_type = readInt(_buf);
        this._q_name = readString(_buf);
    }

    public function get q_type():int {
        return _q_type;
    }
    public function get q_name():String {
        return _q_name;
    }
}
}
