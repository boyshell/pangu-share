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
    private var _q_name:string;
    /** 描述 */
    private var _q_desc:string;
    /** 技能图标 */
    private var _q_icon:int;
    /** 所属大类(0攻击   1谋略  2恢复   3辅助) */
    private var _q_tab:int;
    /** 研究所需 */
    private var _q_research_hero:string;
    /** 研究提升进度 */
    private var _q_research_progress:int;
    /** 可装备数量 */
    private var _q_count:int;
    /** 拆解所需技能经验 */
    private var _q_chaijie_exp:int;
    /** 技能目标描述 */
    private var _q_target_type_desc:string;
    /** 准备回合数 */
    private var _q_prepare_round:int;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_desc = readString(_buf);
        this._q_icon = readInt(_buf);
        this._q_tab = readInt(_buf);
        this._q_research_hero = readString(_buf);
        this._q_research_progress = readInt(_buf);
        this._q_count = readInt(_buf);
        this._q_chaijie_exp = readInt(_buf);
        this._q_target_type_desc = readString(_buf);
        this._q_prepare_round = readInt(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_name():string {
        return _q_name;
    }
    public function get q_desc():string {
        return _q_desc;
    }
    public function get q_icon():int {
        return _q_icon;
    }
    public function get q_tab():int {
        return _q_tab;
    }
    public function get q_research_hero():string {
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
    public function get q_target_type_desc():string {
        return _q_target_type_desc;
    }
    public function get q_prepare_round():int {
        return _q_prepare_round;
    }
}
}
