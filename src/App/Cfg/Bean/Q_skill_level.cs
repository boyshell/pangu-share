using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能等级
     */
    public class Q_skill_level : Util.Bean
    {
        /** 技能等级 */
        public int q_skill_level { get; }
        /** 升级所需经验 */
        public int q_exp { get; }

        private Q_skill_level(BinaryReader reader)
        {
            this.q_skill_level = ReadInt(reader);
            this.q_exp = ReadInt(reader);
        }

        public static Q_skill_level[] Create(BinaryReader reader)
        {
            Q_skill_level[] array = new Q_skill_level[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_skill_level(reader);
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
