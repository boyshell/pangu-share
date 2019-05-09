package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 帮会等级
 */
public class Q_guild_level extends Bean {
    /** 等级 */
    private var _q_level:int;
    /** 人数 */
    private var _q_capacity:int;

    override public function read(_buf:ByteArray): void {
        this._q_level = readInt(_buf);
        this._q_capacity = readInt(_buf);
    }

    public function get q_level():int {
        return _q_level;
    }
    public function get q_capacity():int {
        return _q_capacity;
    }
}
}
