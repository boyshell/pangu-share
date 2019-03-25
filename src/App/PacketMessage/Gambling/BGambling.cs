using Util;
using App.PacketMessage.Gambling;

namespace App.PacketMessage.Gambling
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 招募
     */
    public class BGambling : Bean {

        public BGambling() {}
        public BGambling(System.IO.BinaryReader reader) => Read(reader);

        /** 卡包列表 */
        public System.Collections.Generic.List<BGamblingHouse> houses{ get; set; } = new System.Collections.Generic.List<BGamblingHouse>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.houses.Count);
            for (int t52413035 = 0; t52413035 < this.houses.Count; ++t52413035)
            {
                houses[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            {
                int size52413035 = ReadInt(reader);
                this.houses = new System.Collections.Generic.List<BGamblingHouse>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.houses.Add(new BGamblingHouse(reader));
                }
            }
        }
    }
}