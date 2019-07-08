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
    /** 描述 */
    private var _q_desc:String;
    /** 所属大类 */
    private var _q_tab:int;
    /** 可装备数量 */
    private var _q_count:int;
    /** 技能目标描述 */
    private var _q_target_type_desc:String;
    /** 技能类型 */
    private var _q_type:int;
    /** 触发概率 */
    private var _q_trigger_prob:String;
    /** 可学习兵种 */
    private var _q_bing_zhong:String;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_desc = readString(_buf);
        this._q_tab = readInt(_buf);
        this._q_count = readInt(_buf);
        this._q_target_type_desc = readString(_buf);
        this._q_type = readInt(_buf);
        this._q_trigger_prob = readString(_buf);
        this._q_bing_zhong = readString(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_name():String {
        return _q_name;
    }
    public function get q_desc():String {
        return _q_desc;
    }
    public function get q_tab():int {
        return _q_tab;
    }
    public function get q_count():int {
        return _q_count;
    }
    public function get q_target_type_desc():String {
        return _q_target_type_desc;
    }
    public function get q_type():int {
        return _q_type;
    }
    public function get q_trigger_prob():String {
        return _q_trigger_prob;
    }
    public function get q_bing_zhong():String {
        return _q_bing_zhong;
    }
}
}
