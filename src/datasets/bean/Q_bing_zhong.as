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
    private var _q_name:string;
    /** 兵种图标 */
    private var _q_icon:string;
    /** 兵种系列(兵种加成) */
    private var _q_same_xi:int;
    /** 兵种系列(技能学习) */
    private var _q_skill_xi:string;
    /** 可选技能列表(可为空) */
    private var _q_skills:string;
    /** 默认技能列表(可为空) */
    private var _q_skills_default:string;

    override public function read(_buf:ByteArray): void {
        this._q_bing_zhong = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_icon = readString(_buf);
        this._q_same_xi = readInt(_buf);
        this._q_skill_xi = readString(_buf);
        this._q_skills = readString(_buf);
        this._q_skills_default = readString(_buf);
    }

    public function get q_bing_zhong():int {
        return _q_bing_zhong;
    }
    public function get q_name():string {
        return _q_name;
    }
    public function get q_icon():string {
        return _q_icon;
    }
    public function get q_same_xi():int {
        return _q_same_xi;
    }
    public function get q_skill_xi():string {
        return _q_skill_xi;
    }
    public function get q_skills():string {
        return _q_skills;
    }
    public function get q_skills_default():string {
        return _q_skills_default;
    }
}
}
