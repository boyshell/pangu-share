using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将参数
     */
    public class C_hero_param {

        public C_hero_param(BinaryReader reader)
        {
            Q_hero_param[] array = Q_hero_param.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
