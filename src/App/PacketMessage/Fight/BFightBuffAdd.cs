using Util;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * BUFF触发
     */
    public class BFightBuffAdd : Bean {

        public BFightBuffAdd() {}
        public BFightBuffAdd(System.IO.BinaryReader reader) => Read(reader);

        /** BUFF */
        public int buffID{ get; set; }
        /** 参数 */
        public System.Collections.Generic.List<int> params{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.buffID);
            WriteInt(writer, this.params.Count);
            for (int t52413035 = 0; t52413035 < this.params.Count; ++t52413035)
            {
                WriteInt(writer, params[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.buffID = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.params = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.params.Add(ReadInt(reader));
                }
            }
        }
    }
}