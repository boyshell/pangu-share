
namespace App.PacketMessage.Util
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 心跳
     */
    public class ResHeartBeatPacketMessage : Network.PacketMessage
    {
        /** 前端unix时间戳 */
        public long ctime{ get; set; }
        /** 后端unix时间戳 */
        public long stime{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteLong(writer, this.ctime);
            WriteLong(writer, this.stime);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.ctime = ReadLong(reader);
            this.stime = ReadLong(reader);
        }

      public override int Id
      {
        get { return 358; }
      }
    }
}