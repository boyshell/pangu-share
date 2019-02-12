
namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 队伍取消设置
     */
    public class ReqTeamUnSetPacketMessage : Network.PacketMessage
    {
        /** 武将卡唯一ID */
        public int heroUID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
        }

      public override int Id
      {
        get { return 333; }
      }
    }
}