
namespace App.PacketMessage.Land
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 占领错误
   */
  public class ResLandZhanLingErrorPacketMessage : Network.PacketMessage
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
      get { return 364; }
    }
  }
}