using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * buff
     */
    public class C_buff {

        public C_buff(BinaryReader reader)
        {
            Q_buff[] array = Q_buff.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
