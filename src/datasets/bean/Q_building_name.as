package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 建筑名
 */
public class Q_building_name extends Bean {
    /** 建筑ID */
    private var _q_id:int;
    /** 建筑名 */
    private var _q_name:String;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_name = readString(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_name():String {
        return _q_name;
    }
}
}
