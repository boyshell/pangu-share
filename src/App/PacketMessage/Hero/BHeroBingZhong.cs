using Util;

namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 兵种信息
     */
    public class BHeroBingZhong : Bean {

        public BHeroBingZhong() {}
        public BHeroBingZhong(System.IO.BinaryReader reader) => Read(reader);

        /** 兵种 */
        public int bingZhong{ get; set; }
        /** 技能(0表示未装备技能) */
        public System.Collections.Generic.List<int> skills{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.bingZhong);
            WriteInt(writer, this.skills.Count);
            for (int t52413035 = 0; t52413035 < this.skills.Count; ++t52413035)
            {
                WriteInt(writer, skills[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.bingZhong = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.skills = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.skills.Add(ReadInt(reader));
                }
            }
        }
    }
}