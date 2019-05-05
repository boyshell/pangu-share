package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 兵种系
 */
public class Q_bing_zhong_xi extends Bean {
    /** 系列ID */
    private var _q_xi:int;
    /** 2武将兵种系相同的技能 */
    private var _q_skill2:int;
    /** 3武将兵种系相同的技能 */
    private var _q_skill3:int;

    override public function read(_buf:ByteArray): void {
        this._q_xi = readInt(_buf);
        this._q_skill2 = readInt(_buf);
        this._q_skill3 = readInt(_buf);
    }

    public function get q_xi():int {
        return _q_xi;
    }
    public function get q_skill2():int {
        return _q_skill2;
    }
    public function get q_skill3():int {
        return _q_skill3;
    }
}
}
