using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能参数
     */
    public class C_skill_param {

        public C_skill_param(BinaryReader reader)
        {
            Q_skill_param[] array = Q_skill_param.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
