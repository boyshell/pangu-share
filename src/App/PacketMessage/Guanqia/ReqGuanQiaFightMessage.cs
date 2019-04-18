
namespace App.PacketMessage.Guanqia
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 闯关
     */
    public class ReqGuanQiaFightPacketMessage : Network.PacketMessage
    {
        /** 队伍序号 */
        public int teamIndex{ get; set; }
        /** 关卡ID(只能是通关了的关卡和下一关关卡) */
        public int guanQiaID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.teamIndex);
            WriteInt(writer, this.guanQiaID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.teamIndex = ReadInt(reader);
            this.guanQiaID = ReadInt(reader);
        }

      public override int Id
      {
        get { return 379; }
      }
    }
}