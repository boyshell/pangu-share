using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将组合
     */
    public class C_hero_combo {

        public C_hero_combo(BinaryReader reader)
        {
            Q_hero_combo[] array = Q_hero_combo.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
