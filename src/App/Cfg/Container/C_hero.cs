using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将
     */
    public class C_hero {

        public C_hero(BinaryReader reader)
        {
            Q_hero[] array = Q_hero.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
