package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 章节
 */
public class Q_chapter extends Bean {
    /** 章节 */
    private var _q_chapter:int;
    /** 章节名称 */
    private var _q_name:String;

    override public function read(_buf:ByteArray): void {
        this._q_chapter = readInt(_buf);
        this._q_name = readString(_buf);
    }

    public function get q_chapter():int {
        return _q_chapter;
    }
    public function get q_name():String {
        return _q_name;
    }
}
}
