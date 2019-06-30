package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 签到
 */
public class Q_sign extends Bean {
    /** 签到id */
    private var _q_id:int;
    /** 次数 */
    private var _q_times:int;
    /** 道具ID */
    private var _q_item:int;
    /** 道具数量 */
    private var _q_item_num:int;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_times = readInt(_buf);
        this._q_item = readInt(_buf);
        this._q_item_num = readInt(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_times():int {
        return _q_times;
    }
    public function get q_item():int {
        return _q_item;
    }
    public function get q_item_num():int {
        return _q_item_num;
    }
}
}
