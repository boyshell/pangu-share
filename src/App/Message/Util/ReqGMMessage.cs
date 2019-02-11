
namespace App.Message.Util
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * GM指令
     */
    public class ReqGMMessage : Net.Message
    {
        /** 内容 */
        public string content{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteString(writer, this.content);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.content = ReadString(reader);
        }

      public override int Id()
      {
        return 14;
      }
    }
}