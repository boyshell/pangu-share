package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 道具
 */
public class Q_item extends Bean {
    /** 道具ID */
    private var _q_id:int;
    /** 类型 */
    private var _q_type:int;
    /** 参数 */
    private var _q_param:String;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_type = readInt(_buf);
        this._q_param = readString(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_type():int {
        return _q_type;
    }
    public function get q_param():String {
        return _q_param;
    }
}
}
