using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能等级
     */
    public class C_skill_level {

        public C_skill_level(BinaryReader reader)
        {
            Q_skill_level[] array = Q_skill_level.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
