
namespace App.PacketMessage.Login
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 版本验证
     */
    public class ReqLoginVersionCheckPacketMessage : Network.PacketMessage
    {
        /** 消息代码版本号 */
        public string messageCodeVersion{ get; set; }
        /** 配置代码版本号 */
        public string configCodeVersion{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteString(writer, this.messageCodeVersion);
            WriteString(writer, this.configCodeVersion);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.messageCodeVersion = ReadString(reader);
            this.configCodeVersion = ReadString(reader);
        }

      public override int Id
      {
        get { return 4; }
      }
    }
}