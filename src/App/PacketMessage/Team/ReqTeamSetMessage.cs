
namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 队伍设置
     */
    public class ReqTeamSetPacketMessage : Network.PacketMessage
    {
        /** 队伍序号(1开始) */
        public int teamIndex{ get; set; }
        /** 队伍中的位置[1:大营][2:中军][3:前锋] */
        public int position{ get; set; }
        /** 武将卡唯一ID */
        public int heroUID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.teamIndex);
            WriteInt(writer, this.position);
            WriteInt(writer, this.heroUID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.teamIndex = ReadInt(reader);
            this.position = ReadInt(reader);
            this.heroUID = ReadInt(reader);
        }

      public override int Id
      {
        get { return 327; }
      }
    }
}