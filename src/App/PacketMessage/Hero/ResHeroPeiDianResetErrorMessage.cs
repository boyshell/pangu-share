
namespace App.PacketMessage.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 重置武将配点错误
   */
  public class ResHeroPeiDianResetErrorPacketMessage : Network.PacketMessage
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
      get { return 313; }
    }
  }
}