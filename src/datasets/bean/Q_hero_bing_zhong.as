package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将兵种
 */
public class Q_hero_bing_zhong extends Bean {
    /** 兵种 */
    private var _q_bing_zhong:int;
    /** 可选技能列表(可为空) */
    private var _q_skills:String;
    /** 默认技能列表(可为空) */
    private var _q_skills_default:String;
    /** 2武将同兵种加成技能 */
    private var _q_same_2:int;
    /** 3武将同兵种加成技能 */
    private var _q_same_3:int;

    override public function read(_buf:ByteArray): void {
        this._q_bing_zhong = readInt(_buf);
        this._q_skills = readString(_buf);
        this._q_skills_default = readString(_buf);
        this._q_same_2 = readInt(_buf);
        this._q_same_3 = readInt(_buf);
    }

    public function get q_bing_zhong():int {
        return _q_bing_zhong;
    }
    public function get q_skills():String {
        return _q_skills;
    }
    public function get q_skills_default():String {
        return _q_skills_default;
    }
    public function get q_same_2():int {
        return _q_same_2;
    }
    public function get q_same_3():int {
        return _q_same_3;
    }
}
}
