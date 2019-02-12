using App.PacketMessage.Team;

namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 征兵
     */
    public class ReqTeamZhengBingPacketMessage : Network.PacketMessage
    {
        /** 是否使用预备兵 */
        public bool yuBeiBing{ get; set; }
        /** 征兵信息 */
        public System.Collections.Generic.List<BTeamZhengBing> zhengBing{ get; set; } = new System.Collections.Generic.List<BTeamZhengBing>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBool(writer, this.yuBeiBing);
            WriteInt(writer, this.zhengBing.Count);
            for (int t52413035 = 0; t52413035 < this.zhengBing.Count; ++t52413035)
            {
                zhengBing[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.yuBeiBing = ReadBool(reader);
            {
                int size52413035 = ReadInt(reader);
                this.zhengBing = new System.Collections.Generic.List<BTeamZhengBing>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.zhengBing.Add(new BTeamZhengBing(reader));
                }
            }
        }

      public override int Id
      {
        get { return 336; }
      }
    }
}