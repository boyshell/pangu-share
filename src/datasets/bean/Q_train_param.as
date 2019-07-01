package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 演武参数
 */
public class Q_train_param extends Bean {
    /** 参数id */
    private var _q_id:int;
    /** 参数值 */
    private var _q_value:String;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_value = readString(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_value():String {
        return _q_value;
    }
}
}
