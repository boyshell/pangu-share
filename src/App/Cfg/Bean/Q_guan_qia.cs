using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 关卡
     */
    public class Q_guan_qia : Util.Bean
    {
        /** 关卡ID */
        public int q_id { get; }
        /** 下一关关卡ID */
        public int q_next { get; }
        /** 章节ID */
        public int q_chapter { get; }
        /** 铜币产量 */
        public int q_copper { get; }
        /** 资源产量 */
        public int q_resource { get; }
        /** 经验 */
        public int q_exp { get; }
        /** 阵容(对应q_robot.q_id) */
        public string q_heroes { get; }

        private Q_guan_qia(BinaryReader reader)
        {
            this.q_id = ReadInt(reader);
            this.q_next = ReadInt(reader);
            this.q_chapter = ReadInt(reader);
            this.q_copper = ReadInt(reader);
            this.q_resource = ReadInt(reader);
            this.q_exp = ReadInt(reader);
            this.q_heroes = ReadString(reader);
        }

        public static Q_guan_qia[] Create(BinaryReader reader)
        {
            Q_guan_qia[] array = new Q_guan_qia[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_guan_qia(reader);
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
