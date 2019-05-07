package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 关卡
 */
public class Q_guan_qia extends Bean {
    /** 关卡ID */
    private var _q_id:int;
    /** 章节ID */
    private var _q_chapter:int;
    /** 铜币产量 */
    private var _q_copper:int;
    /** 资源产量 */
    private var _q_resource:int;
    /** 经验 */
    private var _q_exp:int;
    /** 阵容(对应q_robot.q_id) */
    private var _q_heroes:String;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_chapter = readInt(_buf);
        this._q_copper = readInt(_buf);
        this._q_resource = readInt(_buf);
        this._q_exp = readInt(_buf);
        this._q_heroes = readString(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_chapter():int {
        return _q_chapter;
    }
    public function get q_copper():int {
        return _q_copper;
    }
    public function get q_resource():int {
        return _q_resource;
    }
    public function get q_exp():int {
        return _q_exp;
    }
    public function get q_heroes():String {
        return _q_heroes;
    }
}
}
