package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 演武
 */
public class Q_train extends Bean {
    /** 演武难度 */
    private var _q_difficulty:int;
    /** 挑战所需铜币 */
    private var _q_copper:int;

    override public function read(_buf:ByteArray): void {
        this._q_difficulty = readInt(_buf);
        this._q_copper = readInt(_buf);
    }

    public function get q_difficulty():int {
        return _q_difficulty;
    }
    public function get q_copper():int {
        return _q_copper;
    }
}
}
