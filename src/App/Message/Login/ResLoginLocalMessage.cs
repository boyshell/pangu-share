using App.Message.Login;

namespace App.Message.Login
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 登录(本地)
     */
    public class ResLoginLocalMessage : Net.Message
    {
        /** 初始化信息 */
        public BLoginInit init{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBean(writer, this.init);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.init = ReadBool(reader) ? new BLoginInit(reader) : null;
        }

      public override int Id()
      {
        return 2;
      }
    }
}