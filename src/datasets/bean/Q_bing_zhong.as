package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将兵种
 */
public class Q_bing_zhong extends Bean {
    /** 兵种 */
    private var _q_bing_zhong:int;
    /** 兵种名字 */
    private var _q_name:String;
    /** 兵种系列(兵种加成) */
    private var _q_same_xi:int;
    /** 兵种系列(技能学习) */
    private var _q_skill_xi:String;
    /** 可选技能列表(可为空) */
    private var _q_skills:String;
    /** 默认技能列表(可为空) */
    private var _q_skills_default:String;

    override public function read(_buf:ByteArray): void {
        this._q_bing_zhong = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_same_xi = readInt(_buf);
        this._q_skill_xi = readString(_buf);
        this._q_skills = readString(_buf);
        this._q_skills_default = readString(_buf);
    }

    public function get q_bing_zhong():int {
        return _q_bing_zhong;
    }
    public function get q_name():String {
        return _q_name;
    }
    public function get q_same_xi():int {
        return _q_same_xi;
    }
    public function get q_skill_xi():String {
        return _q_skill_xi;
    }
    public function get q_skills():String {
        return _q_skills;
    }
    public function get q_skills_default():String {
        return _q_skills_default;
    }
}
}
