using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 面板配置
     */
    public class C_uiform {

        public C_uiform(BinaryReader reader)
        {
            Q_uiform[] array = Q_uiform.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
