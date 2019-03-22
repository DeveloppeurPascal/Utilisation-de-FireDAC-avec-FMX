unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.Controls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Bindings.Outputs, Fmx.Bind.Editors, Fmx.Bind.Grid,
  Data.Bind.Grid, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Layouts, Fmx.Bind.Navigator,
  FMX.ExtCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, FMX.Menus,
  FMX.StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    ImageViewer1: TImageViewer;
    BindNavigator1: TBindNavigator;
    FDMemTable1: TFDMemTable;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    MainMenu1: TMainMenu;
    Splitter1: TSplitter;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
