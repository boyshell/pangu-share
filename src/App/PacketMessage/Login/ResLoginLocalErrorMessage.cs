
namespace App.PacketMessage.Login
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 登录(本地)错误
   */
  public class ResLoginLocalErrorPacketMessage : Network.PacketMessage
  {
    /**  */
    public int error { get; set; }

    public override void Write(System.IO.BinaryWriter writer)
    {
      WriteInt(writer, error);
    }

    public override void Read(System.IO.BinaryReader reader)
    {
      this.error = ReadInt(reader);
    }

    public override int Id
    {
      get { return 3; }
    }
  }
}