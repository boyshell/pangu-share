using Util;

namespace App.PacketMessage.Gambling
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 卡包
     */
    public class BGamblingHouse : Bean {

        public BGamblingHouse() {}
        public BGamblingHouse(System.IO.BinaryReader reader) => Read(reader);

        /** 卡包ID */
        public int id{ get; set; }
        /** 参数列表,根据不同的卡包类型表示的意义不一样 */
        public System.Collections.Generic.List<int> vars{ get; set; } = new System.Collections.Generic.List<int>();
        /** 武将卡 */
        public System.Collections.Generic.List<int> heroIDs{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.id);
            WriteInt(writer, this.vars.Count);
            for (int t52413035 = 0; t52413035 < this.vars.Count; ++t52413035)
            {
                WriteInt(writer, vars[t52413035]);
            }
            WriteInt(writer, this.heroIDs.Count);
            for (int t52413035 = 0; t52413035 < this.heroIDs.Count; ++t52413035)
            {
                WriteInt(writer, heroIDs[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.id = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.vars = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.vars.Add(ReadInt(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.heroIDs = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.heroIDs.Add(ReadInt(reader));
                }
            }
        }
    }
}