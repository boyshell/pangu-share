
namespace App.Message.Login
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 登录(本地)
     */
    public class ReqLoginLocalMessage : Net.Message
    {
        /** 服务器 */
        public int server{ get; set; }
        /** 帐号 */
        public string user{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.server);
            WriteString(writer, this.user);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.server = ReadInt(reader);
            this.user = ReadString(reader);
        }

      public override int Id()
      {
        return 1;
      }
    }
}