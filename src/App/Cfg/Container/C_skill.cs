using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能
     */
    public class C_skill {

        public C_skill(BinaryReader reader)
        {
            Q_skill[] array = Q_skill.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
