using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗参数
     */
    public class C_fight_param {

        public C_fight_param(BinaryReader reader)
        {
            Q_fight_param[] array = Q_fight_param.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
