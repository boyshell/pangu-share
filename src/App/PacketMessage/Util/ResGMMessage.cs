
namespace App.PacketMessage.Util
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * GM指令
     */
    public class ResGMPacketMessage : Network.PacketMessage
    {
        /** 返回的提示,也有可能不返回 */
        public string content{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteString(writer, this.content);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.content = ReadString(reader);
        }

      public override int Id
      {
        get { return 15; }
      }
    }
}