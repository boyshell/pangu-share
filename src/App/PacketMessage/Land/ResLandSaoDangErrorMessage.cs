
namespace App.PacketMessage.Land
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 扫荡错误
   */
  public class ResLandSaoDangErrorPacketMessage : Network.PacketMessage
  {
    /**  */
    public string error { get; set; }

    public override void Write(System.IO.BinaryWriter writer)
    {
      WriteString(writer, error);
    }

    public override void Read(System.IO.BinaryReader reader)
    {
      this.error = ReadString(reader);
    }

    public override int Id
    {
      get { return 376; }
    }
  }
}