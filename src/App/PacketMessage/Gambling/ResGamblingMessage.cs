using App.PacketMessage.Gambling;

namespace App.PacketMessage.Gambling
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 招募
     */
    public class ResGamblingPacketMessage : Network.PacketMessage
    {
        /** 卡包 */
        public BGamblingHouse house{ get; set; }
        /** 武将卡ID */
        public System.Collections.Generic.List<int> heroUIDs{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBean(writer, this.house);
            WriteInt(writer, this.heroUIDs.Count);
            for (int t52413035 = 0; t52413035 < this.heroUIDs.Count; ++t52413035)
            {
                WriteInt(writer, heroUIDs[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.house = ReadBool(reader) ? new BGamblingHouse(reader) : null;
            {
                int size52413035 = ReadInt(reader);
                this.heroUIDs = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.heroUIDs.Add(ReadInt(reader));
                }
            }
        }

      public override int Id
      {
        get { return 360; }
      }
    }
}