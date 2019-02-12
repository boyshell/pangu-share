using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将组合
     */
    public class Q_hero_combo : Util.Bean
    {
        /** 组合名称 */
        public string q_name { get; }
        /** 组合技能 */
        public int q_skill { get; }
        /** 武将卡列表 */
        public string q_heroes { get; }

        private Q_hero_combo(BinaryReader reader)
        {
            this.q_name = ReadString(reader);
            this.q_skill = ReadInt(reader);
            this.q_heroes = ReadString(reader);
        }

        public static Q_hero_combo[] Create(BinaryReader reader)
        {
            Q_hero_combo[] array = new Q_hero_combo[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_hero_combo(reader);
            }
            return array;
        }

        public override void Read(BinaryReader reader)
        {
            throw new NotImplementedException();
        }

        public override void Write(BinaryWriter writer)
        {
            throw new NotImplementedException();
        }
    }
}
