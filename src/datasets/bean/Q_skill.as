package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 技能
 */
public class Q_skill extends Bean {
    /** 技能ID */
    private var _q_id:int;
    /** 技能名字 */
    private var _q_name:String;
    /** 研究所需 */
    private var _q_research_hero:String;
    /** 研究提升进度 */
    private var _q_research_progress:int;
    /** 可装备数量 */
    private var _q_count:int;
    /** 拆解所需技能经验 */
    private var _q_chaijie_exp:int;
    /** 目标类型 */
    private var _q_target_type:int;
    /** 目标距离 */
    private var _q_target_distance:int;
    /** 目标数量 */
    private var _q_target_num:int;
    /** 添加的buff */
    private var _q_buffs:String;
    /** 伤害公式 */
    private var _q_damage_formula:String;
    /** 触发概率 */
    private var _q_trigger_prob:int;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_research_hero = readString(_buf);
        this._q_research_progress = readInt(_buf);
        this._q_count = readInt(_buf);
        this._q_chaijie_exp = readInt(_buf);
        this._q_target_type = readInt(_buf);
        this._q_target_distance = readInt(_buf);
        this._q_target_num = readInt(_buf);
        this._q_buffs = readString(_buf);
        this._q_damage_formula = readString(_buf);
        this._q_trigger_prob = readInt(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_name():String {
        return _q_name;
    }
    public function get q_research_hero():String {
        return _q_research_hero;
    }
    public function get q_research_progress():int {
        return _q_research_progress;
    }
    public function get q_count():int {
        return _q_count;
    }
    public function get q_chaijie_exp():int {
        return _q_chaijie_exp;
    }
    public function get q_target_type():int {
        return _q_target_type;
    }
    public function get q_target_distance():int {
        return _q_target_distance;
    }
    public function get q_target_num():int {
        return _q_target_num;
    }
    public function get q_buffs():String {
        return _q_buffs;
    }
    public function get q_damage_formula():String {
        return _q_damage_formula;
    }
    public function get q_trigger_prob():int {
        return _q_trigger_prob;
    }
}
}
