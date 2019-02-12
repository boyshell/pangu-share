
namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 取消征兵
     */
    public class ReqTeamZhengBingCancelPacketMessage : Network.PacketMessage
    {
        /** 取消征兵的武将卡 */
        public System.Collections.Generic.List<int> heroUIDs{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUIDs.Count);
            for (int t52413035 = 0; t52413035 < this.heroUIDs.Count; ++t52413035)
            {
                WriteInt(writer, heroUIDs[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
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
        get { return 330; }
      }
    }
}