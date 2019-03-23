
namespace App.PacketMessage.Util
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 心跳
     */
    public class ReqHeartBeatPacketMessage : Network.PacketMessage
    {
        /** 前端unix时间戳 */
        public long time{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteLong(writer, this.time);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.time = ReadLong(reader);
        }

      public override int Id
      {
        get { return 357; }
      }
    }
}