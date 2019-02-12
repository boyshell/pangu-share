
namespace App.PacketMessage.Util
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 踢人
     */
    public class ResKickPacketMessage : Network.PacketMessage
    {
        /** 为何踢人[1:版本不一致][2:验证未通过][3:多次发送登录消息][4:顶号][5:流程错误][6:非法消息] */
        public int type{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.type);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.type = ReadInt(reader);
        }

      public override int Id
      {
        get { return 7; }
      }
    }
}