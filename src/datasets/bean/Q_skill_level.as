package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 技能等级
 */
public class Q_skill_level extends Bean {
    /** 技能等级 */
    private var _q_skill_level:int;
    /** 升级所需经验 */
    private var _q_exp:int;

    override public function read(_buf:ByteArray): void {
        this._q_skill_level = readInt(_buf);
        this._q_exp = readInt(_buf);
    }

    public function get q_skill_level():int {
        return _q_skill_level;
    }
    public function get q_exp():int {
        return _q_exp;
    }
}
}
