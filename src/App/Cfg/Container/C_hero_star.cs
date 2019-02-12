using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将星
     */
    public class C_hero_star {

        public C_hero_star(BinaryReader reader)
        {
            Q_hero_star[] array = Q_hero_star.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
