unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.ListView.Types, FMX.ListView, FMX.Layouts, FMX.ListBox,
  FMX.Controls.Presentation;

type
  TForm2 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ToolBar1: TToolBar;
    Label5: TLabel;


    procedure Button1Click(Sender: TObject);
    //procedure Edit1Typing(Sender: TObject);
    //procedure Edit1ChangeTracking(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    //procedure Edit1Typing(Sender: TObject);
    //procedure Edit1ChangeTracking(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit1Typing(Sender: TObject);


  



  private
    Form2: TForm2;


    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses Unit1;









//funciona no android









procedure TForm2.Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);

var
thetext:String;
begin
 //Edit1.Text:=AnsiUpperCase(Edit1.Text);
 //Edit1.GoToTextEnd;

 thetext := Edit1.Text;
 Edit1.Text:=AnsiUpperCase(thetext);
 Edit1.GoToTextEnd;
end;

procedure TForm2.Edit1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);

var
thetext:String;
begin
 //Edit1.Text:=AnsiUpperCase(Edit1.Text);
 //Edit1.GoToTextEnd;

 thetext := Edit1.Text;
 Edit1.Text:=AnsiUpperCase(thetext);
 Edit1.GoToTextEnd;
end;

procedure TForm2.Edit1Typing(Sender: TObject);
var
thetext:String;
begin
 //Edit1.Text:=AnsiUpperCase(Edit1.Text);
 //Edit1.GoToTextEnd;


 Edit1.Text:=UpperCase(Edit1.Text);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      //Action:=caFree;
      Form2:=nil;
      hide;
      Edit1.Text:='';
      Label3.Text:='';
end;

procedure TForm2.FormShow(Sender: TObject);
var
thetext:String;
begin
 //Edit1.Text:=AnsiUpperCase(Edit1.Text);
 //Edit1.GoToTextEnd;

 thetext := Edit1.Text;
 Edit1.Text:=AnsiUpperCase(thetext);
 Edit1.GoToTextEnd;

end;

procedure TForm2.ToolBar1Click(Sender: TObject);
begin
      //Halt(0);
      //Form1.Show;
      //Application.MainForm.DisposeOf;
      Form2:=nil;
      hide;
      Edit1.Text:='';
      Label3.Text:='';
      Label4.Text:='';
end;







{procedure TForm2.Edit1ChangeTracking(Sender: TObject);

var
thetext:String;
begin

 thetext := Edit1.Text;
 Edit1.OnChangeTracking := nil;
 Edit1.Text := '';
 Edit1.Text := AnsiUpperCase(thetext);

 Edit1.OnChangeTracking := Edit1ChangeTracking;
 Edit1.GoToTextEnd;
end;

procedure TForm2.Edit1Typing(Sender: TObject);
var
thetext:String;
begin
 //Edit1.Text:=AnsiUpperCase(Edit1.Text);
 //Edit1.GoToTextEnd;

 thetext := Edit1.Text;
 Edit1.Text:=AnsiUpperCase(thetext);
 Edit1.GoToTextEnd;
end; }

function removeAcentos(texto:string):string;
  Const ComAcento = '������������������c������������������';
  Const SemAcento = 'aaaaeeeiiioooouuuccAAAAEEEIIIOOOOUUUC';
  var iFor : Integer;
begin
   for iFor := 1 to Length(texto) do begin
      if Pos(texto[iFor],ComAcento) <> 0 then begin
         texto[iFor] := SemAcento[Pos(texto[iFor],ComAcento)];
      end;
   end;
   Result := texto;
end;


procedure TForm2.Button1Click(Sender: TObject);
var
    procura:string;
begin
    procura:=Edit1.Text;

  begin
    if (Label2.Text='Computador') then
    begin
    Label3.Visible:=true;
    //Try

                procura:=StringReplace(procura,' ',EmptyStr,[rfReplaceAll]);
                Edit1.Text:=removeAcentos(procura);


                If (Edit1.Text = 'DESLIGAAOCOLOCARPEN-DRIVE') Or (Edit1.Text = 'DESLIGAAOCOLOCARPENDRIVE')Or (Edit1.Text = 'DESLIGAAOCOLOCARHDEXTERNO') Or (Edit1.Text = 'DESLIGAQUANDOCOLOCAPEN-DRIVE')Or (Edit1.Text = 'DESLIGAQUANDOCOLOCAPENDRIVE') Or (Edit1.Text = 'DESLIGAQUANDOCOLOCAHDEXTERNO') Or (Edit1.Text = 'DESLIGA')Or (Edit1.Text = 'HDEXTERNO') Then
                    Label3.Text := '1-Fonte de alimenta��o com pot�ncia menor ' + #13 + '2-instalar drivers de USB';

                if (edit1.text = 'desligaaocolocarpen-drive')or (Edit1.Text = 'desligaaocolocarpendrive') or (edit1.text = 'desligaaocolocarhdexterno') or (edit1.text = 'desligaquandocolocapen-drive') or (edit1.text = 'desligaquandocolocapendrive')or (edit1.text = 'desligaquandocolocahdexterno') or (edit1.text = 'desliga')or (edit1.text = 'hdexterno') Then
                    Label3.Text := '1-Fonte de alimenta��o com pot�ncia menor ' + #13 + '2-instalar drivers de USB';

                 If (Edit1.Text = 'RUNTIMEERROR') Or (Edit1.Text = 'MENSAGEMRUNTIMEERROR') Or (Edit1.Text = 'RUNTIMEERROR') Or (Edit1.Text = 'MENSAGEMRUNTIMEERROR') Then
                    Label3.Text := '1-Abra o prompt de comando e informe os comandos: ' + #13 + 'DISKPART <ENTER> LIST DISK <ENTER> SELECT DISK 0 <ENTER>' + #13 + ' CLEAN <ENTER> CONVERT GPT <ENTER> EXIT <ENTER>';
                 if (edit1.text = 'n�o abre pasta') or (edit1.text = 'naoabrepasta') or (edit1.text = 'pasta n�o abre') or (edit1.text = 'pastanaoabre') or (edit1.text = 'n�o est� abrindo pasta') or (edit1.text = 'naoestaabrindopasta') or (edit1.text = 'naoestaabrindoapasta') or (edit1.text = 'n�o est� abrindo a pasta') or (edit1.text = 'n�o quer abrir pasta') or (edit1.text = 'naoquerabrirpasta') or (edit1.text = 'n�o quer abrir a pasta') or (edit1.text = 'naoquerabrirapasta') then
                    Label3.Text := '1-Use um programa para limpar o registro do Windows';

                If (Edit1.Text = 'NAOLIGA') Or (Edit1.Text = 'DEUPAU') Or (Edit1.Text = 'NAOLIGA') Or (Edit1.Text = 'COMPUTADORN�OLIGA') Or (Edit1.Text = 'COMPUTADORNAOLIGA') Or (Edit1.Text = 'N�O FUNCIONA') Or (Edit1.Text = 'NAOFUNCIONA') Or (Edit1.Text = 'N�O EST� LIGANDO') Or (Edit1.Text = 'N�O EST� FUNCIONANDO') Or (Edit1.Text = 'NAOESTALIGANDO') Or (Edit1.Text = 'NAOESTAFUNCIONANDO') Or (Edit1.Text = 'N�O QUER LIGAR') Or (Edit1.Text = 'N�O QUER FUNCIONAR') Or (Edit1.Text = 'NAOQUERLIGAR') Or (Edit1.Text = 'NAOQUERFUNCIONAR') Or (Edit1.Text = 'DESLIGADO') Then

                    Label3.Text := '1-Veja a fonte de alimenta��o 3-Placa de v�deo ' + #13 + ' 4-Limpe os contatos da mem�ria RAM com borracha' + #13 + '  5-Desconecte uma placa pci de cada vez e ' + #13 + 'ligue o PC  6-Teste o processador em outra ' + #13 + 'placa-m�e se o processador n�o funcionar troque' + #13 + ' por outro';


                if (edit1.text = 'naoliga') or (edit1.text = 'deupau') or (edit1.text = 'naoliga') or (edit1.text = 'computador n�o liga') or (edit1.text = 'computadornaoliga') or (edit1.text = 'n�o funciona') or (edit1.text = 'naofunciona') or (edit1.text = 'n�o est� ligando') or (edit1.text = 'n�o est� funcionando') or (edit1.text = 'naoestaligando') or (edit1.text = 'naoestafuncionando') or (edit1.text = 'n�o quer ligar') or (edit1.text = 'n�o quer funcionar') or (edit1.text = 'naoquerligar') or (edit1.text = 'naoquerfuncionar') or (edit1.text = 'desligado') then
                    Label3.Text := '1-Veja a fonte de alimenta��o 3-Placa de v�deo ' + #13 + ' 4-Limpe os contatos da mem�ria RAM com borracha' + #13 + '  5-Desconecte uma placa pci de cada vez e ' + #13 + 'ligue o PC  6-Teste o processador em outra ' + #13 + 'placa-m�e se o processador n�o funcionar troque' + #13 + ' por outro';


                If (Edit1.Text = 'N�O EST� SUBINDO V�DEO') Or (Edit1.Text = 'N�O SOBE V�DEO') Or (Edit1.Text = 'SUBINDO V�DEO') Or (Edit1.Text = 'N�O SUBIU V�DEO') Or (Edit1.Text = 'NAOESTASUBINDOVIDEO') Or (Edit1.Text = 'NAOSOBEVIDEO') Or (Edit1.Text = 'SUBINDOVIDEO') Or (Edit1.Text = 'NAOSUBIUVIDEO') Or (Edit1.Text = 'SEM V�DEO') Or (Edit1.Text = 'SEMVIDEO') Or (Edit1.Text = 'V�DEO N�O LIGA') Or (Edit1.Text = 'VIDEONAOLIGA') Or (Edit1.Text = 'V�DEO N�O FUNCIONA') Or (Edit1.Text = 'VIDEONAOFUNCIONA') Or (Edit1.Text = 'V�DEO') Or (Edit1.Text = 'VIDEO') Or (Edit1.Text = 'MONITOR N�O LIGA') Or (Edit1.Text = 'MONITORNAOLIGA') Or (Edit1.Text = 'MONITOR N�O FUNCIONA') Or (Edit1.Text = 'MONITORNAOFUNCIONA') Then

                    Label3.Text := '1-Coloque uma placa de v�deo externa e conecte no' + #13 + ' monitor  2-Desabilite a placa de v�deo onboard ' + #13 + 'para a placa de v�deo externa funcionar  ' + #13 + '3-Limpe os contatos da mem�ria RAM com borracha ' + #13 + ' 4-Desconecte uma placa pci de cada vez e ligue o PC';

                if (edit1.text = 'n�o est� subindo v�deo') or (edit1.text = 'n�o sobe v�deo') or (edit1.text = 'subindo v�deo') or (edit1.text = 'n�o subiu v�deo') or (edit1.text = 'naoestasubindovideo') or (edit1.text = 'naosobevideo') or (edit1.text = 'subindovideo') or (edit1.text = 'naosubiuvideo') or (edit1.text = 'sem v�deo') or (edit1.text = 'semvideo') or (edit1.text = 'v�deo n�o liga') or (edit1.text = 'videonaoliga') or (edit1.text = 'v�deo n�o funciona') or (edit1.text = 'videonaofunciona') or (edit1.text = 'v�deo') or (edit1.text = 'video') or (edit1.text = 'monitor n�o liga') or (edit1.text = 'monitornaoliga') or (edit1.text = 'monitor n�o funciona') or (edit1.text = 'monitornaofunciona') then
                    Label3.Text := '1-Coloque uma placa de v�deo externa e conecte no' + #13 + ' monitor  2-Desabilite a placa de v�deo onboard ' + #13 + 'para a placa de v�deo externa funcionar  ' + #13 + '3-Limpe os contatos da mem�ria RAM com borracha ' + #13 + ' 4-Desconecte uma placa pci de cada vez e ligue o PC';


                If (Edit1.Text = 'N�O EST� SUBINDO SOM') Or (Edit1.Text = 'N�O SOBE SOM') Or (Edit1.Text = 'SUBINDOSOM') Or (Edit1.Text = 'N�O SUBIU SOM') Or (Edit1.Text = 'NAOESTASUBINDOSOM') Or (Edit1.Text = 'NAOSOBESOM') Or (Edit1.Text = 'SUBINDOSOM') Or (Edit1.Text = 'NAOSUBIUSOM') Or (Edit1.Text = 'SEMSOM') Or (Edit1.Text = 'SEM �UDIO')Or (Edit1.Text = 'SEMAUDIO') Or (Edit1.Text = 'SOM') Or (Edit1.Text = '�UDIO') Or (Edit1.Text = 'EST� SEM SOM') Or (Edit1.Text = 'EST� SEM �UDIO') Then

                    Label3.Text := '1-Verifique o driver de som em Painel de controle + ' + #13 + 'Gerenciador de Dispositivos + Dispositivos de Som ' + #13 + '2-Veja se o som est� desligado na barra de' + #13 + ' tarefas do Sistema Operacional   3-Verifique a placa' + #13 + ' de som ou troque-a';

                if (edit1.text = 'n�o est� subindo som') or (edit1.text = 'n�o sobe som') or (edit1.text = 'subindosom') or (edit1.text = 'n�o subiu som') or (edit1.text = 'naoestasubindosom') or (edit1.text = 'naosobesom') or (edit1.text = 'subindosom') or (edit1.text = 'naosubiusom') or (edit1.text = 'semsom') or (edit1.text = 'sem �udio') or (edit1.text = 'som') or (edit1.text = '�udio') or (edit1.text = 'est� sem som') or (edit1.text = 'estasemsom')or (edit1.text = 'estasemaudio') then
                    Label3.Text := '1-Verifique o driver de som em Painel de controle + ' + #13 + 'Gerenciador de Dispositivos + Dispositivos de Som ' + #13 + '2-Veja se o som est� desligado na barra de' + #13 + ' tarefas do Sistema Operacional   3-Verifique a placa' + #13 + ' de som ou troque-a';


                If (Edit1.Text = 'N�O EST� SUBINDO �UDIO') Or (Edit1.Text = 'N�O SOBE �UDIO') Or (Edit1.Text = 'SUBINDO �UDIO') Or (Edit1.Text = 'N�O SUBIU �UDIO') Or (Edit1.Text = 'N�O ESTA SUBINDO �UDIO') Or (Edit1.Text = 'NAO SOBE �UDIO') Or (Edit1.Text = 'SUBINDO �UDIO') Or (Edit1.Text = 'N�O SUBIU �UDIO') Or (Edit1.Text = 'NAOESTASUBINDOAUDIO') Or (Edit1.Text = 'NAOSOBEAUDIO') Or (Edit1.Text = 'SUBINDOAUDIO') Or (Edit1.Text = 'NAOSUBIUAUDIO') Or (Edit1.Text = 'NAOESTASUBINDOAUDIO') Or (Edit1.Text = 'NAOSOBEAUDIO') Or (Edit1.Text = 'SUBINDOAUDIO') Or (Edit1.Text = 'NAOSUBIUAUDIO') Then

                    Label3.Text := '1-Verifique o driver de som em Painel de controle + ' + #13 + 'Gerenciador de Dispositivos + Dispositivos de Som   ' + #13 + '2-Veja se o som est� desligado na barra de' + #13 + ' tarefas do Sistema Operacional   3-Verifique a placa ' + #13 + 'de som ou troque-a';

                if (edit1.text = 'n�o est� subindo �udio') or (edit1.text = 'n�o sobe �udio') or (edit1.text = 'subindo �udio') or (edit1.text = 'n�o subiu �udio') or (edit1.text = 'n�o esta subindo �udio') or (edit1.text = 'nao sobe �udio') or (edit1.text = 'subindo �udio') or (edit1.text = 'n�o subiu �udio') or (edit1.text = 'naoestasubindoaudio') or (edit1.text = 'naosobeaudio') or (edit1.text = 'subindoaudio') or (edit1.text = 'naosubiuaudio') or (edit1.text = 'naoestasubindoaudio') or (edit1.text = 'naosobeaudio') or (edit1.text = 'subindoaudio') or (edit1.text = 'naosubiuaudio') then
                    Label3.Text := '1-Verifique o driver de som em Painel de controle + ' + #13 + 'Gerenciador de Dispositivos + Dispositivos de Som   ' + #13 + '2-Veja se o som est� desligado na barra de' + #13 + ' tarefas do Sistema Operacional   3-Verifique a placa ' + #13 + 'de som ou troque-a';

                If (Edit1.Text = 'COMPUTADORLIGAEDESLIGA') Or (Edit1.Text = 'ESTALIGANDOEDESLIGANDO')Or (Edit1.Text = 'LIGADESLIGA')Or (Edit1.Text = 'ESTALIGANDOEDESLIGANDO')Or (Edit1.Text = 'EST� LIGANDO E DESLIGANDO')Or (Edit1.Text = 'LIGANDOEDESLIGANDO')Or (Edit1.Text = 'EST� LIGANDO DESLIGANDO') Then

                    Label3.Text := '1-A liga��o da fonte com a placa-m�e pode estar com ' + #13 + 'mau-contato ou o micro sem HD';

                if (edit1.text = 'computadorligaedesliga') or (edit1.text = 'estaligandoedesliggando')or (edit1.text = 'ligadesliga')or (edit1.text = 'estaligandoedesligando')or (edit1.text = 'est� ligando e desligando')or (edit1.text = 'ligandoedesligando')or (edit1.text = 'est� ligando desligando') then
                    Label3.Text := '1-A liga��o da fonte com a placa-m�e pode estar com ' + #13 + 'mau-contato ou o micro sem HD';



                If (Edit1.Text = 'N�O APARECE NADA NA TELA') Or (Edit1.Text = 'NAOAPARECENADANATELA') Or (Edit1.Text = 'N�O APARECE NADA') Or (Edit1.Text = 'NAOAPARECENADA') Or (Edit1.Text = 'N�O APARECE V�DEO') Or (Edit1.Text = 'NAOAPARECEVIDEO') Then

                    Label3.Text := '1-Passe �lcool Isoprop�lico em toda placa-m�e e ' + #13 + 'aguarde secar(use escova)';

                if (edit1.text = 'n�o aparece nada na tela') or (edit1.text = 'naoaparecenadanatela') or (edit1.text = 'n�o aparece nada') or (edit1.text = 'naoaparecenada') or (edit1.text = 'n�o aparece v�deo') or (edit1.text = 'naoaparecevideo') then
                    Label3.Text := '1-Passe �lcool Isoprop�lico em toda placa-m�e e ' + #13 + 'aguarde secar(use escova)';

                If (Edit1.Text = 'N�O INICIALIZA') Or (Edit1.Text = 'NAOINICIALIZA') Or (Edit1.Text = 'N�O INICIA') Or (Edit1.Text = 'NAOINICIA') Or (Edit1.Text = 'COMPUTADOR N�O INICIA') Or (Edit1.Text = 'COMPUTADORNAOINICIA') Or (Edit1.Text = 'N�O CARREGA') Or (Edit1.Text = 'NAOCARREGA') Or (Edit1.Text = 'DISKBOOTFAILURE') Or (Edit1.Text = 'MENSAGEMDISKBOOTFAILURE') Then

                    Label3.Text := '1-Pode ser um disco remov�vel conectado, configure' + #13 + ' o SETUP ara que a sequ�ncia n�o asse or ele ou o HD' + #13 + ' est� queimado  2-Coloque um disco de boot, reinicie' + #13 + ' o PC e informe o comando CHKDSK /R ou CHKDSK /P';

                if (edit1.text = 'n�o inicializa') or (edit1.text = 'naoinicializa') or (edit1.text = 'n�o inicia') or (edit1.text = 'naoinicia') or (edit1.text = 'computador n�o inicia') or (edit1.text = 'computadornaoinicia') or (edit1.text = 'n�o carrega') or (edit1.text = 'naocarrega') or (edit1.text = 'diskbootfailure') or (edit1.text = 'mensagemdiskbootfailure') then
                     Label3.Text := '1-Pode ser um disco remov�vel conectado, configure' + #13 + ' o SETUP ara que a sequ�ncia n�o asse or ele ou o HD' + #13 + ' est� queimado  2-Coloque um disco de boot, reinicie' + #13 + ' o PC e informe o comando CHKDSK /R ou CHKDSK /P';

                If (Edit1.Text = 'COMPUTADORRESETANDO') Or (Edit1.Text = 'COMPUTADORREINICIANDO') Or (Edit1.Text = 'REINICIANDO') Or (Edit1.Text = 'REINICIASOZINHO') Or (Edit1.Text = 'RESETA') Or (Edit1.Text = 'COMPUTADORREINICIA') Or (Edit1.Text = 'REINICIA') Then

                    Label3.Text := '1-Processador ou a fonte est�o se aquecendo demais -' + #13 + ' limpe o cooler ou troque a fonte 2-V�em propriedades do' + #13 + ' Meu Computador guia Avan�ado + clique no bot�o Configura��es' + #13 + ' de Inicializa��o + desmarque Reinicializar Automaticamente';

                 if (edit1.text = 'computadorresetando') or (edit1.text = 'computadorreiniciando') or (edit1.text = 'reiniciando') or (edit1.text = 'reiniciasozinho') or (edit1.text = 'reseta') or (edit1.text = 'computadorreinicia') or (edit1.text = 'reinicia') then
                    Label3.Text := '1-Processador ou a fonte est�o se aquecendo demais -' + #13 + ' limpe o cooler ou troque a fonte 2-V�em propriedades do' + #13 + ' Meu Computador guia Avan�ado + clique no bot�o Configura��es' + #13 + ' de Inicializa��o + desmarque Reinicializar Automaticamente';

                If (Edit1.Text = 'LIGANASEGUNDAVEZ') Or (Edit1.Text = 'LIGAQUANDOAPERTADUASVEZES') Or (Edit1.Text = 'LIGAAOPRESSIONARPELASEGUNDAVEZ') Or (Edit1.Text = 'SOBENASEGUNDAVEZ') Or (Edit1.Text = 'SOBEQUANDOAPERTADUASVEZES') Or (Edit1.Text = 'SOBEAOPRESSIONARPELASEGUNDAVEZ') Then

                    Label3.Text := '1-Coloque outra bateria CR2032 nova ou espa�adores entre' + #13 + ' a placa-m�e e o gabinete';

                if (edit1.text = 'liganasegunda vez') or (edit1.text = 'ligaquandoapertaduasvezes') or (edit1.text = 'ligaaopressionarpelasegundavez') or (edit1.text = 'sobenasegundavez') or (edit1.text = 'sobequandoapertaduasvezes') or (edit1.text = 'sobeaopressionarpelasegundavez') then
                    Label3.Text := '1-Coloque outra bateria CR2032 nova ou espa�adores entre' + #13 + ' a placa-m�e e o gabinete';

                If (Edit1.Text = 'COMPUTADOR N�O DESLIGA') Or (Edit1.Text = 'COMPUTADORNAODESLIGA') Or (Edit1.Text = 'N�O DESLIGA') Or (Edit1.Text = 'NAODESLIGA') Or (Edit1.Text = 'N�O QUER DESLIGAR') Or (Edit1.Text = 'NAOQUERDESLIGAR')Or (Edit1.Text = 'PCNAOQUERDESLIGAR')Or (Edit1.Text = 'PC N�O QUER DESLIGAR')Or (Edit1.Text = 'MAQUINANAOQUERDESLIGAR')Or (Edit1.Text = 'M�QUINA N�O QUER DESLIGAR')Or (Edit1.Text = 'MAQUINANAODESLIGA')Or (Edit1.Text = 'M�QUINA N�O DESLIGA')Or (Edit1.Text = 'PCNAODESLIGA')Or (Edit1.Text = 'PC N�O DESLIGA') Then

                    Label3.Text := '1-Substitua a fonte de alimenta��o';

                if (edit1.text = 'computador n�o desliga') or (edit1.text = 'computadornaodesliga') or (edit1.text = 'n�o desliga') or (edit1.text = 'naodesliga') or (edit1.text = 'n�o quer desligar') or (edit1.text = 'naoquerdesligar')or (edit1.text = 'pcnaoquerdesligar')or (edit1.text = 'pc n�o quer desligar')or (edit1.text = 'maquinanaoquerdesligar')or (edit1.text = 'm�quina n�o quer desligar')or (edit1.text = 'maquinanaodesliga')or (edit1.text = 'm�quina n�o desliga')or (edit1.text = 'pcnaodesliga')or (edit1.text = 'pc n�o desliga') then
                    Label3.Text := '1-Substitua a fonte de alimenta��o';

                If (Edit1.Text = 'PERIF�RICOS N�O LIGAM') Or (Edit1.Text = 'PERIFERICOSNAOLIGAM') Or (Edit1.Text = 'PERIF�RICOS N�O FUNCIONAM') Or (Edit1.Text = 'PERIFERICOSNAOFUNCIONAM') Or (Edit1.Text = 'IMPRESSORA N�O FUNCIONA') Or (Edit1.Text = 'IMPRESSORANAOFUNCIONA') Or (Edit1.Text = 'SCANNER N�O FUNCIONA') Or (Edit1.Text = 'SCANNERNAOFUNCIONA') Or (Edit1.Text = 'SCANNERNAOLIGA') Or (Edit1.Text = 'SCANNERNAOSOBE') Or (Edit1.Text = 'SCANNER N�O LIGA') Or (Edit1.Text = 'SCANNER N�O SOBE') Or (Edit1.Text = 'IMPRESSORA N�O LIGA') Or (Edit1.Text = 'IMPRESSORANAOLIGA') Or (Edit1.Text = 'IMPRESSORA N�O SOBE') Or (Edit1.Text = 'IMPRESSORANAOSOBE') Then

                    Label3.Text := '1-Substitua a fonte de alimenta��o por uma mais potente';

                if (edit1.text = 'perif�ricos n�o ligam') or (edit1.text = 'perifericosnaoligam') or (edit1.text = 'perif�ricos n�o funcionam') or (edit1.text = 'perifericosnaofuncionam') or (edit1.text = 'impressora n�o funciona') or (edit1.text = 'impressoranaofunciona') or (edit1.text = 'scanner n�o funciona') or (edit1.text = 'scannernaofunciona') or (edit1.text = 'scannernaoliga') or (edit1.text = 'scannernaosobe') or (edit1.text = 'scanner n�o liga') or (edit1.text = 'scanner n�o sobe') or (edit1.text = 'impressora n�o liga') or (edit1.text = 'impressoranaoliga') or (edit1.text = 'impressora n�o sobe') or (edit1.text = 'impressoranaosobe') then
                     Label3.Text := '1-Substitua a fonte de alimenta��o por uma mais potente';

                If (Edit1.Text = 'USBLENTO') Or (Edit1.Text = 'TRANSFER�NCIALENTA') Or (Edit1.Text = 'TRANSFER�NCIALENTAUSB')Or (Edit1.Text = 'TRANSFERENCIALENTA') Or (Edit1.Text = 'USBTRANSFERENCIALENTA')Or  (Edit1.Text = 'TRANSFERENCIAPORUSBLENTA') Or (Edit1.Text = 'TRANSFER�NCIA POR USB LENTA')Or (Edit1.Text = 'USBLENTA')Or (Edit1.Text = 'USB') Then

                    Label3.Text := '1-Coloque o USB na porta traseira do PC';

                if (edit1.text = 'usblento') or (edit1.text = 'transfer�ncialenta') or (edit1.text = 'transferencialenta')or (edit1.text = 'transferencialentausb')or (edit1.text = 'usbtransferencialenta') or (edit1.text = 'transferenciaporusblenta') or (edit1.text = 'transfer�ncia por usb lenta')or (edit1.text = 'usblenta')or (edit1.text = 'usb') then
                    Label3.Text := '1-Coloque o USB na porta traseira do PC';

                If (Edit1.Text = 'BUG') Or (Edit1.Text = 'BUGS') Or (Edit1.Text = 'BUGDOWINDOWS') Or (Edit1.Text = 'BUGNOWINDOWS')Or (Edit1.Text = 'BUGANDO')Or (Edit1.Text = 'BUGADO') Then

                    Label3.Text := '1-Atualize o Windows no WINDOWS UPDATE, dentro do Painel ' + #13 + 'de Controle';

                 if (edit1.text = 'bug') or (edit1.text = 'bugs') or (edit1.text = 'bugdowindows') or (edit1.text = 'bugnowindows')or (edit1.text = 'bugando')or (edit1.text = 'bugado') then
                     Label3.Text := '1-Atualize o Windows no WINDOWS UPDATE, dentro do Painel ' + #13 + 'de Controle';

                If (Edit1.Text = 'USB N�O FUNCIONA') Or (Edit1.Text = 'USBNAOFUNCIONA') Or (Edit1.Text = 'NAOFUNCIONAUSB') Or (Edit1.Text = 'N�O FUNCIONA O USB') Or (Edit1.Text = 'PEN-DRIVE N�O FUNCIONA') Or (Edit1.Text = 'PEN-DRIVENAOFUNCIONA') Or (Edit1.Text = 'PENDRIVENAOFUNCIONA')Or (Edit1.Text = 'HD EXTERNO N�O FUNCIONA') Or (Edit1.Text = 'HDEXTERNONAOFUNCIONA') Or (Edit1.Text = 'HD EXTERNO N�O LIGA') Or (Edit1.Text = 'HDEXTERNONAOLIGA') Or (Edit1.Text = 'PORTAUSB') Or (Edit1.Text = 'PORTA USB N�O FUNCIONA') Or (Edit1.Text = 'PORTAUSBNAOFUNCIONA') Then

                    Label3.Text := '1-Atualize a porta USB pelo Gerenciador de Dispositivos' + #13 + '(dentro do Painel de controle) com a unidade de CD ' + #13 + 'ou pela internet, clicando com o bot�o direito ' + #13 + 'em qualquer USB';

                if (edit1.text = 'usb n�o funciona') or (edit1.text = 'usbnaofunciona') or (edit1.text = 'naofuncionausb') or (edit1.text = 'n�o funciona o usb') or (edit1.text = 'pen-drive n�o funciona') or (edit1.text = 'pen-drivenaofunciona') or (edit1.text = 'pendrivenaofunciona')or (edit1.text = 'hd externo n�o funciona') or (edit1.text = 'hdexternonaofunciona') or (edit1.text = 'hd externo n�o liga') or (edit1.text = 'hdexternonaoliga') or (edit1.text = 'portausb') or (edit1.text = 'porta usb n�o funciona') or (edit1.text = 'portausbnaofunciona') then
                    Label3.Text := '1-Atualize a porta USB pelo Gerenciador de Dispositivos' + #13 + '(dentro do Painel de controle) com a unidade de CD ' + #13 + 'ou pela internet, clicando com o bot�o direito ' + #13 + 'em qualquer USB';

                If (Edit1.Text = 'INSTALA��O INTERROMPIDA') Or (Edit1.Text = 'INSTALA�AOINTERROMPIDA') Or (Edit1.Text = 'INSTALA��O PELO PEN-DRIVE INTERROMPIDA') Or (Edit1.Text = 'INSTALA�AOPELOPEN-DRIVEINTERROMPIDA')Or (Edit1.Text = 'INSTALA�AOPELOPENDRIVEINTERROMPIDA') Or (Edit1.Text = 'INSTALA��O PELO HD EXTERNO INTERROMPIDA') Or (Edit1.Text = 'INSTALA�AOPELOHDEXTERNOINTERROMPIDA') Or (Edit1.Text = 'INSTALA��O DO PEN-DRIVE INTERROMPIDA') Or (Edit1.Text = 'INSTALA�AODOPEN-DRIVEINTERROMPIDA') Or (Edit1.Text = 'INSTALA�AODOPENDRIVEINTERROMPIDA')Or (Edit1.Text = 'INSTALA��O DO HD EXTERNO INTERROMPIDA') Or (Edit1.Text = 'INSTALA�AODOHDEXTERNOINTERROMPIDA') Then

                    Label3.Text := '1-Modifique a inicializa��o para o HD e n�o mais para o ' + #13 + 'Pen-drive ou HD externo no SETUP';

                 if (edit1.text = 'instala��o interrompida') or (edit1.text = 'instala�aointerrompida') or (edit1.text = 'instala��o pelo pen-drive interrompida') or (edit1.text = 'instala�aopelopen-driveinterrompida')or (edit1.text = 'instala�aopelopendriveinterrompida') or (edit1.text = 'instala��o pelo hd externo interrompida') or (edit1.text = 'instala�aopelohdexternointerrompida') or (edit1.text = 'instala��o do pen-drive interrompida') or (edit1.text = 'instala�aodopen-driveinterrompida') or (edit1.text = 'instala�aodopendriveinterrompida')or (edit1.text = 'instala��o do hd externo interrompida') or (edit1.text = 'instala�aodohdexternointerrompida') then
                     Label3.Text := '1-Modifique a inicializa��o para o HD e n�o mais para o ' + #13 + 'Pen-drive ou HD externo no SETUP';

                If (Edit1.Text = 'REINICIALIZA��O LENTA') Or (Edit1.Text = 'REINICIALIZA�AOLENTA') Or (Edit1.Text = 'INICIALIZA��O LENTA') Or (Edit1.Text = 'INICIALIZA�AOLENTA') Then

                    Label3.Text := '1-Reinstale o Sistema Operacional com uma parti��o l�gica,' + #13 + ' apenas';

                 if (edit1.text = 'reinicializa��o lenta') or (edit1.text = 'reinicializa�aolenta') or (edit1.text = 'inicializa��o lenta') or (edit1.text = 'inicializa�aolenta') then
                    Label3.Text := '1-Reinstale o Sistema Operacional com uma parti��o l�gica,' + #13 + ' apenas';

                If (Edit1.Text = 'WINDOWSIPCONFIGURATION') Or (Edit1.Text = 'MENSAGEMWINDOWSIPCONFIGURATION') Then

                    Label3.Text := '1-Instale o driver da placa de rede';

                 if (edit1.text = 'windowsipconfiguration') or (edit1.text = 'mensagemwindowsipconfiguration') then
                    Label3.Text := '1-Instale o driver da placa de rede';

                If (Edit1.Text = 'TELA AZUL NA INSTALA��O') Or (Edit1.Text = 'TELAAZULNAINSTALA�AO') Or (Edit1.Text = 'TELA AZUL NA INSTALA��O DO WINDOWS') Or (Edit1.Text = 'TELAAZULNAINSTALA�AODOWINDOWS') Then

                    Label3.Text := '1-Acontece em modelos de notebooks da Dell... Acesse a BIOS' + #13 + ' dele(Tecla F12) e v� at� SATA OPERATION, mude de AHCI' + #13 + ' para ATA';

                if (edit1.text = 'tela azul na instala��o') or (edit1.text = 'telaazulnainstala�ao') or (edit1.text = 'tela azul na instala��o do windows') or (edit1.text = 'telaazulnainstala�aodowindows') then
                    Label3.Text := '1-Acontece em modelos de notebooks da Dell... Acesse a BIOS' + #13 + ' dele(Tecla F12) e v� at� SATA OPERATION, mude de AHCI' + #13 + ' para ATA';

                If (Edit1.Text = 'V�RUS VOLTA') Or (Edit1.Text = 'VIRUSVOLTA') Or (Edit1.Text = 'V�RUS VOLTA AO REINICIAR') Or (Edit1.Text = 'VIRUSVOLTAAOREINICIAR') Or (Edit1.Text = 'V�RUS VOLTOU QUANDO REINICIOU') Or (Edit1.Text = 'VIRUSVOLTOUQUANDOREINICIOU') Or (Edit1.Text = 'V�RUS VOLTOU') Or (Edit1.Text = 'VIRUSVOLTOU') Then

                    Label3.Text := '1-Procure o BIOS UPDATE dentro da BIOS do seu PC e coloque-o' + #13 + ' como Disabled, assim os v�rus de BIOS n�o apagar�o a' + #13 + ' BIOS  2-Desligue o PC por 30 minutos e volte a ligar';

                if (edit1.text = 'v�rus volta') or (edit1.text = 'virusvolta') or (edit1.text = 'v�rus volta ao reiniciar') or (edit1.text = 'virusvoltaaoreiniciar') or (edit1.text = 'v�rus voltou quando reiniciou') or (edit1.text = 'virusvoltouquandoreiniciou') or (edit1.text = 'v�rus voltou') or (edit1.text = 'virusvoltou') then
                    Label3.Text := '1-Procure o BIOS UPDATE dentro da BIOS do seu PC e coloque-o' + #13 + ' como Disabled, assim os v�rus de BIOS n�o apagar�o a' + #13 + ' BIOS  2-Desligue o PC por 30 minutos e volte a ligar';


                If (Edit1.Text = 'WINDOWS TRAVA NA INICIALIZA��O') Or (Edit1.Text = 'WINDOWSTRAVANAINICIALIZA�AO') Or (Edit1.Text = 'TRAVA NA INICIALIZA��O') Or (Edit1.Text = 'TRAVANAINICIALIZA�AO') Or (Edit1.Text = 'DEMORAPRAINICIALIZAR') Or (Edit1.Text = 'DEMORAAOINICIALIZAR') Or (Edit1.Text = 'DEMORAPRAINICIAR') Or (Edit1.Text = 'DEMORAAOINICIAR') Then

                    Label3.Text := '1-ATUALIZE OS DRIVERS do chipset  2-TROQUE OS SLOTS das ' + #13 + 'placas de expans�o  3-ATIVE O LOG DE INICIALIZA��O, pressione' + #13 + ' F8 do Windows ao iniciar e escolha INICIAR COM LOG DE' + #13 + ' INICIALIZA��O, veja arquivo C:\WINDOWS\ntbtlog.TXT, ' + #13 + 'veja a �tima linha do arquivo';

                if (edit1.text = 'windows trava na inicializa��o') or (edit1.text = 'windowstravanainicializa�ao') or (edit1.text = 'trava na inicializa��o') or (edit1.text = 'travanainicializa�ao') or (edit1.text = 'demoraprainicializar') or (edit1.text = 'demoraaoinicializar') or (edit1.text = 'demoraprainiciar') or (edit1.text = 'demoraaoiniciar') then
                    Label3.Text := '1-ATUALIZE OS DRIVERS do chipset  2-TROQUE OS SLOTS das ' + #13 + 'placas de expans�o  3-ATIVE O LOG DE INICIALIZA��O, pressione' + #13 + ' F8 do Windows ao iniciar e escolha INICIAR COM LOG DE' + #13 + ' INICIALIZA��O, veja arquivo C:\WINDOWS\ntbtlog.TXT, ' + #13 + 'veja a �tima linha do arquivo';

                If (Edit1.Text = 'COMPUTADORLIGASOZINHO') Or (Edit1.Text = 'WINDOWSLIGASOZINHO') Or (Edit1.Text = 'LIGASOZINHO') Or (Edit1.Text = 'LIGA SEM APERTAR O BOT�O POWER') Or (Edit1.Text = 'LIGASEMAPERTAROBOTAOPOWER') Or (Edit1.Text = 'LIGA SEM APERTAR O BOT�O') Or (Edit1.Text = 'LIGASEMAPERTAROBOTAO') Or (Edit1.Text = 'LIGA SEM PRESSIONAR O BOT�O') Or (Edit1.Text = 'LIGASEMPRESSIONAROBOTAO') Then

                    Label3.Text := '1-Abra o CMOS SETUP(BIOS) e v� na se��o POWER MANAGEMENT, ' + #13 + 'ou equivalente, procure por WAKE UP EVENTS e desabilite Wake Up' + #13 + ' On Lan e Wake Up On Modem';

                if (edit1.text = 'computadorligasozinho') or (edit1.text = 'windowsligasozinho') or (edit1.text = 'ligasozinho') or (edit1.text = 'liga sem apertar o bot�o power') or (edit1.text = 'ligasemapertarobotaopower') or (edit1.text = 'liga sem apertar o bot�o') or (edit1.text = 'ligasemapertarobotao') or (edit1.text = 'liga sem pressionar o bot�o') or (edit1.text = 'ligasempressionarobotao') then
                    Label3.Text := '1-Abra o CMOS SETUP(BIOS) e v� na se��o POWER MANAGEMENT, ' + #13 + 'ou equivalente, procure por WAKE UP EVENTS e desabilite Wake Up' + #13 + ' On Lan e Wake Up On Modem';

                If (Edit1.Text = 'TELAPRETA') Or (Edit1.Text = 'VOLTANATELAPRETA') Or (Edit1.Text = 'COMPUTADORVOLTANATELAPRETA') Or (Edit1.Text = 'COMPUTADORLIGAEATELAFICA ESCURA') Or (Edit1.Text = 'TELAESCURA') Then

                    Label3.Text := '1-Insira o DVD do Windows - Clique Reparar o Computador ' + #13 + '- clique Prompt de Comando e digite C: agora digite CHKDSK /F /R ' + #13 + 'e d� Enter - Digite: BOOTREC.EXE /FIXBOOT - BOOTREC.EXE /FIXMBR ' + #13 + '- Digite Exit e d� Enter - Reinicie -  Se n�o resolver, ' + #13 + 'formate o PC.';

                if (edit1.text = 'telapreta') or (edit1.text = 'voltanatelapreta') or (edit1.text = 'computadorvoltanatelapreta') or (edit1.text = 'computadorligaeatelaficaescura') or (edit1.text = 'telaescura') then
                    Label3.Text := '1-Insira o DVD do Windows - Clique Reparar o Computador ' + #13 + '- clique Prompt de Comando e digite C: agora digite CHKDSK /F /R ' + #13 + 'e d� Enter - Digite: BOOTREC.EXE /FIXBOOT - BOOTREC.EXE /FIXMBR ' + #13 + '- Digite Exit e d� Enter - Reinicie -  Se n�o resolver, ' + #13 + 'formate o PC.';


                If (Edit1.Text = 'N�O COPIA NADA PARA O HD EXTERNO') Or (Edit1.Text = 'HD EXTERNO N�O COPIA NADA') Or (Edit1.Text = 'HDEXTERNONAOCOPIANADA') Or (Edit1.Text = 'HD EXTERNO N�O COPIA') Or (Edit1.Text = 'HDEXTERNONAOCOPIA') Or (Edit1.Text = 'N�O CONSIGO COPIAR NADA PARA O HD EXTERNO') Or (Edit1.Text = 'N�O CONSIGO COPIAR PARA O HD EXTERNO') Or (Edit1.Text = 'N�O COPIA') Or (Edit1.Text = 'NAOCOPIA') Or (Edit1.Text = 'N�O COPIA PARA O HD') Or (Edit1.Text = 'NAOCOPIAPARAOHD') Or (Edit1.Text = 'N�O COPIA PARA HD') Or (Edit1.Text = 'NAOCOPIAPARAHD') Then

                    Label3.Text := '1-Deixe o HD conectado - Pressione as teclas "Windows R" ' + #13 + '- digite no Executar: CHKDSK E: /F (Onde "E:" � a letra desse HD)';

                if (edit1.text = 'n�o copia nada para o hd externo') or (edit1.text = 'hd externo n�o copia nada') or (edit1.text = 'hdexternonaocopia nada') or (edit1.text = 'hd externo n�o copia') or (edit1.text = 'hdexternonaocopia') or (edit1.text = 'n�o consigo copiar nada para o hd externo') or (edit1.text = 'n�o consigo copiar para o hd externo') or (edit1.text = 'n�o copia') or (edit1.text = 'naocopia') or (edit1.text = 'n�o copia para o hd') or (edit1.text = 'naocopiaparaohd') or (edit1.text = 'n�o copia para hd') or (edit1.text = 'naocopiaparahd') then
                     Label3.Text := '1-Deixe o HD conectado - Pressione as teclas "Windows R" ' + #13 + '- digite no Executar: CHKDSK E: /F (Onde "E:" � a letra desse HD)';

                If (Edit1.Text = 'COMPUTADOR D� TELA AZUL E REINICIA') Or (Edit1.Text = 'COMPUTADORDATELAAZULEREINICIA') Or (Edit1.Text = 'TELA AZUL E REINICIA') Or (Edit1.Text = 'TELAAZUL') Or (Edit1.Text = 'HD') Or (Edit1.Text = 'DISCO') Or (Edit1.Text = 'HARDDISK') Then

                    Label3.Text := '1-Programa que realizou uma opera��o ilegal  2-Substitua ' + #13 + 'o HD  3-Formate o computador';

                if (edit1.text = 'computador d� tela azul e reinicia') or (edit1.text = 'computadordatelaazulereinicia') or (edit1.text = 'tela azul e reinicia') or (edit1.text = 'telaazul') or (edit1.text = 'hd') or (edit1.text = 'disco') or (edit1.text = 'harddisk') then
                    Label3.Text := '1-Programa que realizou uma opera��o ilegal  2-Substitua ' + #13 + 'o HD  3-Formate o computador';

                If (Edit1.Text = 'TECLAS N�O FUNCIONAM') Or (Edit1.Text = 'TECLASNAOFUNCIONAM') Or (Edit1.Text = 'TECLADO N�O FUNCIONA') Or (Edit1.Text = 'TECLADONAOFUNCIONA') Or (Edit1.Text = 'TECLA N�O FUNCIONA') Or (Edit1.Text = 'TECLANAOFUNCIONA') Then

                    Label3.Text := '1-Passe uma pin�a embaixo da tecla at� retirar os res�duos,' + #13 + ' se n�o conseguir retire a tecla com a pin�a e retire o res�duo' + #13 + ' e coloque-a novamente';
                if (edit1.text = 'teclas n�o funcionam') or (edit1.text = 'teclasnaofuncionam') or (edit1.text = 'teclado n�o funciona') or (edit1.text = 'tecladonaofunciona') or (edit1.text = 'tecla n�o funciona') or (edit1.text = 'teclanaofunciona') then
                    Label3.Text := '1-Passe uma pin�a embaixo da tecla at� retirar os res�duos,' + #13 + ' se n�o conseguir retire a tecla com a pin�a e retire o res�duo' + #13 + ' e coloque-a novamente';

                If (Edit1.Text = 'COMPUTADORTRAVANDO') Or (Edit1.Text = 'COMPUTADORAPITANDO') Or (Edit1.Text = 'TRAVANDO') Or (Edit1.Text = 'APITANDO') Or (Edit1.Text = 'TRAVAMENTO') Or (Edit1.Text = 'TRAVOU') Or (Edit1.Text = 'COMPUTADORTRAVOU') Or (Edit1.Text = 'COMPUTADORCOMTRAVAMENTO') Or (Edit1.Text = 'APITO') Or (Edit1.Text = 'APITOS') Then

                    Label3.Text := '1-Limpe os contatos da mem�ria RAM com uma borracha   ' + #13 + '2-Quando est� travando al�m de ser a mem�ria outro problema ' + #13 + 'pode ser o Cooler(Limpe-o ou substitua)';

                if (edit1.text = 'computadortravando') or (edit1.text = 'computadorapitando') or (edit1.text = 'travando') or (edit1.text = 'apitando') or (edit1.text = 'travamento') or (edit1.text = 'travou') or (edit1.text = 'computadortravou') or (edit1.text = 'computadorcomtravamento') or (edit1.text = 'apito') or (edit1.text = 'apitos') then
                    Label3.Text := '1-Limpe os contatos da mem�ria RAM com uma borracha   ' + #13 + '2-Quando est� travando al�m de ser a mem�ria outro problema ' + #13 + 'pode ser o Cooler(Limpe-o ou substitua)';

                If (Edit1.Text = 'APITOREPETIDO') Or (Edit1.Text = 'APITANDOREPETIDAMENTE') Or (Edit1.Text = 'COMPUTADORAPITANDOREPETIDAMENTE') Or (Edit1.Text = 'APITOSREPETIDOS') Then

                    Label3.Text := '1-A placa possui uma mem�ria instalada, podendo ser tamb�m' + #13 + ' defeito da Placa de V�deo, de Rede, etc.';

                if (edit1.text = 'apitorepetido') or (edit1.text = 'apitandorepetidamente') or (edit1.text = 'computadorapitandorepetidamente') or (edit1.text = 'apitosrepetidos') then
                    Label3.Text := '1-A placa possui uma mem�ria instalada, podendo ser tamb�m' + #13 + ' defeito da Placa de V�deo, de Rede, etc.';

                If (Edit1.Text = 'V�RUS') Or (Edit1.Text = 'VIRUS') Or (Edit1.Text = 'COMPUTADOR COM V�RUS') Or (Edit1.Text = 'COMPUTADORCOMVIRUS') Or (Edit1.Text = 'COMPUTADORCONTAMINADO') Or (Edit1.Text = 'CONTAMINA��O') Or (Edit1.Text = 'CONTAMINACAO') Or (Edit1.Text = 'CONTAMINADO') Then

                    Label3.Text := '1-Abra o Gerenciador de Tarefas(CTRL ALT DEL) e acesse ' + #13 + '"Processos", veja se h� processo suspeito, sendo v�rus clique ' + #13 + 'com o direito nele, op��o "Abrir Local do Arquivo" e ' + #13 + 'delete  2-Inicie o Windows no MODO DE SEGURAN�A e fa�a ' + #13 + 'uma Restaura��o de Sistema';

                if (edit1.text = 'v�rus') or (edit1.text = 'virus') or (edit1.text = 'computador com v�rus') or (edit1.text = 'computadorcomvirus') or (edit1.text = 'computadorcontaminado') or (edit1.text = 'contamina��o') or (edit1.text = 'contaminacao') or (edit1.text = 'contaminado') then
                     Label3.Text := '1-Abra o Gerenciador de Tarefas(CTRL ALT DEL) e acesse ' + #13 + '"Processos", veja se h� processo suspeito, sendo v�rus clique ' + #13 + 'com o direito nele, op��o "Abrir Local do Arquivo" e ' + #13 + 'delete  2-Inicie o Windows no MODO DE SEGURAN�A e fa�a ' + #13 + 'uma Restaura��o de Sistema';

                If (Edit1.Text = 'BOOTMGR') Or (Edit1.Text = 'FALTABOOTMGR') Or (Edit1.Text = 'BOOTMBR') Or (Edit1.Text = 'FALTABOOTMBR') Or (Edit1.Text = 'MENSAGEMFALTABOOTMGR') Or (Edit1.Text = 'MENSAGEMFALTABOOTMBR') Or (Edit1.Text = 'SEMBOOTMGR') Or (Edit1.Text = 'SEMBOOTMBR') Then

                    Label3.Text := 'DVD do Windows - Clique "Reparar o Sistema" e clique ' + #13 + '"Use as Ferramentas de Recupera��o" selecione sistema operacional ' + #13 + '- clique "Prompt de Comando", Digite:BOOTSECT /NT60 ALL ' + #13 + '/FORCE /MBR, BOOTREC /FIXMBR, BOOTREC /FIXBOOT, ' + #13 + 'BOOTREC /REBUILDBCD';

                if (edit1.text = 'bootmgr') or (edit1.text = 'faltabootmgr') or (edit1.text = 'bootmbr') or (edit1.text = 'faltabootmbr') or (edit1.text = 'mensagemfaltabootmgr') or (edit1.text = 'mensagemfaltabootmbr') or (edit1.text = 'sembootmgr') or (edit1.text = 'sembootmbr') then
                     Label3.Text := 'DVD do Windows - Clique "Reparar o Sistema" e clique ' + #13 + '"Use as Ferramentas de Recupera��o" selecione sistema operacional ' + #13 + '- clique "Prompt de Comando", Digite:BOOTSECT /NT60 ALL ' + #13 + '/FORCE /MBR, BOOTREC /FIXMBR, BOOTREC /FIXBOOT, ' + #13 + 'BOOTREC /REBUILDBCD';

                If (Edit1.Text = 'INSIRAODISCOPARACONTINUAR') Or (Edit1.Text = 'MENSAGEMINSIRAODISCOPARACONTINUAR') Then

                    Label3.Text := '1-Copie todos os arquivos do CD/DVD para o computador e ' + #13 + 'inicie a instala��o l�';

                if (edit1.text = 'insiraodiscoparacontinuar') or (edit1.text = 'mensageminsiraodiscoparacontinuar') then
                    Label3.Text := '1-Copie todos os arquivos do CD/DVD para o computador e ' + #13 + 'inicie a instala��o l�';

                If (Edit1.Text = 'RECUPERARARQUIVOS') Or (Edit1.Text = 'RECUPERARARQUIVOSDEHD') Or (Edit1.Text = 'RECUPERARARQUIVOSDEHDDANIFICADO') Or (Edit1.Text = 'RECUPERAR') Or (Edit1.Text = 'RECUPERARHD') Then

                    Label3.Text := '1-Utilize o Programa Recuva ou o Active File Recovery';

                if (edit1.text = 'recuperararquivos') or (edit1.text = 'recuperararquivosdehd') or (edit1.text = 'recuperararquivosdehddanificado') or (edit1.text = 'recuperar') or (edit1.text = 'recuperarhd') then
                    Label3.Text := '1-Utilize o Programa Recuva ou o Active File Recovery';

                If (Edit1.Text = 'COMPUTADORLENTO') Or (Edit1.Text = 'LENTO') Or (Edit1.Text = 'EST� LENTO') Or (Edit1.Text = 'ESTALENTO') Or (Edit1.Text = 'LENTID�O') Or (Edit1.Text = 'LENTIDAO') Or (Edit1.Text = 'EST� COM LENTID�O') Or (Edit1.Text = 'ESTACOMLENTIDAO') Then

                    Label3.Text := '1-Utilize o Desfragmentador de disco do Windows ou baixe um   ' + #13 + '2-V� em configura��es do Windows 10 + Atualiza��o e seguran�a ' + #13 + '+ Recupera��o + Reiniciar agora e escolha a op��o ' + #13 + 'de Iniciar em Modo de Seguran�a';

                if (edit1.text = 'computadorlento') or (edit1.text = 'lento') or (edit1.text = 'est� lento') or (edit1.text = 'estalento') or (edit1.text = 'lentid�o') or (edit1.text = 'lentidao') or (edit1.text = 'est� com lentid�o') or (edit1.text = 'estacomlentidao') then
                    Label3.Text := '1-Utilize o Desfragmentador de disco do Windows ou baixe um   ' + #13 + '2-V� em configura��es do Windows 10 + Atualiza��o e seguran�a ' + #13 + '+ Recupera��o + Reiniciar agora e escolha a op��o ' + #13 + 'de Iniciar em Modo de Seguran�a';

                If (Edit1.Text = 'CONEX�O NULA') Or (Edit1.Text = 'CONEXAONULA') Or (Edit1.Text = 'CONEX�O LIMITADA') Or (Edit1.Text = 'MENSAGEM CONEX�O NULA') Or (Edit1.Text = 'MENSAGEMCONEXAONULA') Or (Edit1.Text = 'MENSAGEM CONEX�O LIMITADA') Or (Edit1.Text = 'MENSAGEMCONEXAOLIMITADA') Or (Edit1.Text = 'LIMITADA') Or (Edit1.Text = 'INTERNETLIMITADA') Then

                    Label3.Text := '1-Painel de controle, Central de rede e compartilhamento, ' + #13 + 'Alterar configura��es do adaptador, clique sobre sua conex�o, ' + #13 + 'Propriedades + bot�o Configurar + guia Driver + ' + #13 + 'Atualizar Driver';

                if (edit1.text = 'conex�o nula') or (edit1.text = 'conexaonula') or (edit1.text = 'conex�o limitada') or (edit1.text = 'mensagem conex�o nula') or (edit1.text = 'mensagemconexaonula') or (edit1.text = 'mensagem conex�o limitada') or (edit1.text = 'mensagemconexaolimitada') or (edit1.text = 'limitada') or (edit1.text = 'internetlimitada') then
                    Label3.Text := '1-Painel de controle, Central de rede e compartilhamento, ' + #13 + 'Alterar configura��es do adaptador, clique sobre sua conex�o, ' + #13 + 'Propriedades + bot�o Configurar + guia Driver + ' + #13 + 'Atualizar Driver';

                If (Edit1.Text = 'NULA') Or (Edit1.Text = 'CONEXAO') Or (Edit1.Text = 'LIMITADA') Or (Edit1.Text = 'CONEX�O') Or (Edit1.Text = 'MENSAGEMCONEXAO') Or (Edit1.Text = 'MENSAGEM CONEX�O') Then

                    Label3.Text := '1-clique guia Gerenciamento de energia, desmarque op��o ' + #13 + '"Computador pode desligar o dispositivo para economizar energia"';

                if (edit1.text = 'nula') or (edit1.text = 'conexao') or (edit1.text = 'limitada') or (edit1.text = 'conex�o') or (edit1.text = 'mensagemconexao') or (edit1.text = 'mensagem conex�o') then
                    Label3.Text := '1-clique guia Gerenciamento de energia, desmarque op��o ' + #13 + '"Computador pode desligar o dispositivo para economizar energia"';

                             If (Edit1.Text = 'CONEX�O N�O � PARTICULAR') Or (Edit1.Text = 'CONEXAONAOEPARTICULAR') Or (Edit1.Text = 'MENSAGEM CONEX�O N�O � PARTICULAR') Or (Edit1.Text = 'MENSAGEMCONEXAONAEPARTICULAR') Then

                    Label3.Text := '1-Verifique a data d computador';

              if (edit1.text = 'conex�o n�o � particular') or (edit1.text = 'conexaonaoeparticular') or (edit1.text = 'mensagem conex�o n�o � particular') or (edit1.text = 'mensagemconexaonaeparticular') then
                   Label3.Text := '1-Verifique a data d computador';


                If (Edit1.Text = 'INTERNETLIMITADA')or(Edit1.Text = 'LIMITADA')or(Edit1.Text = 'SEMCONEXAO')or(Edit1.Text = 'SEM CONEX�O')Then

                    Label3.Text := '1-Abra o Prompt(Execute como administrador)digite: ' + #13 + 'NETSH WINSOCK RESET, IPCONFIG /ALL, IPCONFIG /RELEASE, ' + #13 + 'e reinicie o computador';

                if (edit1.text = 'internetlimitada')or(edit1.text = 'limitada')or(edit1.text = 'semconexao')or(edit1.text = 'sem conex�o')then
                     Label3.Text := '1-Abra o Prompt(Execute como administrador)digite: ' + #13 + 'NETSH WINSOCK RESET, IPCONFIG /ALL, IPCONFIG /RELEASE, ' + #13 + 'e reinicie o computador';

                If (Edit1.Text = 'INTERNETTRAVANDO') Or (Edit1.Text = 'NAVEGADORTRAVANDO') Or (Edit1.Text = 'BROWSERTRAVANDO') Or (Edit1.Text = 'CONEX�O TRAVANDO') Or (Edit1.Text = 'CONEXAOTRAVANDO') Or (Edit1.Text = 'INTERNETTRAVA') Or (Edit1.Text = 'CONEX�O TRAVA') Or (Edit1.Text = 'CONEXAOTRAVA') Then

                    Label3.Text := '1-Fa�a uma limpeza de cache no navegador   ' + #13 + '2-Exclua o hist�rico de navega�o em Op��es da Internet dentro ' + #13 + 'do Painel de controle';

                if (edit1.text = 'internettravando') or (edit1.text = 'navegadortravando') or (edit1.text = 'browsertravando') or (edit1.text = 'conex�o travando') or (edit1.text = 'conexaotravando') or (edit1.text = 'internettrava') or (edit1.text = 'conex�o trava') or (edit1.text = 'conexaotrava') then
                    Label3.Text := '1-Fa�a uma limpeza de cache no navegador   ' + #13 + '2-Exclua o hist�rico de navega�o em Op��es da Internet dentro ' + #13 + 'do Painel de controle';


                If (Edit1.Text = 'ROTEADOR N�O LOCALIZADO') Or (Edit1.Text = 'ROTEADORNAOLOCALIZADO') Or (Edit1.Text = 'ROTEADOR N�O ENCONTRADO') Or (Edit1.Text = 'ROTEADORNAOENCONTRADO') Or (Edit1.Text = 'P�GINA DE CONFIGURA��O DO ROTEADOR N�O � EXIBIDA') Or (Edit1.Text = 'PAGINADECONFIGURACAODOROTEADORNAOEEXIBIDA') Or (Edit1.Text = 'PAGINADOROTEADORNAOEEXIBIDA') Or (Edit1.Text = 'P�GINA DO ROTEADOR N�O � EXIBIDA') Then

                    Label3.Text := '1-Configure o IP da m�quina para receber IP' + #13 + ' DHCP(Din�mico)';

                if (edit1.text = 'roteador n�o localizado') or (edit1.text = 'roteadornaolocalizado') or (edit1.text = 'roteador n�o encontrado') or (edit1.text = 'roteadornaoencontrado') or (edit1.text = 'p�gina de configura��o do roteador n�o � exibida') or (edit1.text = 'paginadeconfiguracaodoroteadornaoeexibida') or (edit1.text = 'paginadoroteadornaoeexibida') or (edit1.text = 'p�gina do roteador n�o � exibida') then
                    Label3.Text := '1-Configure o IP da m�quina para receber IP' + #13 + ' DHCP(Din�mico)';

                If (Edit1.Text = 'CERTIFICADODESEGURAN�A') Or (Edit1.Text = 'CERTIFICADODESEGURANCA') Or (Edit1.Text = 'MENSAGEMCERTIFICADODESEGURAN�A') Or (Edit1.Text = 'MENSAGEMCERTIFICADODESEGURANCA')Or (Edit1.Text = 'CERTIFICADO') Then

                    Label3.Text := '1-Em Op��es da Internet v� na guia Avan�adas e ' + #13 + 'na lista exibida procure por Seguran�a e desmarque ' + #13 + '"Verificar Revoga��o de Certificados do Servidor" e ' + #13 + 'desmarque "SSL"';

                if (edit1.text = 'certificadodeseguran�a') or (edit1.text = 'certificadodeseguranca') or (edit1.text = 'mensagemcertificadodeseguran�a') or (edit1.text = 'mensagemcertificadodeseguranca')or (edit1.text = 'certificado') then
                   Label3.Text := '1-Em Op��es da Internet v� na guia Avan�adas e ' + #13 + 'na lista exibida procure por Seguran�a e desmarque ' + #13 + '"Verificar Revoga��o de Certificados do Servidor" e ' + #13 + 'desmarque "SSL"';

                If (Edit1.Text = 'SEMINTERNET') Or (Edit1.Text = 'SEMSINAL') Or (Edit1.Text = 'SEMSINALDEINTERNET') Or (Edit1.Text = 'INTERNET') Or (Edit1.Text = 'SEM CONEX�O') Or (Edit1.Text = 'SEMCONEXAO') Or (Edit1.Text = 'CONEX�O') Or (Edit1.Text = 'CONEXAO') Or (Edit1.Text = 'N�O CONECTA') Or (Edit1.Text = 'NAOCONECTA') Or (Edit1.Text = 'INTERNET N�O FUNCIONA') Or (Edit1.Text = 'INTERNETNAOFUNCIONA') Then

                    Label3.Text := '1-Resete o Modem 2-Desconecte e conecte o Modem ' + #13 + '3-Veja se seu adaptador da conex�o est� com IP est�tico, ' + #13 + 'mude para(DHCP) nas propriedades do adaptador ' + #13 + '4-No prompt digite: IPCONFIG /RELEASE && IPCONFIG /RENEW ' + #13 + '&& IPCONFIG /FLUSHDNS';

               if (edit1.text = 'seminternet') or (edit1.text = 'semsinal') or (edit1.text = 'semsinaldeinternet') or (edit1.text = 'internet') or (edit1.text = 'sem conex�o') or (edit1.text = 'semconexao') or (edit1.text = 'conex�o') or (edit1.text = 'conexao') or (edit1.text = 'n�o conecta') or (edit1.text = 'naoconecta') or (edit1.text = 'internet n�o funciona') or (edit1.text = 'internetnaofunciona') then
                     Label3.Text := '1-Resete o Modem 2-Desconecte e conecte o Modem ' + #13 + '3-Veja se seu adaptador da conex�o est� com IP est�tico, ' + #13 + 'mude para(DHCP) nas propriedades do adaptador ' + #13 + '4-No prompt digite: IPCONFIG /RELEASE && IPCONFIG /RENEW ' + #13 + '&& IPCONFIG /FLUSHDNS';

                If (Edit1.Text = 'CONEX�O CAINDO') Or (Edit1.Text = 'CONEXAOCAINDO') Or (Edit1.Text = 'INTERNETCAINDO') Or (Edit1.Text = 'CAINDO') Or (Edit1.Text = 'CAIUAINTERNET') Or (Edit1.Text = 'CONEXAORUIM') Or (Edit1.Text = 'CONEX�O RUIM') Or (Edit1.Text = 'CONEXAOCAI') Or (Edit1.Text = 'CONEX�O CAI') Or (Edit1.Text = 'CONEX�O CAI TODA HORA') Or (Edit1.Text = 'CONEXAOCAITODAHORA') Or (Edit1.Text = 'CONEX�O SEMPRE CAI') Or (Edit1.Text = 'CONEXAOSEMPRECAI') Then

                    Label3.Text := '1-Ignore o roteador e conecte o Modem diretamente ' + #13 + 'no seu PC. Se perrsistir o problema configure o ' + #13 + 'Modem para modo Bridge';

                if (edit1.text = 'conex�o caindo') or (edit1.text = 'conexaocaindo') or (edit1.text = 'internetcaindo') or (edit1.text = 'caindo') or (edit1.text = 'caiuainternet') or (edit1.text = 'conexaoruim') or (edit1.text = 'conex�o ruim') or (edit1.text = 'conexaocai') or (edit1.text = 'conex�o cai') or (edit1.text = 'conex�o cai toda hora') or (edit1.text = 'conexaocaitodahora') or (edit1.text = 'conex�o sempre cai') or (edit1.text = 'conexaosemprecai') then
                    Label3.Text := '1-Ignore o roteador e conecte o Modem diretamente ' + #13 + 'no seu PC. Se perrsistir o problema configure o ' + #13 + 'Modem para modo Bridge';

                If (Edit1.Text = 'N�O ABRE ARQUIVO') Or (Edit1.Text = 'NAOABREARQUIVO') Or (Edit1.Text = 'ARQUIVO N�O ABRE') Or (Edit1.Text = 'ARQUIVONAOABRE') Or (Edit1.Text = 'N�O EST� ABRINDO ARQUIVO') Or (Edit1.Text = 'NAOESTAABRINDOARQUIVO') Or (Edit1.Text = 'NAOESTAABRINDOOARQUIVO') Or (Edit1.Text = 'N�O EST� ABRINDO O ARQUIVO') Or (Edit1.Text = 'N�OQUERABRIRARQUIVO') Or (Edit1.Text = 'NAOQUERABRIRARQUIVO') Or (Edit1.Text = 'N�O QUER ABRIR O ARQUIVO') Or (Edit1.Text = 'NAOQUERABRIROARQUIVO') Then

                    Label3.Text := '1-Use um programa para limpar o registro do Windows.';

                if (edit1.text = 'n�o abre arquivo') or (edit1.text = 'naoabrearquivo') or (edit1.text = 'arquivo n�o abre') or (edit1.text = 'arquivonaoabre') or (edit1.text = 'n�o est� abrindo arquivo') or (edit1.text = 'naoestaabrindoarquivo') or (edit1.text = 'naoestaabrindooarquivo') or (edit1.text = 'n�o est� abrindo o arquivo') or (edit1.text = 'n�oquerabrirarquivo') or (edit1.text = 'naoquerabrirarquivo') or (edit1.text = 'n�o quer abrir o arquivo') or (edit1.text = 'naoquerabriroarquivo') then
                    Label3.Text := '1-Use um programa para limpar o registro do Windows.';

                If (Edit1.Text = 'N�O ABRE PASTA') Or (Edit1.Text = 'NAOABREPASTA') Or (Edit1.Text = 'PASTA N�O ABRE') Or (Edit1.Text = 'PASTANAOABRE') Or (Edit1.Text = 'N�O EST� ABRINDO PASTA') Or (Edit1.Text = 'NAOESTAABRINDOPASTA') Or (Edit1.Text = 'NAOESTAABRINDOAPASTA') Or (Edit1.Text = 'N�O EST� ABRINDO A PASTA') Or (Edit1.Text = 'N�O QUER ABRIR PASTA') Or (Edit1.Text = 'NAOQUERABRIRPASTA') Or (Edit1.Text = 'N�O QUER ABRIR A PASTA') Or (Edit1.Text = 'NAOQUERABRIRAPASTA') Then

                    Label3.Text := '1-Use um programa para limpar o registro do Windows';
                                if (edit1.text = 'windows n�o pode ser instalado nesse disco a parti��o � uma parti��o de recupera��o da microsoft') or (edit1.text = 'windowsnaopodeserinstaladonessediscoaparticaoeumaparticaoderecuperacaodamicrosoft') or (edit1.text = 'mensagem windows n�o pode ser instalado nesse disco a parti��o � uma parti��o de recupera��o da microsoft') or (edit1.text = 'mensagemwindowsnaopodeserinstaladonessediscoaparticaoeumaparticaoderecuperacaodamicrosoft') or (edit1.text = 'windows n�o pode ser instalado nesse disco. a parti��o � uma parti��o de recupera��o da microsoft') or (edit1.text = 'windowsnaopodeserinstaladonessedisco.aparti�aoeumaparticaoderecuperacaodamicrosoft') or (edit1.text = 'parti��o de recupera��o da microsoft') or (edit1.text = 'particaoderecuperacaodamicrosoft') or (edit1.text = 'windows n�o pode ser instalado') or (edit1.text = 'windowsnaopodeserinstalado') or (edit1.text = 'windows n�o instala') or (edit1.text = 'windowsnaoinstala') or (edit1.text = 'nao instala windows') or (edit1.text = 'n�o instala windows') or (edit1.text = 'n�oinstala') or (edit1.text = 'naoinstala') or (edit1.text = 'falhanainstala��o') or (edit1.text = 'falhanainstalacao') or (edit1.text = 'falha na instala��o do windows') or (edit1.text = 'falhanainstalacaodowindows') or (edit1.text = 'naoinstalaowindows')then
                    Label3.Text := '1-Abra o prompt de comando e informe os comandos: ' + #13 + 'DISKPART <ENTER> LIST DISK <ENTER> SELECT DISK 0 <ENTER>' + #13 + ' CLEAN <ENTER> CONVERT GPT <ENTER> EXIT <ENTER>';

                If (Edit1.Text = 'DESKTOPTRAVADO') Or (Edit1.Text = '�REA DE TRABALHO TRAVADA') Or (Edit1.Text = 'AREADETRABALHOTRAVADA') Or (Edit1.Text = 'WINDOWSTRAVADO') Or (Edit1.Text = 'WINDOWS EST� TRAVADO') Or (Edit1.Text = 'WINDOWSESTATRAVADO')  Or (Edit1.Text = 'WINDOWSTATRAVADO')Or (Edit1.Text = 'WINDOWSFICOUTRAVADO') Or (Edit1.Text = 'FICOUTRAVADO') Or (Edit1.Text = 'EST� TRAVADO') Or (Edit1.Text = 'TATRAVADO') Or (Edit1.Text = 'ESTATRAVADO') Or (Edit1.Text = 'TRAVADO') Or (Edit1.Text = 'TRAVOU') Or (Edit1.Text = '�REA DE TRABALHO CONGELOU') Or (Edit1.Text = '�REA DE TRABALHO CONGELADA') Or (Edit1.Text = 'AREADETRABALHOCONGELADA') Or (Edit1.Text = 'AREADETRABALHOCONGELOU') Or (Edit1.Text = 'DESKTOPCONGELOU') Or (Edit1.Text = 'DESKTOPCONGELADO') Or (Edit1.Text = 'CONGELADO') Or (Edit1.Text = 'CONGELOU') Or (Edit1.Text = 'CONGELA') Then

                    Label3.Text := '1-Pressione as teclas CTRL ALT DEL para abrir o ' + #13 + 'Gerenciador de tarefas + clique na guia Aplicativos + ' + #13 + 'bot�o Nova Tarefa + Informe: EXPLORER';

                if (edit1.text = 'runtimeerror') or (edit1.text = 'mensagemruntimeerror') or (edit1.text = 'runtimeerror') or (edit1.text = 'mensagemruntimeerror') then
                    Label3.Text := '1-Iniciar + Executar + digite MSCONFIG + na guia ' + #13 + 'Servi�os op��o "Ocultar todos servi�os Microsof" clique ' + #13 + 'no bot�o "Desativar tudo" + na guia "Inicializa��o de ' + #13 + 'Programas" clique em Desativar tudo + clique ' + #13 + 'em Aplicar e reinicie o Windows';

                if (edit1.text = 'desktoptravado') or (edit1.text = '�rea de trabalho travada') or (edit1.text = 'areadetrabalhotravada') or (edit1.text = 'windowstravado') or (edit1.text = 'windows est� travado') or (edit1.text = 'windowsestatravado')or (edit1.text = 'windowstatravado') or (edit1.text = 'windowsficoutravado') or (edit1.text = 'ficoutravado') or (edit1.text = 'est� travado') or (edit1.text = 'estatravado')or (edit1.text = 'tatravado') or (edit1.text = 'travado') or (edit1.text = 'travou') or (edit1.text = '�rea de trabalho congelou') or (edit1.text = '�rea de trabalho congelada') or (edit1.text = 'areadetrabalhocongelada') or (edit1.text = 'areadetrabalhocongelou') or (edit1.text = 'desktopcongelou') or (edit1.text = 'desktopcongelado') or (edit1.text = 'congelado') or (edit1.text = 'congelou') or (edit1.text = 'congela') then
                     Label3.Text := '1-Pressione as teclas CTRL ALT DEL para abrir o ' + #13 + 'Gerenciador de tarefas + clique na guia Aplicativos + ' + #13 + 'bot�o Nova Tarefa + Informe: EXPLORER';

                If (Edit1.Text = 'WINDOWS N�O PODE SER INSTALADO NESSE DISCO A PARTI��O � UMA PARTI��O DE RECUPERA��O DA MICROSOFT') Or (Edit1.Text = 'WINDOWSNAOPODESERINSTALADONESSEDISCOAPARTICAOEUMAPARTICAODERECUPERACAODAMICROSOFT') Or (Edit1.Text = 'MENSAGEM WINDOWS N�O PODE SER INSTALADO NESSE DISCO A PARTI��O � UMA PARTI��O DE RECUPERA��O DA MICROSOFT') Or (Edit1.Text = 'MENSAGEMWINDOWSNAOPODESERINSTALADONESSEDISCOAPARTICAOEUMAPARTICAODERECUPERACAODAMICROSOFT') Or (Edit1.Text = 'WINDOWS N�O PODE SER INSTALADO NESSE DISCO. A PARTI��O � UMA PARTI��O DE RECUPERA��O DA MICROSOFT') Or (Edit1.Text = 'WINDOWSNAOPODESERINSTALADONESSEDISCO.APARTI�AOEUMAPARTICAODERECUPERACAODAMICROSOFT') Or (Edit1.Text = 'PARTI��O DE RECUPERA��O DA MICROSOFT') Or (Edit1.Text = 'PARTICAODERECUPERACAODAMICROSOFT') Or (Edit1.Text = 'WINDOWS N�O PODE SER INSTALADO') Or (Edit1.Text = 'WINDOWSNAOPODESERINSTALADO') Or (Edit1.Text = 'WINDOWS N�O INSTALA') Or (Edit1.Text = 'WINDOWSNAOINSTALA') Or (Edit1.Text = 'NAOINSTALAWINDOWS') Or (Edit1.Text = 'N�O INSTALA WINDOWS') Or (Edit1.Text = 'N�O INSTALA') Or (Edit1.Text = 'NAOINSTALA') Or (Edit1.Text = 'FALHA NA INSTALA��O') Or (Edit1.Text = 'FALHANAINSTALACAO') Or (Edit1.Text = 'FALHA NA INSTALA��O DO WINDOWS') Or (Edit1.Text = 'FALHANAINSTALACAODOWINDOWS') Then
                     Label3.Text := '1-Iniciar + Executar + digite MSCONFIG + na guia ' + #13 + 'Servi�os op��o "Ocultar todos servi�os Microsof" clique ' + #13 + 'no bot�o "Desativar tudo" + na guia "Inicializa��o de ' + #13 + 'Programas" clique em Desativar tudo + clique ' + #13 + 'em Aplicar e reinicie o Windows';


                If Label3.Text = '' Then
                  begin
                    Label4.Visible := True;
                    Label4.Text := procura + 'N�o est� relacionado, defina a pesquisa com outro nome.';
                  End;
             end; //fecha computador





          If (Label2.Text='TV') then
          begin
          Label3.Visible:=true;
          //Try
                procura:=StringReplace(procura,' ',EmptyStr,[rfReplaceAll]);
                Edit1.Text:=removeAcentos(procura);

                If (Edit1.Text = 'NAOILUMINA') Or (Edit1.Text = 'DEUPAU') Or (Edit1.Text = 'N�O ILUMINA') Or (Edit1.Text = 'FALTA ILUMINA��O') Or (Edit1.Text = 'FALTAILUMINA�AO') Or (Edit1.Text = 'FALTAILUMINACAO') Or (Edit1.Text = 'SEM V�DEO') Or (Edit1.Text = 'SEMVIDEO') Or (Edit1.Text = 'V�DEO') Or (Edit1.Text = 'VIDEO') Or (Edit1.Text = 'ILUMINA��O') Or (Edit1.Text = 'ILUMINA�AO') Or (Edit1.Text = 'ILUMINACAO') Or (Edit1.Text = 'SEM ILUMINA��O') Or (Edit1.Text = 'SEMILUMINACAO') Or (Edit1.Text = 'SEMILUMINA�AO') Or (Edit1.Text = 'SEMLUZ')Then

                    Label3.Text := '1-Pode ser l�mpada queimada no display ou na fonte ' + #13 + ' inverter   2-Se aparecer manchas � devido � quebra ' + #13 + ' do display   3-Quando ocorrem riscos � devido � queima de um' + #13 + ' dos CIs';

                if (edit1.text = 'nao ilumina') or (edit1.text = 'deu pau') or (edit1.text = 'n�o ilumina') or (edit1.text = 'falta ilumina��o') or (edit1.text = 'faltailumina�ao') or (edit1.text = 'faltailuminacao') or (edit1.text = 'sem v�deo') or (edit1.text = 'semvideo') or (edit1.text = 'v�deo') or (edit1.text = 'video') or (edit1.text = 'ilumina��o') or (edit1.text = 'ilumina�ao') or (edit1.text = 'iluminacao') or (edit1.text = 'sem ilumina��o') or (edit1.text = 'semiluminacao') or (edit1.text = 'semilumina�ao') or (edit1.text = 'semluz')then
                   Label3.Text := '1-Pode ser l�mpada queimada no display ou na fonte ' + #13 + ' inverter   2-Se aparecer manchas � devido � quebra ' + #13 + ' do display   3-Quando ocorrem riscos � devido � queima de um' + #13 + ' dos CIs';

                If (Edit1.Text = 'N�O LIGA') Or (Edit1.Text = 'NAOLIGA') Or (Edit1.Text = 'N�O ACENDE') Or (Edit1.Text = 'NAOACENDE') Or (Edit1.Text = 'N�O ACENDE O PAINEL') Or (Edit1.Text = 'NAOACENDEOPAINEL') Or (Edit1.Text = 'LIGAEACENDEOPAINEL') Or (Edit1.Text = 'N�O FUNCIONA') Or (Edit1.Text = 'NAOFUNCIONA') Or (Edit1.Text = 'EST� QUEBRADO') Or (Edit1.Text = 'ESTAQUEBRADO') Or (Edit1.Text = 'QUEBRADO') Or (Edit1.Text = 'N�O EST� FUNCIONANDO') Or (Edit1.Text = 'NAOESTAFUNCIONANDO') Or (Edit1.Text = 'N�O EST� LIGANDO') Or (Edit1.Text = 'NAOESTALIGANDO') Or (Edit1.Text = 'NAOESTAFUNCIONANDO') Or (Edit1.Text = 'NAOESTALIGANDO') Or (Edit1.Text = 'N�O QUER LIGAR') Or (Edit1.Text = 'N�O QUER FUNCIONAR') Or (Edit1.Text = 'NAOQUERLIGAR') Or (Edit1.Text = 'NAOQUERFUNCIONAR') Or (Edit1.Text = 'NAOLIGA') Or (Edit1.Text = 'NAOACENDE') Then

                    Label3.Text := '1-Pode ser a fonte externa(se possuir) ou os CIs reguladores ' + #13 + 'de tens�o internos que alimentam os circuitos ou ainda ' + #13 + 'no CI micro 2-Procure defeito na �rea do CI micro';

                if (edit1.text = 'n�o liga') or (edit1.text = 'naoliga') or (edit1.text = 'n�o acende') or (edit1.text = 'naoacende') or (edit1.text = 'n�o acende o painel') or (edit1.text = 'naoacendeopainel') or (edit1.text = 'ligaeacendeopainel') or (edit1.text = 'n�o funciona') or (edit1.text = 'naofunciona') or (edit1.text = 'est� quebrado') or (edit1.text = 'estaquebrado') or (edit1.text = 'quebrado') or (edit1.text = 'n�o est� funcionando') or (edit1.text = 'naoestafuncionando') or (edit1.text = 'n�o est� ligando') or (edit1.text = 'naoestaligando') or (edit1.text = 'naoestafuncionando') or (edit1.text = 'naoestaligando') or (edit1.text = 'n�o quer ligar') or (edit1.text = 'n�o quer funcionar') or (edit1.text = 'naoquerligar') or (edit1.text = 'naoquerfuncionar') or (edit1.text = 'naoliga') or (edit1.text = 'naoacende') then
                    Label3.Text := '1-Pode ser a fonte externa(se possuir) ou os CIs reguladores ' + #13 + 'de tens�o internos que alimentam os circuitos ou ainda ' + #13 + 'no CI micro 2-Procure defeito na �rea do CI micro';

                If (Edit1.Text = 'N�O EST� SUBINDO V�DEO') Or (Edit1.Text = 'N�O SOBE V�DEO') Or (Edit1.Text = 'SUBINDO V�DEO') Or (Edit1.Text = 'N�O SUBIU V�DEO') Or (Edit1.Text = 'NAOESTASUBINDOVIDEO') Or (Edit1.Text = 'NAOSOBEVIDEO') Or (Edit1.Text = 'SUBINDOVIDEO') Or (Edit1.Text = 'NAOSUBIUVIDEO') Or (Edit1.Text = 'IMAGEM') Or (Edit1.Text = 'SEMIMAGEM') Or (Edit1.Text = 'ACENDE MAS N�O TEM IMAGEM') Or (Edit1.Text = 'ACENDEMASNAOTEMIMAGEM') Or (Edit1.Text = 'ACENDE MAS N�O APARECE IMAGEM') Or (Edit1.Text = 'ACENDEMASNAOAPARECEIMAGEM') Or (Edit1.Text = 'ACENDE MAS N�O APARECE NADA') Or (Edit1.Text = 'ACENDEMASNAOAPARECENADA') Or (Edit1.Text = 'N�O APARECE IMAGEM') Or (Edit1.Text = 'NAOAPARECEIMAGEM') Or (Edit1.Text = 'DEFEITONAIMAGEM') Or (Edit1.Text = 'DEFEITODEIMAGEM') Then

                    Label3.Text := '1-Teste os circuitos de imagem ligando v�rios equipamentos na ' + #13 + 'TV - Se aparecer imagem junto com o menu na tela(OSD), ' + #13 + 'o CI Scaler est� funcionando, caso contr�rio o Scaler ' + #13 + 'est� causando defeito';

                if (edit1.text = 'n�o est� subindo v�deo') or (edit1.text = 'n�o sobe v�deo') or (edit1.text = 'subindo v�deo') or (edit1.text = 'n�o subiu v�deo') or (edit1.text = 'naoestasubindovideo') or (edit1.text = 'naosobevideo') or (edit1.text = 'subindovideo') or (edit1.text = 'naosubiuvideo') or (edit1.text = 'imagem') or (edit1.text = 'semimagem') or (edit1.text = 'acende mas n�o tem imagem') or (edit1.text = 'acendemasnaotemimagem') or (edit1.text = 'acende mas n�o aparece imagem') or (edit1.text = 'acendemasnaoapareceimagem') or (edit1.text = 'acende mas n�o aparece nada') or (edit1.text = 'acendemasnaoaparecenada') or (edit1.text = 'n�o aparece imagem') or (edit1.text = 'naoapareceimagem') or (edit1.text = 'defeitonaimagem') or (edit1.text = 'defeitodeimagem') then
                    Label3.Text := '1-Teste os circuitos de imagem ligando v�rios equipamentos na ' + #13 + 'TV - Se aparecer imagem junto com o menu na tela(OSD), ' + #13 + 'o CI Scaler est� funcionando, caso contr�rio o Scaler ' + #13 + 'est� causando defeito';

                If (Edit1.Text = 'N�O EST� SUBINDO SOM') Or (Edit1.Text = 'N�O SOBE SOM') Or (Edit1.Text = 'SUBINDOSOM') Or (Edit1.Text = 'N�O SUBIU SOM') Or (Edit1.Text = 'NAOESTASUBINDOSOM') Or (Edit1.Text = 'NAOSOBESOM') Or (Edit1.Text = 'SUBINDOSOM') Or (Edit1.Text = 'NAOSUBIUSOM') Or (Edit1.Text = 'SEMSOM') Or (Edit1.Text = 'SEM �UDIO') Or (Edit1.Text = 'SOM') Or (Edit1.Text = '�UDIO') Or (Edit1.Text = 'ESTASEMSOM') Or (Edit1.Text = 'ESTASEMAUDIO') Then

                    Label3.Text := '1-Teste o CI de �udio(Injete a ponta preta do mult�metro em X1 ' + #13 + 'nos pinos 7 e 11 do Ci para exibir sinal)   2-Teste o CI ' + #13 + 'processado de �udio  3-Teste do CI demodulador e ' + #13 + 'decodificador est�reo 4-Circuito de sintonia(Seletor varicap)';

                if (edit1.text = 'n�o est� subindo som') or (edit1.text = 'n�o sobe som') or (edit1.text = 'subindosom') or (edit1.text = 'n�o subiu som') or (edit1.text = 'naoestasubindosom') or (edit1.text = 'naosobesom') or (edit1.text = 'subindosom') or (edit1.text = 'naosubiusom') or (edit1.text = 'semsom') or (edit1.text = 'sem �udio') or (edit1.text = 'som') or (edit1.text = '�udio') or (edit1.text = 'estasemsom') or (edit1.text = 'estasemaudio') then
                    Label3.Text := '1-Teste o CI de �udio(Injete a ponta preta do mult�metro em X1 ' + #13 + 'nos pinos 7 e 11 do Ci para exibir sinal)   2-Teste o CI ' + #13 + 'processado de �udio  3-Teste do CI demodulador e ' + #13 + 'decodificador est�reo 4-Circuito de sintonia(Seletor varicap)';

                If (Edit1.Text = 'N�O EST� SUBINDO �UDIO') Or (Edit1.Text = 'N�O SOBE �UDIO') Or (Edit1.Text = 'SUBINDO �UDIO') Or (Edit1.Text = 'N�O SUBIU �UDIO') Or (Edit1.Text = 'N�O ESTA SUBINDO �UDIO') Or (Edit1.Text = 'NAOSOBEAUDIO') Or (Edit1.Text = 'SUBINDOAUDIO') Or (Edit1.Text = 'NAOSUBIUAUDIO') Or (Edit1.Text = 'NAOESTASUBINDOAUDIO') Or (Edit1.Text = 'NAOSOBEAUDIO') Or (Edit1.Text = 'SUBINDOAUDIO') Or (Edit1.Text = 'NAOSUBIUAUDIO') Or (Edit1.Text = 'NAOESTASUBINDOAUDIO') Or (Edit1.Text = 'NAOSOBEAUDIO') Or (Edit1.Text = 'SUBINDOAUDIO') Or (Edit1.Text = 'NAOSUBIUAUDIO') Then
                    Label3.Text := '1-Teste o CI de �udio  2-Teste o CI processador de �udio  ' + #13 + '3-Teste do CI demodulador e decodificador est�reo 4-Circuito ' + #13 + 'de sintonia(Seletor varicap)';


                if (edit1.text = 'n�o est� subindo �udio') or (edit1.text = 'n�o sobe �udio') or (edit1.text = 'subindo �udio') or (edit1.text = 'n�o subiu �udio') or (edit1.text = 'n�o esta subindo �udio') or (edit1.text = 'naosobeaudio') or (edit1.text = 'subindoaudio') or (edit1.text = 'naosubiuaudio') or (edit1.text = 'naoestasubindoaudio') or (edit1.text = 'naosobeaudio') or (edit1.text = 'subindoaudio') or (edit1.text = 'naosubiuaudio') or (edit1.text = 'naoestasubindoaudio') or (edit1.text = 'naosobeaudio') or (edit1.text = 'subindoaudio') or (edit1.text = 'naosubiuaudio') then
                    Label3.Text := '1-Teste o CI de �udio  2-Teste o CI processador de �udio  ' + #13 + '3-Teste do CI demodulador e decodificador est�reo 4-Circuito ' + #13 + 'de sintonia(Seletor varicap)';


                If (Edit1.Text = 'CHECKSIGNALCABLE') Or (Edit1.Text = 'NOOPTIMUMRESOLUTION1280X1024') Or (Edit1.Text = 'MENSAGEMCHECKSIGNALCABLE') Or (Edit1.Text = 'MENSAGEMNOOPTIMUMRESOLUTION1280X1024') Or (Edit1.Text = 'NOOPTIMUMRESOLUTION1280X1024') Or (Edit1.Text = 'MENSAGEMNOOPTIMUMRESOLUTION1280X1024') Then

                    Label3.Text := '1-Troque CI micro';

                if (edit1.text = 'checksignalcable') or (edit1.text = 'nooptimumresolution1280x1024') or (edit1.text = 'mensagemchecksignalcable') or (edit1.text = 'mensagemnooptimumresolution1280x1024') or (edit1.text = 'nooptimumresolution1280x1024') or (edit1.text = 'mensagemnooptimumresolution1280x1024') then
                   Label3.Text := '1-Troque CI micro';

                If (Edit1.Text = 'DISPLAYQUEBRADO') Or (Edit1.Text = 'DISPLAYCOMRISCO') Or (Edit1.Text = 'DISPLAY') Or (Edit1.Text = 'PIXELMORTO') Or (Edit1.Text = 'PIXEL')Or (Edit1.Text = 'PIXELS')Or (Edit1.Text = 'DISPLAYCOMPIXELMORTO') Then
                    Label3.Text := 'O display LCD deve ser trocado';

                if (edit1.text = 'displayquebrado') or (edit1.text = 'displaycomrisco') or (edit1.text = 'display') or (edit1.text = 'pixelmorto') or (edit1.text = 'pixel') or (edit1.text = 'pixels')or (edit1.text = 'displaycompixelmorto') then
                    Label3.Text := 'O display LCD deve ser trocado';


                If (Edit1.Text = 'TELAACESASEMIMAGEM') Or (Edit1.Text = 'TELASEMIMAGEM')Or (Edit1.Text = 'SEMIMAGEM') Then

                    Label3.Text := '1-Me�a os pinos de +B do CI scaler. Alguns pinos funcionam com ' + #13 + '3,3 e outros com 1,8V   2-Medir o +B que alimenta o display. ' + #13 + 'Algumas trilhas recebem 3,3 ou 5V  3-Trocar o ' + #13 + 'CI scaler';

                if (edit1.text = 'telaacesasemimagem') or (edit1.text = 'telasemimagem')or (edit1.text = 'semimagem') then
                     Label3.Text := '1-Me�a os pinos de +B do CI scaler. Alguns pinos funcionam com ' + #13 + '3,3 e outros com 1,8V   2-Medir o +B que alimenta o display. ' + #13 + 'Algumas trilhas recebem 3,3 ou 5V  3-Trocar o ' + #13 + 'CI scaler';

                If (Edit1.Text = 'TELAAPAGADA') Or (Edit1.Text = 'TELAACENDEEAPAGA') Or (Edit1.Text = 'ACENDEEAPAGA') Or (Edit1.Text = 'APAGADA') Or (Edit1.Text = 'APAGADO') Or (Edit1.Text = 'LIGAEDESLIGA') Or (Edit1.Text = 'TELALIGAEDESLIGA') Then

                    Label3.Text := '1-Teste as l�mpadas. Se uma queimar as outras n�o acendem   ' + #13 + '2-Medir o +B que alimenta a placa Inverter   3-Medir a tens�o ' + #13 + '"Power On" do CI micro   4-Testar o fus�vel e os transistores ' + #13 + 'chaveadores do inverter   5-Trocar o CI oscilador do inverter';

                if (edit1.text = 'telaapagada') or (edit1.text = 'telaacendeeapaga') or (edit1.text = 'acendeeapaga') or (edit1.text = 'apagada') or (edit1.text = 'apagado') or (edit1.text = 'ligaedesliga') or (edit1.text = 'telaligaedesliga') then
                    Label3.Text := '1-Teste as l�mpadas. Se uma queimar as outras n�o acendem   ' + #13 + '2-Medir o +B que alimenta a placa Inverter   3-Medir a tens�o ' + #13 + '"Power On" do CI micro   4-Testar o fus�vel e os transistores ' + #13 + 'chaveadores do inverter   5-Trocar o CI oscilador do inverter';

                If (Edit1.Text = 'MONITOR N�O LIGA') Or (Edit1.Text = 'MONITORNAOLIGA') Or (Edit1.Text = 'MONITORCOMDEFEITO') Or (Edit1.Text = 'MONITOR') Or (Edit1.Text = 'MONITOR N�O FUNCIONA') Or (Edit1.Text = 'MONITORNAOFUNCIONA') Or (Edit1.Text = 'MONITORQUEBRADO') Then

                    Label3.Text := 'Se n�o chegar +B no CI micro, me�a os +B de 5 e 12V que ' + #13 + 'saem dos diodos ligados no chopper da fonte - Verifique se tem ' + #13 + '150V no filtro principal. Testar fus�vel e curto nos retificadores. ' + #13 + 'Teste resistores, diodos, transistores e substitua o CI da fonte';

                if (edit1.text = 'monitor n�o liga') or (edit1.text = 'monitornaoliga') or (edit1.text = 'monitorcomdefeito') or (edit1.text = 'monitor') or (edit1.text = 'monitor n�o funciona') or (edit1.text = 'monitornaofunciona') or (edit1.text = 'monitorquebrado') then
                    Label3.Text := 'Se n�o chegar +B no CI micro, me�a os +B de 5 e 12V que ' + #13 + 'saem dos diodos ligados no chopper da fonte - Verifique se tem ' + #13 + '150V no filtro principal. Testar fus�vel e curto nos retificadores. ' + #13 + 'Teste resistores, diodos, transistores e substitua o CI da fonte';

                If (Edit1.Text = 'TECLASDOCONTROLEREMOTONAOFUNCIONAM') Or (Edit1.Text = 'TECLAS DO CONTROLE REMOTO NAO FUNCIONAM') Or (Edit1.Text = 'TECLA DO CONTROLE REMOTO N�O FUNCIONA') Or (Edit1.Text = 'TECLADOCONTROLEREMOTONAOFUNCIONA') Or (Edit1.Text = 'UMA DAS TECLAS N�O FUNCIONAM') Or (Edit1.Text = 'UMADASTECLASNAOFUNCIONAM') Or (Edit1.Text = 'TECLA N�O FUNCIONA') Or (Edit1.Text = 'TECLANAOFUNCIONA') Or (Edit1.Text = 'CONTROLE REMOTO N�O FUNCIONA') Or (Edit1.Text = 'CONTROLEREMOTONAOFUNCIONA') Or (Edit1.Text = 'CONTROLEREMOTO') Then

                    Label3.Text := '1-Lave a placa do Controle remoto com sab�o em p� e seque ' + #13 + 'passando uma escova de dentes   2-Insira um decalque ou contato ' + #13 + 'de controle remoto na placa 2-Solda fria  3-Se n�o funcionar, ' + #13 + 'substitua o cristal - troque o capacitor eletrol�tico ou resistor';

                if (edit1.text = 'teclas do controle remoto n�o funcionam') or (edit1.text = 'teclasdocontroleremotonaofuncionam') or (edit1.text = 'tecla do controle remoto n�o funciona') or (edit1.text = 'tecladocontroleremotonaofunciona') or (edit1.text = 'uma das teclas n�o funcionam') or (edit1.text = 'umadasteclasnaofuncionam') or (edit1.text = 'tecla n�o funciona') or (edit1.text = 'teclanaofunciona') or (edit1.text = 'controle remoto n�o funciona') or (edit1.text = 'controleremotonaofunciona') or (edit1.text = 'controleremoto') then
                    Label3.Text := '1-Lave a placa do Controle remoto com sab�o em p� e seque ' + #13 + 'passando uma escova de dentes   2-Insira um decalque ou contato ' + #13 + 'de controle remoto na placa 2-Solda fria  3-Se n�o funcionar, ' + #13 + 'substitua o cristal - troque o capacitor eletrol�tico ou resistor';

                If (Edit1.Text = 'FICATRAVADA') Or (Edit1.Text = 'TELATRAVADA') Or (Edit1.Text = 'TRAVADA') Or (Edit1.Text = 'TRAVADO') Or (Edit1.Text = 'TELAFICATRAVADA') Or (Edit1.Text = 'TRAVOU') Or (Edit1.Text = 'EST� TRAVANDO') Or (Edit1.Text = 'ESTATRAVANDO') Or (Edit1.Text = 'TRAVANDO') Or (Edit1.Text = 'EST� TRAVADO') Or (Edit1.Text = 'ESTATRAVADO') Or (Edit1.Text = 'FICOUTRAVADO') Or (Edit1.Text = 'FICOUTRAVADA') Then

                    Label3.Text := '1- Troque a mem�ria(EEPROM)';

                if (edit1.text = 'ficatravada') or (edit1.text = 'telatravada') or (edit1.text = 'travada') or (edit1.text = 'travado') or (edit1.text = 'telaficatravada') or (edit1.text = 'travou') or (edit1.text = 'est� travando') or (edit1.text = 'estatravando') or (edit1.text = 'travando') or (edit1.text = 'est� travado') or (edit1.text = 'estatravado') or (edit1.text = 'ficoutravado') or (edit1.text = 'ficoutravada') then
                    Label3.Text := '1- Troque a mem�ria(EEPROM)';

                If (Edit1.Text = 'N�O MEMORIZA') Or (Edit1.Text = 'NAOMEMORIZA') Or (Edit1.Text = 'MEM�RIA') Or (Edit1.Text = 'MEMORIA') Or (Edit1.Text = 'SEM MEM�RIA') Or (Edit1.Text = 'SEMMEMORIA') Or (Edit1.Text = 'N�O LEMBRA') Or (Edit1.Text = 'NAOLEMBRA') Or (Edit1.Text = 'ESQUECE') Then

                    Label3.Text := '1- Troque a mem�ria(EEPROM)';

                if (edit1.text = 'n�o memoriza') or (edit1.text = 'naomemoriza') or (edit1.text = 'mem�ria') or (edit1.text = 'memoria') or (edit1.text = 'sem mem�ria') or (edit1.text = 'semmemoria') or (edit1.text = 'n�o lembra') or (edit1.text = 'naolembra') or (edit1.text = 'esquece') then
                     Label3.Text := '1- Troque a mem�ria(EEPROM)';

                If (Edit1.Text = 'MUDADECANAL') Or (Edit1.Text = 'MUDADECANALSOZINHO') Or (Edit1.Text = 'MUDADECANALSOZINHA') Or (Edit1.Text = 'TROCADECANAL') Or (Edit1.Text = 'TROCADECANALSOZINHO') Or (Edit1.Text = 'TROCADECANALSOZINHA') Then

                    Label3.Text := '1- Troque a mem�ria(EEPROM)';

                if (edit1.text = 'mudadecanal') or (edit1.text = 'mudadecanalsozinho') or (edit1.text = 'mudadecanalsozinha') or (edit1.text = 'trocadecanal') or (edit1.text = 'trocadecanalsozinho') or (edit1.text = 'trocadecanalsozinha') then
                    Label3.Text := '1- Troque a mem�ria(EEPROM)';

                If (Edit1.Text = 'AUMENTAOSOM') Or (Edit1.Text = 'AUMENTASOM') Or (Edit1.Text = 'AUMENTAOSOMSOZINHO') Or (Edit1.Text = 'AUMENTASOMSOZINHO') Or (Edit1.Text = 'AUMENTA') Or (Edit1.Text = 'AUMENTA O �UDIO SOZINHO') Or (Edit1.Text = 'AUMENTAOAUDIOSOZINHO') Or (Edit1.Text = 'AUMENTA O �UDIO') Or (Edit1.Text = 'AUMENTAOAUDIO') Or (Edit1.Text = 'SOMALTO') Or (Edit1.Text = '�UDIO ALTO') Or (Edit1.Text = 'AUDIOALTO') Or (Edit1.Text = 'ALTO')Then

                    Label3.Text := '1- Troque a mem�ria(EEPROM)';

                if (edit1.text = 'aumentaosom') or (edit1.text = 'aumentasom') or (edit1.text = 'aumentaosomsozinho') or (edit1.text = 'aumentasomsozinho') or (edit1.text = 'aumenta') or (edit1.text = 'aumenta o �udio sozinho') or (edit1.text = 'aumentaoaudiosozinho') or (edit1.text = 'aumenta o �udio') or (edit1.text = 'aumentaoaudio') or (edit1.text = 'somalto') or (edit1.text = '�udio alto') or (edit1.text = 'audioalto') or (edit1.text = 'alto')then
                    Label3.Text := '1- Troque a mem�ria(EEPROM)';

                If (Edit1.Text = 'LIGASOZINHO') Or (Edit1.Text = 'LIGASOZINHA') Or (Edit1.Text = 'FICALIGANDOSOZINHO') Or (Edit1.Text = 'FICALIGANDOSOZINHA') Or (Edit1.Text = 'EST� LIGANDO SOZINHA') Or (Edit1.Text = 'ESTALIGANDOSOZINHA') Or (Edit1.Text = 'EST� LIGANDO SOZINHO') Or (Edit1.Text = 'ESTALIGANDOSOZINHO') Or (Edit1.Text = 'TVLIGASOZINHA') Or (Edit1.Text = 'LIGA') Or (Edit1.Text = 'LIGADONADA') Or (Edit1.Text = 'TVLIGADONADA') Then

                    Label3.Text := '1- Troque a mem�ria(EEPROM)';

                if (edit1.text = 'ligasozinho') or (edit1.text = 'ligasozinha') or (edit1.text = 'ficaligandosozinho') or (edit1.text = 'ficaligandosozinha') or (edit1.text = 'est� ligando sozinha') or (edit1.text = 'estaligandosozinha') or (edit1.text = 'est� ligando sozinho') or (edit1.text = 'estaligandosozinho') or (edit1.text = 'tvligasozinha') or (edit1.text = 'liga') or (edit1.text = 'ligadonada') or (edit1.text = 'tvligadonada') then
                     Label3.Text := '1- Troque a mem�ria(EEPROM)';

                If (Edit1.Text = 'TVCHUVISCANDO') Or (Edit1.Text = 'CHUVISCANDO') Or (Edit1.Text = 'CHUVISCO') Or (Edit1.Text = 'TVCOMCHUVISCO') Or (Edit1.Text = 'TELAAZUL') Or (Edit1.Text = 'TVCOMTELAAZUL') Or (Edit1.Text = 'TELAAZULNATV') Or (Edit1.Text = 'TELEVIS�O COM TELA AZUL') Or (Edit1.Text = 'TELEVISAOCOMTELAAZUL') Or (Edit1.Text = 'TELA AZUL NA TELEVIS�O') Or (Edit1.Text = 'TELAAZULNATELEVISAO') Or (Edit1.Text = 'TELEVIS�O COM CHUVISCO') Or (Edit1.Text = 'TELEVISAOCOMCHUVISCO') Or (Edit1.Text = 'TELEVIS�O CHUVISCANDO') Or (Edit1.Text = 'TELEVISAOCHUVISCANDO') Then

                    Label3.Text := '1- Verifique o circuito de sintonia(Seletor varicap)';

                if (edit1.text = 'tvchuviscando') or (edit1.text = 'chuviscando') or (edit1.text = 'chuvisco') or (edit1.text = 'tvcomchuvisco') or (edit1.text = 'telaazul') or (edit1.text = 'tvcomtelaazul') or (edit1.text = 'telaazulnatv') or (edit1.text = 'televis�o com tela azul') or (edit1.text = 'televisaocomtelaazul') or (edit1.text = 'tela azul na televis�o') or (edit1.text = 'telaazulnatelevisao') or (edit1.text = 'televis�o com chuvisco') or (edit1.text = 'televisaocomchuvisco') or (edit1.text = 'televis�o chuviscando') or (edit1.text = 'televisaochuviscando') then
                    Label3.Text := '1- Verifique o circuito de sintonia(Seletor varicap)';

                If (Edit1.Text = 'S� PEGA CANAIS ALTOS') Or (Edit1.Text = 'SOPEGACANAISALTOS') Or (Edit1.Text = 'PEGACANAISALTOS') Or (Edit1.Text = 'S�PEGACANAISBAIXOS') Or (Edit1.Text = 'SOPEGACANAISBAIXOS') Or (Edit1.Text = 'PEGACANAISBAIXOS') Or (Edit1.Text = 'S� SINTONIZA CANAIS ALTOS') Or (Edit1.Text = 'SOSINTONIZACANAISALTOS') Or (Edit1.Text = 'SINTONIZACANAISALTOS') Or (Edit1.Text = 'S� SINTONIZA CANAIS BAIXOS') Or (Edit1.Text = 'SOSINTONIZACANAISBAIXOS') Or (Edit1.Text = 'SINTONIZACANAISBAIXOS') Or (Edit1.Text = 'CANAISBAIXOS')Or (Edit1.Text = 'CANAISALTOS')Then

                    Label3.Text := '1- Verifique o circuito de sintonia(Seletor varicap)';

                if (edit1.text = 's� pega canais altos') or (edit1.text = 'sopegacanaisaltos') or (edit1.text = 'pegacanaisaltos') or (edit1.text = 's�pegacanaisbaixos') or (edit1.text = 'sopegacanaisbaixos') or (edit1.text = 'pegacanaisbaixos') or (edit1.text = 's� sintoniza canais altos') or (edit1.text = 'sosintonizacanaisaltos') or (edit1.text = 'sintonizacanaisaltos') or (edit1.text = 's� sintoniza canais baixos') or (edit1.text = 'sosintonizacanaisbaixos') or (edit1.text = 'sintonizacanaisbaixos') or (edit1.text = 'canaisbaixos')or (edit1.text = 'canaisaltos')then
                    Label3.Text := '1- Verifique o circuito de sintonia(Seletor varicap)';

                If (Edit1.Text = 'SOMBAIXO') Or (Edit1.Text = 'TVCOMSOMBAIXO') Or (Edit1.Text = 'TELEVIS�O COM SOM BAIXO') Or (Edit1.Text = 'TELEVISAOCOMSOMBAIXO') Or (Edit1.Text = '�UDIO BAIXO') Or (Edit1.Text = 'AUDIOBAIXO') Or (Edit1.Text = 'TV COM �UDIO BAIXO') Or (Edit1.Text = 'TVCOMAUDIOBAIXO') Or (Edit1.Text = 'TELEVIS�O COM �UDIO BAIXO') Or (Edit1.Text = 'TELEVISAOCOMAUDIOBAIXO') Or (Edit1.Text = 'COM �UDIO BAIXO') Or (Edit1.Text = 'COMAUDIOBAIXO') Or (Edit1.Text = 'COMSOMBAIXO') Then

                    Label3.Text := '1- Verifique o circuito de sintonia(Seletor varicap)';

                if (edit1.text = 'sombaixo') or (edit1.text = 'tvcomsombaixo') or (edit1.text = 'televis�o com som baixo') or (edit1.text = 'televisaocomsombaixo') or (edit1.text = '�udio baixo') or (edit1.text = 'audiobaixo') or (edit1.text = 'tv com �udio baixo') or (edit1.text = 'tvcomaudiobaixo') or (edit1.text = 'televis�o com �udio baixo') or (edit1.text = 'televisaocomaudiobaixo') or (edit1.text = 'com �udio baixo') or (edit1.text = 'comaudiobaixo') or (edit1.text = 'comsombaixo') then
                    Label3.Text := '1- Verifique o circuito de sintonia(Seletor varicap)';

                If (Edit1.Text = 'VERTICALFECHADO') Or (Edit1.Text = 'LINHAVERTICAL') Or (Edit1.Text = 'LINHA') Or (Edit1.Text = 'LINHANATELA') Or (Edit1.Text = 'LINHAONDULADA') Or (Edit1.Text = 'LINHAONDULADANATELA') Or (Edit1.Text = 'VERTICALFECHADOCOMLINHAONDULADA') Or (Edit1.Text = 'FALTADEALTURA') Or (Edit1.Text = 'ONDULADA')Or (Edit1.Text = 'ALTURA')Then

                    Label3.Text := '1- Procure curto nos capacitores eletrol�ticos   2-Ressoldar o ' + #13 + 'circuito vertical   3-Troque o CI vertical e os capacitores ' + #13 + 'eletrol�ticos   4-Medir os +B do circuito vertical';

                if (edit1.text = 'verticalfechado') or (edit1.text = 'linhavertical') or (edit1.text = 'linha') or (edit1.text = 'linhanatela') or (edit1.text = 'linhaondulada') or (edit1.text = 'linhaonduladanatela') or (edit1.text = 'verticalfechadocomlinhaondulada') or (edit1.text = 'faltadealtura')or (edit1.text = 'ondulada')or (edit1.text = 'altura') then
                    Label3.Text := '1- Procure curto nos capacitores eletrol�ticos   2-Ressoldar o ' + #13 + 'circuito vertical   3-Troque o CI vertical e os capacitores ' + #13 + 'eletrol�ticos   4-Medir os +B do circuito vertical';

                If (Edit1.Text = 'FALTADELINEARIDADE') Or (Edit1.Text = 'VERTICALFECHADOPELAMETADE') Or (Edit1.Text = 'LINHASBRANCASEMTODATELA') Or (Edit1.Text = 'FICOUCOMLINHASBRANCASEMTODATELA') Or (Edit1.Text = 'FICOUCOMLINHABRANCA') Or (Edit1.Text = 'LINHASBRANCAS') Or (Edit1.Text = 'LINHAS') Or (Edit1.Text = 'LINHASNAPARTESUPERIOR') Or (Edit1.Text = 'LINHASEMCIMA') Or (Edit1.Text = 'LINHASNAPARTEINFERIOR') Or (Edit1.Text = 'LINHASEMBAIXO') Or (Edit1.Text = 'TELACOMLINHAS') Or (Edit1.Text = 'V�RIAS LINHAS NA TELA') Or (Edit1.Text = 'VARIASLINHASNATELA') Or (Edit1.Text = 'V�RIAS LINHAS') Or (Edit1.Text = 'VARIASLINHAS') Or (Edit1.Text = 'LINHASBRANCAS') Or (Edit1.Text = 'METADEDATELABRANCA') Or (Edit1.Text = 'METADEDATELAPRETA') Then

                    Label3.Text := '1- Troque os capacitores eletrol�ticos   2-Troque o CI vertical';

                if (edit1.text = 'faltadelinearidade') or (edit1.text = 'verticalfechadopelametade') or (edit1.text = 'linhasbrancasemtodatela') or (edit1.text = 'ficoucomlinhasbrancasemtodatela') or (edit1.text = 'ficoucomlinhabranca') or (edit1.text = 'linhasbrancas') or (edit1.text = 'linhas') or (edit1.text = 'linhasnapartesuperior') or (edit1.text = 'linhasemcima') or (edit1.text = 'linhasnaparteinferior') or (edit1.text = 'linhasembaixo') or (edit1.text = 'telacomlinhas') or (edit1.text = 'v�rias linhas na tela') or (edit1.text = 'variaslinhasnatela') or (edit1.text = 'v�rias linhas') or (edit1.text = 'variaslinhas') or (edit1.text = 'linhasbrancas') or (edit1.text = 'metadedatelabranca') or (edit1.text = 'metadedatelapreta') then
                    Label3.Text := '1- Troque os capacitores eletrol�ticos   2-Troque o CI vertical';

                If (Edit1.Text = 'MUDO') Or (Edit1.Text = 'TVMUDA') Or (Edit1.Text = 'TELEVIS�O MUDA') Or (Edit1.Text = 'TELEVISAOMUDA') Or (Edit1.Text = 'EST� MUDO') Or (Edit1.Text = 'ESTAMUDO') Or (Edit1.Text = 'FICOUMUDO') Or (Edit1.Text = 'MUTE') Or (Edit1.Text = 'DEFEITODEMUTE') Then

                    Label3.Text := '1- Troque o transistor do mute ou o CI de som(O transistor do ' + #13 + 'mute pode ficar dentro do CI, veja o manual do equipamento)';

                if (edit1.text = 'mudo') or (edit1.text = 'tvmuda') or (edit1.text = 'televis�o muda') or (edit1.text = 'televisaomuda') or (edit1.text = 'est� mudo') or (edit1.text = 'estamudo') or (edit1.text = 'ficoumudo') or (edit1.text = 'mute') or (edit1.text = 'defeitodemute') then
                    Label3.Text := '1- Troque o transistor do mute ou o CI de som(O transistor do ' + #13 + 'mute pode ficar dentro do CI, veja o manual do equipamento)';

                If Label3.Text = '' Then
                  begin
                    Label4.Visible := True;
                    Label4.Text := procura + 'N�o est� relacionado, defina a pesquisa com outro nome.';
                  End;

           end; //fecha tv


           If (Label2.Text = 'R�dio') Then
           begin
            Label3.Visible := true;
            //Try
                procura:=StringReplace(procura,' ',EmptyStr,[rfReplaceAll]);
                Edit1.Text:=removeAcentos(procura);
                If (Edit1.Text = 'N�O EST� SUBINDO SOM') Or (Edit1.Text = 'N�O SOBE SOM') Or (Edit1.Text = 'SUBINDOSOM') Or (Edit1.Text = 'N�O SUBIU SOM') Or (Edit1.Text = 'NAOESTASUBINDO SOM') Or (Edit1.Text = 'NAOSOBESOM') Or (Edit1.Text = 'SUBINDOSOM') Or (Edit1.Text = 'NAOSUBIUSOM') Or (Edit1.Text = 'SEM �UDIO') Or (Edit1.Text = 'SEMAUDIO') Or (Edit1.Text = 'SEMSOM') Or (Edit1.Text = '�UDIO') Or (Edit1.Text = 'AUDIO') Or (Edit1.Text = 'SOM') Or (Edit1.Text = '�UDIO N�O FUNCIONA') Or (Edit1.Text = 'AUDIONAOFUNCIONA') Or (Edit1.Text = 'SOM N�O FUNCIONA') Or (Edit1.Text = 'SOMNAOFUNCIONA') Or (Edit1.Text = 'SOM N�O EST� FUNCIONANDO') Or (Edit1.Text = 'SOMNAOESTAFUNCIONANDO') Or (Edit1.Text = '�UDIO N�O EST� FUNCIONANDO') Or (Edit1.Text = 'AUDIONAOESTAFUNCIONANDO') Or (Edit1.Text = '�UDIO N�O EST� TOCANDO') Or (Edit1.Text = 'AUDIONAOESTATOCANDO') Or (Edit1.Text = 'N�O EST� TOCANDO') Or (Edit1.Text = 'NAOESTATOCANDO') Or (Edit1.Text = 'SOM N�O EST� TOCANDO') Or (Edit1.Text = 'SOMNAOESTATOCANDO') Or (Edit1.Text = '�UDIO N�O TOCA') Or (Edit1.Text = 'AUDIONAOTOCA') Or (Edit1.Text = 'SOM N�O TOCA') Or (Edit1.Text = 'SOMNAOTOCA') Or (Edit1.Text = 'N�O TOCA') Or (Edit1.Text = 'NAOTOCA') Then
                     Label3.Text := '1-Algum transistor pr�-amplificador defeituoso   ' + #13 + '2-Diodo detetor   ' + #13 + '3-Veja o alto-falante, CI ou transistor de sa�da   ' + #13 + '4-Troque os transistores de som  ' + #13 + '5-Troque os componentes da sa�da de som  ' + #13 + '6-Se estiver apagado � os transistores reguladores da fonte';

                if (edit1.text = 'sintoniza esta��es baixas') or (edit1.text = 'sintonizaestacoesbaixas') or (edit1.text = 'sintonizaestacoesbaixas') or (edit1.text = 'esta��es baixas') or (edit1.text = 'estacoesbaixas') or (edit1.text = 's� sintoniza esta��es baixas') or (edit1.text = 'sosintonizaestacoesbaixas') or (edit1.text = 'sosintonizaestacoesbaixas') or (edit1.text = 's� toca esta��es baixas') or (edit1.text = 'sotocaestacoesbaixas') or (edit1.text = 'sotocaestacoesbaixas') or (edit1.text = 's� reproduz esta��es baixas') or (edit1.text = 'soreproduzestacoesbaixas') or (edit1.text = 'soreproduzestacoesbaixas') or (edit1.text = 's� toca esta��es baixas') or (edit1.text = 'sotocaestacoesbaixas') or (edit1.text = 'sotocaestacoesbaixas') then
                    Label3.Text := '1-Verifique os resistores que polarizam o transistor misturador';
                If (Edit1.Text = 'N�O SINTONIZA') Or (Edit1.Text = 'NAOSINTONIZA') Or (Edit1.Text = 'N�O SINTONIZA AS ESTA��ES') Or (Edit1.Text = 'NAOSINTONIZAASESTA�OES') Or (Edit1.Text = 'NAOSINTONIZAASESTACOES') Or (Edit1.Text = 'N�O EST� SINTONIZANDO') Or (Edit1.Text = 'NAOESTASINTONIZANDO') Or (Edit1.Text = 'SINTONIAFRACA') Or (Edit1.Text = 'SEMSINTONIA') Then
                   Label3.Text := '1-Ver o transistor amplificador de RF e enrolamentos da bobina da antena' + #13 + '2-Transistor misturador 3-Transistor oscilador ' + #13 + '3-Ver os transistores amplificadores de FI ou CIs que amplificadores de FI';
                if (edit1.text = 'n�o est� subindo som') or (edit1.text = 'n�o sobe som') or (edit1.text = 'subindosom') or (edit1.text = 'n�o subiu som') or (edit1.text = 'naoestasubindosom') or (edit1.text = 'naosobesom') or (edit1.text = 'subindosom') or (edit1.text = 'naosubiusom') or (edit1.text = 'sem �udio') or (edit1.text = 'semaudio') or (edit1.text = 'semsom') or (edit1.text = '�udio') or (edit1.text = 'audio') or (edit1.text = 'som') or (edit1.text = '�udio n�o funciona') or (edit1.text = 'audionaofunciona') or (edit1.text = 'som n�o funciona') or (edit1.text = 'somnaofunciona') or (edit1.text = 'som n�o est� funcionando') or (edit1.text = 'somnaoestafuncionando') or (edit1.text = '�udio n�o est� funcionando') or (edit1.text = 'audionaoestafuncionando') or (edit1.text = '�udio n�o est� tocando') or (edit1.text = 'audionaoestatocando') or (edit1.text = 'n�o est� tocando') or (edit1.text = 'naoestatocando') or (edit1.text = 'som n�o est� tocando') or (edit1.text = 'somnaoestatocando') or (edit1.text = '�udio n�o toca') or (edit1.text = 'audionaotoca') or (edit1.text = 'som n�o toca') or (edit1.text = 'somnaotoca') or (edit1.text = 'n�o toca') or (edit1.text = 'naotoca') then
                    Label3.Text := '1-Algum transistor pr�-amplificador defeituoso   ' + #13 + '2-Diodo detetor   ' + #13 + '3-Veja o alto-falante, CI ou transistor de sa�da   ' + #13 + '4-Troque os transistores de som  ' + #13 + '5-Troque os componentes da sa�da de som  ' + #13 + '6-Se estiver apagado � os transistores reguladores da fonte';

                If (Edit1.Text = 'ESTA��ES DESLOCADAS') Or (Edit1.Text = 'ESTACOESDESLOCADAS') Or (Edit1.Text = 'ESTA��ES DESLOCADAS NO DIAL') Or (Edit1.Text = 'ESTACOESDESLOCADASNODIAL') Or (Edit1.Text = 'ESTACOESDESLOCADASNODIAL') Or (Edit1.Text = 'ESTA��ES FORA DE POSI��O') Or (Edit1.Text = 'ESTACOESFORADEPOSI�AO') Or (Edit1.Text = 'ESTACOESFORADEPOSICAO') Or (Edit1.Text = 'ESTA��O FORA DE POSI��O') Or (Edit1.Text = 'ESTACAOFORADEPOSI�AO') Or (Edit1.Text = 'ESTACAOFORADEPOSICAO') Or (Edit1.Text = 'DIAL FORA DE POSI��O') Or (Edit1.Text = 'DIALFORADEPOSICAO') Or (Edit1.Text = 'DIAL') Or (Edit1.Text = 'DIALDESLOCADO') Or (Edit1.Text = 'DESLOCADO') Or (Edit1.Text = 'DESLOCADA') Or (Edit1.Text = 'ESTA��O DESLOCADA') Or (Edit1.Text = 'ESTACAODESLOCADA')Or (Edit1.Text = 'MOSTRADOR')Or (Edit1.Text = 'DEFEITOMOSTRADOR')Or (Edit1.Text = 'DEFEITODIAL')Or (Edit1.Text = 'DEFEITONOMOSTRADOR')Or (Edit1.Text = 'DEFEITONODIAL') Then

                    Label3.Text := '1-Ajuste a bobina osciladora e trimmer que fica no capacitor ' + #13 + 'vari�vel(Normalmente ajusta-se a bobina para as esta��es baixas ' + #13 + 'e o trimmer para as altas)';

                if (edit1.text = 'esta��es deslocadas') or (edit1.text = 'estacoesdeslocadas') or (edit1.text = 'esta��es deslocadas no dial') or (edit1.text = 'estacoesdeslocadasnodial') or (edit1.text = 'estacoesdeslocadasnodial') or (edit1.text = 'esta��es fora de posi��o') or (edit1.text = 'esta�oesforadeposi�ao') or (edit1.text = 'estacoesforadeposicao') or (edit1.text = 'esta��o fora de posi��o') or (edit1.text = 'estacaoforadeposi�ao') or (edit1.text = 'estacaoforadeposicao') or (edit1.text = 'dialforadeposicao') or (edit1.text = 'dialforadeposicao') or (edit1.text = 'dial') or (edit1.text = 'dialdeslocado') or (edit1.text = 'deslocado') or (edit1.text = 'deslocada') or (edit1.text = 'esta��o deslocada') or (edit1.text = 'estacaodeslocada')or (edit1.text = 'mostrador')or (edit1.text = 'defeitomostrador')or (edit1.text = 'defeitodial')or (edit1.text = 'defeitonomostrador')or (edit1.text = 'defeitonodial') then
                    Label3.Text := '1-Ajuste a bobina osciladora e trimmer que fica no capacitor ' + #13 + 'vari�vel(Normalmente ajusta-se a bobina para as esta��es baixas ' + #13 + 'e o trimmer para as altas)';

                If (Edit1.Text = 'N�O SINTONIZA NADA') Or (Edit1.Text = 'NAOSINTONIZANADA') Or (Edit1.Text = 'N�O TOCA NADA') Or (Edit1.Text = 'NAOTOCANADA') Or (Edit1.Text = 'N�O EST� SINTONIZANDO NADA') Or (Edit1.Text = 'NAOESTASINTONIZANDONADA') Or (Edit1.Text = 'N�O EST� TOCANDO NADA') Or (Edit1.Text = 'NAOESTATOCANDONADA') Or (Edit1.Text = 'N�O ESCUTO NADA') Or (Edit1.Text = 'NAOESCUTONADA') Or (Edit1.Text = 'N�O FALA NADA') Or (Edit1.Text = 'NAOFALANADA') Or (Edit1.Text = 'SINTONIZANADA') Then

                    Label3.Text := '1-Verifique o transistor oscilador  2-Verifique o transistor ' + #13 + 'amplicador de RF';

               if (edit1.text = 'n�o sintoniza nada') or (edit1.text = 'naosintonizanada') or (edit1.text = 'n�o toca nada') or (edit1.text = 'naotocanada') or (edit1.text = 'n�o est� sintonizando nada') or (edit1.text = 'naoestasintonizandonada') or (edit1.text = 'n�o est� tocando nada') or (edit1.text = 'naoestatocandonada') or (edit1.text = 'n�o escuto nada') or (edit1.text = 'naoescutonada') or (edit1.text = 'n�o fala nada') or (edit1.text = 'naofalanada') or (edit1.text = 'sintonizanada') then
                    Label3.Text := '1-Verifique o transistor oscilador  2-Verifique o transistor ' + #13 + 'amplicador de RF';

                If (Edit1.Text = 'N�O EST� SUBINDO �UDIO') Or (Edit1.Text = 'N�O SOBE �UDIO') Or (Edit1.Text = 'SUBINDO �UDIO') Or (Edit1.Text = 'N�O SUBIU �UDIO') Or (Edit1.Text = 'N�O ESTA SUBINDO �UDIO') Or (Edit1.Text = 'NAO SOBE �UDIO') Or (Edit1.Text = 'SUBINDO �UDIO') Or (Edit1.Text = 'N�O SUBIU �UDIO') Or (Edit1.Text = 'NAOESTASUBINDOAUDIO') Or (Edit1.Text = 'NAOSOBEAUDIO') Or (Edit1.Text = 'SUBINDOAUDIO') Or (Edit1.Text = 'NAOSUBIUAUDIO') Or (Edit1.Text = 'NAOESTASUBINDOAUDIO') Or (Edit1.Text = 'NAOSOBEAUDIO') Or (Edit1.Text = 'SUBINDOAUDIO') Or (Edit1.Text = 'NAOSUBIUAUDIO') Then
                    Label3.Text := '1-Algum transistor pr�-amplificador defeituoso   ' + #13 + '2-Diodo detetor   ' + #13 + '3-Veja o alto-falante, CI ou transistor de sa�da   ' + #13 + '4-Troque os transistores de som  ' + #13 + '5-Troque os componentes da sa�da de som  ' + #13 + '6-Se estiver apagado � os transistores reguladores da fonte';

                if (edit1.text = 'n�o est� subindo �udio') or (edit1.text = 'n�o sobe �udio') or (edit1.text = 'subindo �udio') or (edit1.text = 'n�o subiu �udio') or (edit1.text = 'n�o esta subindo �udio') or (edit1.text = 'nao sobe �udio') or (edit1.text = 'subindo �udio') or (edit1.text = 'n�o subiu �udio') or (edit1.text = 'naoestasubindoaudio') or (edit1.text = 'naosobeaudio') or (edit1.text = 'subindoaudio') or (edit1.text = 'naosubiuaudio') or (edit1.text = 'naoestasubindoaudio') or (edit1.text = 'naosobeaudio') or (edit1.text = 'subindoaudio') or (edit1.text = 'naosubiuaudio') then
                    Label3.Text := '1-Algum transistor pr�-amplificador defeituoso   ' + #13 + '2-Diodo detetor   ' + #13 + '3-Veja o alto-falante, CI ou transistor de sa�da   ' + #13 + '4-Troque os transistores de som  ' + #13 + '5-Troque os componentes da sa�da de som  ' + #13 + '6-Se estiver apagado � os transistores reguladores da fonte';

                if (edit1.text = 'sintoniza esta��o com �udio baixo') or (edit1.text = 'sintonizaestacaocomaudiobaixo') or (edit1.text = 'sintonizaestacaocomaudiobaixo') or (edit1.text = 'sintoniza esta��o com audio baixo') or (edit1.text = '�udio baixo') or (edit1.text = 'audiobaixo') or (edit1.text = 'sombaixo') or (edit1.text = 'algumas esta��es com �udio baixo') or (edit1.text = 'algumasestacoescomaudiobaixo') or (edit1.text = 'algumasestacoescomaudiobaixo') or (edit1.text = 'algumas esta��es com som baixo') or (edit1.text = 'algumasestacoescomsombaixo') or (edit1.text = 'algumasestacoescomsombaixo') or (edit1.text = 'esta��es com som baixo') or (edit1.text = 'estacoescomsombaixo') or (edit1.text = 'esta��es com �udio baixo') or (edit1.text = 'esta�oes com audio baixo') then
                   Label3.Text := '1-Ajuste a bobina de antena   2-Troque os transistores de som' + #13 + '(Normalmente ' + #13 + 'quatro ou o CI principal)   3-Troque os componentes ' + #13 + 'da sa�da de som(todos)   4-Se estiver apagado � os ' + #13 + 'transistores reguladores da fonte';

                If (Edit1.Text = '�UDIO FANHOSO') Or (Edit1.Text = 'AUDIOFANHOSO') Or (Edit1.Text = 'SOMFANHOSO') Or (Edit1.Text = 'FANHOSO') Or (Edit1.Text = 'SOMESTRANHO') Or (Edit1.Text = '�UDIO ESTRANHO') Or (Edit1.Text = 'AUDIOESTRANHO') Or (Edit1.Text = '�UDIO RUIM') Or (Edit1.Text = 'AUDIORUIM') Or (Edit1.Text = 'SOMRUIM') Or (Edit1.Text = 'FANHO') Or (Edit1.Text = 'FANHOSO') Then

                    Label3.Text := '1-Bobinas desajustadas ou com contatos desajustados ' + #13 + '(Geralmente ligado ' + #13 + 'a dois diodos detetores)';

                if (edit1.text = '�udio fanhoso') or (edit1.text = 'audiofanhoso') or (edit1.text = 'somfanhoso') or (edit1.text = 'fanhoso') or (edit1.text = 'somestranho') or (edit1.text = '�udio estranho') or (edit1.text = 'audioestranho') or (edit1.text = '�udio ruim') or (edit1.text = 'audioruim') or (edit1.text = 'somruim') or (edit1.text = 'fanho') or (edit1.text = 'fanhoso') then
                    Label3.Text := '1-Bobinas desajustadas ou com contatos desajustados ' + #13 + '(Geralmente ligado ' + #13 + 'a dois diodos detetores)';

                If (Edit1.Text = 'SOMPIPOCANDO') Or (Edit1.Text = '�UDIO PIPOCANDO') Or (Edit1.Text = 'AUDIOPIPOCANDO') Or (Edit1.Text = 'PIPOCANDO') Or (Edit1.Text = 'PIPOCA') Or (Edit1.Text = 'FICA PIPOCANDO') Or (Edit1.Text = 'EST�PIPOCANDO') Or (Edit1.Text = 'ESTAPIPOCANDO') Or (Edit1.Text = 'EST� A PIPOCAR') Or (Edit1.Text = 'ESTAAPIPOCAR') Or (Edit1.Text = 'BATIDOS') Or (Edit1.Text = 'BATIDAS') Or (Edit1.Text = 'PIPOCA') Then

                    Label3.Text := '1-Verifique o capacitor que liga a sa�da dos transistores com o alto-falante   ' + #13 + '2-Veja transistores ou CI de sa�da';

                if (edit1.text = '�udiodistorcido') or (edit1.text = 'audiodistorcido') or (edit1.text = 'somdistorcido') or (edit1.text = 'distor��o') or (edit1.text = 'distorcao') or (edit1.text = 'distorcao') or (edit1.text = 'distorcido') or (edit1.text = 'som est� distorcido') or (edit1.text = 'somestadistorcido') or (edit1.text = 'somficadistorcido') or (edit1.text = '�udio fica distorcido') or (edit1.text = 'audioficadistorcido') or (edit1.text = '�udio est� distorcido') or (edit1.text = 'audioestadistorcido') or (edit1.text = 'som est� distorcido') or (edit1.text = 'somestadistorcido') then
                      Label3.Text := '1-Verifique o transistor';
                if (edit1.text = 'sompipocando') or (edit1.text = '�udio pipocando') or (edit1.text = 'audiopipocando') or (edit1.text = 'pipocando') or (edit1.text = 'pipoca') or (edit1.text = 'ficapipocando') or (edit1.text = 'est� pipocando') or (edit1.text = 'estapipocando') or (edit1.text = 'est� a pipocar') or (edit1.text = 'estaapipocar') or (edit1.text = 'batidos') or (edit1.text = 'batidas') or (edit1.text = 'pipoca') then
                   Label3.Text := '1-Verifique o capacitor que liga a sa�da dos transistores com o alto-falante   ' + #13 + '2-Veja transistores ou CI de sa�da';

                If (Edit1.Text = 'RU�DO AO MUDAR DE ESTA��O') Or (Edit1.Text = 'RUIDOAOMUDARDEESTACAO') Or (Edit1.Text = 'RUIDOAOMUDARDEESTACAO') Or (Edit1.Text = 'RU�DO QUANDO MUDA DE ESTA��O') Or (Edit1.Text = 'RUIDOQUANDOMUDADEESTACAO') Or (Edit1.Text = 'RUIDOQUANDOMUDADEESTACAO') Or (Edit1.Text = 'BARULHO AO MUDAR DE ESTA��O') Or (Edit1.Text = 'BARULHOAOMUDARDEESTACAO') Or (Edit1.Text = 'BARULHO QUANDO MUDA DE ESTA��O') Or (Edit1.Text = 'BARULHOQUANDOMUDADEESTACAO') Or (Edit1.Text = 'BARULHOQUANDOMUDADEESTACAO') Or (Edit1.Text = 'BARULHO') Or (Edit1.Text = 'BARULHOS') Then

                    Label3.Text := '1-Limpe o capacitor vari�vel com �lcool isoprop�lico ou com um �leo fino ' + #13 + 'em seu eixo';

                if (edit1.text = 'ru�dos') or (edit1.text = 'ruidos') or (edit1.text = 'ru�dosaomexeropotenciometro') or (edit1.text = 'ruidosaomexeropotenciometro') or (edit1.text = 'ru�do no potenci�metro') or (edit1.text = 'ruidonopotenciometro') or (edit1.text = 'ru�do ao girar bot�o') or (edit1.text = 'ruidoaogirarbotao') or (edit1.text = 'ru�do ao girar bot�o') or (edit1.text = 'ruidoaogirarbotao') or (edit1.text = 'ru�do') or (edit1.text = 'ruido') or (edit1.text = 'ru�dos ao girar o bot�o') or (edit1.text = 'ruidosaogirarobotao') or (edit1.text = 'ru�dos ao girar o potenci�metro') or (edit1.text = 'ruidosaogiraropotenciometro') or (edit1.text = 'ru�dos ao girar potenci�metro') or (edit1.text = 'ruidosaogirarpotenciometro') or (edit1.text = 'ru�dos ao girar bot�o') or (edit1.text = 'ruidosaogirarbotao') or (edit1.text = 'ru�dos quando gira bot�o') or (edit1.text = 'ruidosquandogirabotao') or (edit1.text = 'ru�dos quando gira o bot�o') or (edit1.text = 'ruidosquandogiraobotao') or (edit1.text = 'ru�do quando gira bot�o') or (edit1.text = 'ruidoquandogirabotao') or (edit1.text = 'ru�do quando gira o bot�o') or (edit1.text = 'ruido quando gira o bot�o') then
                     Label3.Text := '1-Sujeira nos contatos ou eixos dos potenci�metros, limpe-os ou troque-os';
                if (edit1.text = 'ru�do ao mudar de esta��o') or (edit1.text = 'ruidoaomudardeestacao') or (edit1.text = 'ruidoaomudardeestacao') or (edit1.text = 'ru�do quando muda de esta��o') or (edit1.text = 'ruidoquandomudadeesta�ao') or (edit1.text = 'ruidoquandomudadeestacao') or (edit1.text = 'barulho ao mudar de esta��o') or (edit1.text = 'barulhoaomudardeestacao') or (edit1.text = 'barulhoquandomudadeestacao') or (edit1.text = 'barulhoquandomudadeesta�ao') or (edit1.text = 'barulhoquandomudadeestacao') or (edit1.text = 'barulho') or (edit1.text = 'barulhos') then
                    Label3.Text := '1-Limpe o capacitor vari�vel com �lcool isoprop�lico ou com um �leo fino ' + #13 + 'em seu eixo';

                If (Edit1.Text = 'RU�DO GRAVE') Or (Edit1.Text = 'RUIDOGRAVE') Or (Edit1.Text = 'SOMGRAVE') Or (Edit1.Text = '�UDIO GRAVE') Or (Edit1.Text = 'AUDIOGRAVE') Or (Edit1.Text = 'GRAVE') Or (Edit1.Text = 'SOM EST� GRAVE') Or (Edit1.Text = 'SOMESTAGRAVE') Or (Edit1.Text = '�UDIO EST� GRAVE') Or (Edit1.Text = 'AUDIOESTAGRAVE') Or (Edit1.Text = 'RU�DO EST� GRAVE') Or (Edit1.Text = 'RUIDOESTAGRAVE') Or (Edit1.Text = 'SOMFICOUGRAVE') Or (Edit1.Text = 'SOMFICANDOGRAVE') Or (Edit1.Text = '�UDIO FICOU GRAVE') Or (Edit1.Text = 'AUDIOFICOUGRAVE') Or (Edit1.Text = '�UDIO FICANDO GRAVE') Or (Edit1.Text = 'AUDIOFICANDOGRAVE') Then

                    Label3.Text := '1-Os respons�veis s�o os diodos retificadores e capacitor de filtragem';

                if (edit1.text = 'ru�do grave') or (edit1.text = 'ruidograve') or (edit1.text = 'somgrave') or (edit1.text = '�udio grave') or (edit1.text = 'audiograve') or (edit1.text = 'grave') or (edit1.text = 'som est� grave') or (edit1.text = 'somestagrave') or (edit1.text = '�udio est� grave') or (edit1.text = 'audioestagrave') or (edit1.text = 'ru�do est� grave') or (edit1.text = 'ruidoestagrave') or (edit1.text = 'somficougrave') or (edit1.text = 'somficandograve') or (edit1.text = '�udio ficou grave') or (edit1.text = 'audioficougrave') or (edit1.text = '�udio ficando grave') or (edit1.text = 'audioficandograve') then
                    Label3.Text := '1-Os respons�veis s�o os diodos retificadores e capacitor de filtragem';

                If (Edit1.Text = 'RU�DOS') Or (Edit1.Text = 'RUIDOS') Or (Edit1.Text = 'RU�DOS AO MEXER O POTENCI�METRO') Or (Edit1.Text = 'RUIDOSAOMEXEROPOTENCIOMETRO') Or (Edit1.Text = 'RU�DO NO POTENCI�METRO') Or (Edit1.Text = 'RUIDONOPOTENCIOMETRO') Or (Edit1.Text = 'RU�DO AO GIRAR BOT�O') Or (Edit1.Text = 'RUIDOAOGIRARBOTAO') Or (Edit1.Text = 'RU�DO AO GIRAR BOT�O') Or (Edit1.Text = 'RUIDOAOGIRARBOTAO') Or (Edit1.Text = 'RU�DO') Or (Edit1.Text = 'RUIDO') Or (Edit1.Text = 'RU�DOS AO GIRAR O BOT�O') Or (Edit1.Text = 'RUIDOSAOGIRAROBOTAO') Or (Edit1.Text = 'RU�DOS AO GIRAR O POTENCI�METRO') Or (Edit1.Text = 'RUIDOSAOGIRAROPOTENCIOMETRO') Or (Edit1.Text = 'RU�DOS AO GIRAR POTENCI�METRO') Or (Edit1.Text = 'RUIDOSAOGIRARPOTENCIOMETRO') Or (Edit1.Text = 'RU�DOS AO GIRAR BOT�O') Or (Edit1.Text = 'RUIDOSAOGIRARBOTAO') Or (Edit1.Text = 'RU�DOS QUANDO GIRA BOT�O') Or (Edit1.Text = 'RUIDOSQUANDOGIRABOTAO') Or (Edit1.Text = 'RU�DOS QUANDO GIRA O BOT�O') Or (Edit1.Text = 'RUIDOSQUANDOGIRAOBOTAO') Or (Edit1.Text = 'RU�DO QUANDO GIRA BOT�O') Or (Edit1.Text = 'RUIDOQUANDOGIRABOTAO') Or (Edit1.Text = 'RU�DO QUANDO GIRA O BOT�O') Or (Edit1.Text = 'RUIDOQUANDOGIRAOBOT�O') Then

                    Label3.Text := '1-Sujeira nos contatos ou eixos dos potenci�metros, limpe-os ou troque-os';
                If (Edit1.Text = 'N�O FICA EST�REO') Or (Edit1.Text = 'NAOFICAESTEREO') Or (Edit1.Text = 'EST�REO') Or (Edit1.Text = 'ESTEREO') Or (Edit1.Text = 'SEM EST�REO') Or (Edit1.Text = 'SEMESTEREO') Or (Edit1.Text = 'N�O EST� EST�REO') Or (Edit1.Text = 'NAOESTAESTEREO') Or (Edit1.Text = 'EST� SEM EST�REO') Or (Edit1.Text = 'ESTASEMESTEREO') Or (Edit1.Text = 'PROBLEMA COM EST�REO') Or (Edit1.Text = 'PROBLEMACOMESTEREO') Or (Edit1.Text = 'R�DIO N�O FICA EST�REO') Or (Edit1.Text = 'RADIONAOFICAESTEREO') Or (Edit1.Text = 'SOM N�O FICA EST�REO') Or (Edit1.Text = 'SOMNAOFICAESTEREO') Or (Edit1.Text = '�UDIO N�O FICA EST�REO') Or (Edit1.Text = 'AUDIONAOFICAESTEREO') Then
                    Label3.Text := '1-Veja se h� um trimpot para ajuste do est�reo, troque-o e o ajuste at� ' + #13 + 'que o LED de est�reo acenda';
                If (Edit1.Text = 'SOMROUCO') Or (Edit1.Text = '�UDIO ROUCO') Or (Edit1.Text = 'AUDIOROUCO') Or (Edit1.Text = 'ROUCO') Or (Edit1.Text = 'EST� ROUCO') Or (Edit1.Text = 'ESTAROUCO') Or (Edit1.Text = 'SOMFICOUROUCO') Or (Edit1.Text = '�UDIO FICOU ROUCO') Or (Edit1.Text = 'AUDIOFICOUROUCO') Or (Edit1.Text = '�UDIO EST� ROUCO') Or (Edit1.Text = 'AUDIOESTAROUCO') Or (Edit1.Text = 'SOM EST� ROUCO') Or (Edit1.Text = 'SOMESTAROUCO') Then

                    Label3.Text := '1-Troque os transistores de som   2-Troque os componentes da sa�da de ' + #13 + 'som(todos)   3-Se estiver apagado � os transistores reguladores da fonte';

                if (edit1.text = 'somrouco') or (edit1.text = '�udio rouco') or (edit1.text = 'audiorouco') or (edit1.text = 'rouco') or (edit1.text = 'est� rouco') or (edit1.text = 'estarouco') or (edit1.text = 'tarouco')or (edit1.text = 'somficourouco') or (edit1.text = '�udio ficou rouco') or (edit1.text = 'audioficourouco') or (edit1.text = '�udio est� rouco') or (edit1.text = 'audio esta rouco') or (edit1.text = 'som est� rouco') or (edit1.text = 'somestarouco') then
                    Label3.Text := '1-Troque os transistores de som   2-Troque os componentes da sa�da de ' + #13 + 'som(todos)   3-Se estiver apagado � os transistores reguladores da fonte';

                If (Edit1.Text = 'SOMALTO') Or (Edit1.Text = '�UDIO ALTO') Or (Edit1.Text = 'AUDIOALTO') Or (Edit1.Text = 'ALTO') Or (Edit1.Text = 'SOM EST� ALTO') Or (Edit1.Text = 'SOMESTAALTO') Or (Edit1.Text = 'SOMFICOUALTO') Or (Edit1.Text = '�UDIO FICOU ALTO') Or (Edit1.Text = 'AUDIOFICOUALTO') Or (Edit1.Text = '�UDIO EST� ALTO') Or (Edit1.Text = 'AUDIOESTAALTO') Or (Edit1.Text = 'SOM EST� ALTO') Or (Edit1.Text = 'SOMESTAALTO') Then

                    Label3.Text := '1-Troque os transistores de som   2-Troque os componentes da sa�da de ' + #13 + 'som(todos)   3-Se estiver apagado � os transistores reguladores da fonte';

                if (edit1.text = 'somalto') or (edit1.text = '�udio alto') or (edit1.text = 'audioalto') or (edit1.text = 'alto') or (edit1.text = 'som est� alto') or (edit1.text = 'somestaalto')or (edit1.text = 'somtaalto') or (edit1.text = 'somficoualto') or (edit1.text = '�udio ficou alto') or (edit1.text = 'audioficoualto') or (edit1.text = '�udio est� alto') or (edit1.text = 'audioestaalto') or (edit1.text = 'som est� alto') or (edit1.text = 'somestaalto') or (edit1.text = 'somtaalto')then
                    Label3.Text := '1-Troque os transistores de som   2-Troque os componentes da sa�da de ' + #13 + 'som(todos)   3-Se estiver apagado � os transistores reguladores da fonte';

                If (Edit1.Text = 'S� LIGA O LED') Or (Edit1.Text = 'SOLIGAOLED') Or (Edit1.Text = 'S� LIGA LED') Or (Edit1.Text = 'SOLIGALED') Or (Edit1.Text = 'LIGAOLED') Or (Edit1.Text = 'S� LIGA O STAND-BY') Or (Edit1.Text = 'SOLIGAOSTAND-BY') Or (Edit1.Text = 'S� LIGA O STANDBY') Or (Edit1.Text = 'SOLIGAOSTANDBY') Or (Edit1.Text = 'S� LIGA STANDBY') Or (Edit1.Text = 'SOLIGASTANDBY') Or (Edit1.Text = 'STANDBY')Then

                    Label3.Text := '1-Trocar o CI SMD(mem�ria-omaior da placa)';

                if (edit1.text = 's� liga o led') or (edit1.text = 'soligaoled') or (edit1.text = 's� liga led') or (edit1.text = 'soligaled') or (edit1.text = 'ligaoled') or (edit1.text = 's� liga o stand-by') or (edit1.text = 'soligaostand-by') or (edit1.text = 's� liga o standby') or (edit1.text = 'soligaostandby') or (edit1.text = 's� liga standby') or (edit1.text = 'soligastandby') or (edit1.text = 'standby')then
                    Label3.Text := '1-Trocar o CI SMD(mem�ria-omaior da placa)';

                If (Edit1.Text = 'DESARMA') Or (Edit1.Text = 'R�DIO DESARMA') Or (Edit1.Text = 'RADIODESARMA') Or (Edit1.Text = 'SOMDESARMA') Or (Edit1.Text = 'EST� DESARMANDO') Or (Edit1.Text = 'ESTADESARMANDO') Or (Edit1.Text = 'TADESARMANDO')Or (Edit1.Text = 'FICADESARMANDO') Or (Edit1.Text = 'DESARMOU') Or (Edit1.Text = 'EST� APAGANDO') Or (Edit1.Text = 'ESTAAPAGANDO') Or (Edit1.Text = 'APAGANDO') Or (Edit1.Text = 'APAGA') Or (Edit1.Text = 'APAGOU') Then

                    Label3.Text := '1-Trocar o CI SMD(mem�ria-omaior da placa)';

                if (edit1.text = 'desarma') or (edit1.text = 'r�dio desarma') or (edit1.text = 'radiodesarma') or (edit1.text = 'somdesarma') or (edit1.text = 'est� desarmando') or (edit1.text = 'estadesarmando') or (edit1.text = 'tadesarmando')or (edit1.text = 'ficadesarmando') or (edit1.text = 'desarmou') or (edit1.text = 'est� apagando') or (edit1.text = 'estaapagando') or (edit1.text = 'apagando') or (edit1.text = 'apaga') or (edit1.text = 'apagou') then
                    Label3.Text := '1-Trocar o CI SMD(mem�ria-omaior da placa)';

                If (Edit1.Text = 'N�O ACEITA COMANDO') Or (Edit1.Text = 'NAOACEITACOMANDO') Or (Edit1.Text = 'N�O ACEITA COMANDO DO CONTROLE REMOTO') Or (Edit1.Text = 'NAOACEITACOMANDODOCONTROLEREMOTO') Or (Edit1.Text = 'N�O OBEDECE O CONTROLE REMOTO') Or (Edit1.Text = 'NAOOBEDECEOCONTROLEREMOTO') Or (Edit1.Text = 'N�O OBEDECE CONTROLE REMOTO') Or (Edit1.Text = 'NAOOBEDECECONTROLEREMOTO') Or (Edit1.Text = 'N�O OBEDECE') Or (Edit1.Text = 'CONTROLEREMOTO')Then

                    Label3.Text := '1-Trocar o CI SMD(mem�ria-omaior da placa)';

                if (edit1.text = 'n�o aceita comando') or (edit1.text = 'naoaceitacomando') or (edit1.text = 'n�o aceita comando do controle remoto') or (edit1.text = 'naoaceitacomandodocontroleremoto') or (edit1.text = 'n�o obedece o controle remoto') or (edit1.text = 'naoobedeceocontroleremoto') or (edit1.text = 'n�o obedece controle remoto') or (edit1.text = 'naoobedececontroleremoto') or (edit1.text = 'n�o obedece') or (edit1.text = 'controleremoto')then
                    Label3.Text := '1-Trocar o CI SMD(mem�ria-omaior da placa)';

                If (Edit1.Text = 'DISPLAY N�O ACENDE') Or (Edit1.Text = 'DISPLAYNAOACENDE') Or (Edit1.Text = 'DISPLAY N�O LIGA') Or (Edit1.Text = 'DISPLAYNAOLIGA') Or (Edit1.Text = 'N�O LIGA O DISPLAY') Or (Edit1.Text = 'NAOLIGAODISPLAY') Or (Edit1.Text = 'DISPLAY N�O FUNCIONA') Or (Edit1.Text = 'DISPLAYNAOFUNCIONA') Or (Edit1.Text = 'N�O FUNCIONA O DISPLAY') Or (Edit1.Text = 'NAOFUNCIONAODISPLAY') Or (Edit1.Text = 'N�O FUNCIONA DISPLAY') Or (Edit1.Text = 'NAOFUNCIONADISPLAY') Or (Edit1.Text = 'N�O LIGA DISPLAY') Or (Edit1.Text = 'NAOLIGADISPLAY') Or (Edit1.Text = 'DISPLAY') Then

                    Label3.Text := '1-Veja o fusistor aberto(Na placa do display ou na placa principal)   ' + #13 + '2-Verifique tamb�m os capacitores eletrol�ticos ou os circuitos que o comandam';

                if (edit1.text = 'display n�o acende') or (edit1.text = 'displaynaoacende') or (edit1.text = 'display n�o liga') or (edit1.text = 'displaynaoliga') or (edit1.text = 'n�o liga o display') or (edit1.text = 'naoligaodisplay') or (edit1.text = 'display n�o funciona') or (edit1.text = 'displaynaofunciona') or (edit1.text = 'n�o funciona o display') or (edit1.text = 'naofuncionaodisplay') or (edit1.text = 'n�o funciona display') or (edit1.text = 'naofuncionadisplay') or (edit1.text = 'n�o liga display') or (edit1.text = 'naoligadisplay') or (edit1.text = 'display') then
                    Label3.Text := '1-Veja o fusistor aberto(Na placa do display ou na placa principal)   ' + #13 + '2-Verifique tamb�m os capacitores eletrol�ticos ou os circuitos que o comandam';

                If (Edit1.Text = 'CHAVESFALHANDO') Or (Edit1.Text = 'CHAVESDOPAINELFALHANDO') Or (Edit1.Text = 'BOT�ES FALHANDO') Or (Edit1.Text = 'BOTOESFALHANDO') Or (Edit1.Text = 'BOT�ES DO PAINEL FALHANDO') Or (Edit1.Text = 'BOTOESDOPAINELFALHANDO') Or (Edit1.Text = 'BOT�O N�O FUNCIONA') Or (Edit1.Text = 'BOTAONAOFUNCIONA') Or (Edit1.Text = 'BOT�ES N�O FUNCIONAM') Or (Edit1.Text = 'BOTOESNAOFUNCIONAM') Or (Edit1.Text = 'CHAVES N�O FUNCIONAM') Or (Edit1.Text = 'CHAVESNAOFUNCIONAM') Or (Edit1.Text = 'BOT�O N�O LIGA') Or (Edit1.Text = 'BOTAONAOLIGA') Or (Edit1.Text = 'CHAVE N�O LIGA') Or (Edit1.Text = 'CHAVENAOLIGA') Or (Edit1.Text = 'BOT�ES N�O LIGAM') Or (Edit1.Text = 'BOTOESNAOLIGAM') Or (Edit1.Text = 'CHAVES N�O LIGAM') Or (Edit1.Text = 'CHAVESNAOLIGAM') Then

                    Label3.Text := '1-Limpe-as com �lcool isoprop�lico ou substitua-as';

                if (edit1.text = 'chavesfalhando') or (edit1.text = 'chavesdopainelfalhando') or (edit1.text = 'bot�es falhando') or (edit1.text = 'botoesfalhando') or (edit1.text = 'bot�es do painel falhando') or (edit1.text = 'botoesdopainelfalhando') or (edit1.text = 'bot�o n�o funciona') or (edit1.text = 'botaonaofunciona') or (edit1.text = 'bot�es n�o funcionam') or (edit1.text = 'botoesnaofuncionam') or (edit1.text = 'chaves n�o funcionam') or (edit1.text = 'chavesnaofuncionam') or (edit1.text = 'bot�o n�o liga') or (edit1.text = 'botaonaoliga') or (edit1.text = 'chave n�o liga') or (edit1.text = 'chavenaoliga') or (edit1.text = 'bot�es n�o ligam') or (edit1.text = 'botoesnaoligam') or (edit1.text = 'chaves n�o ligam') or (edit1.text = 'chavesnaoligam') then
                   Label3.Text := '1-Limpe-as com �lcool isoprop�lico ou substitua-as';

                If (Edit1.Text = 'POTENCI�METRO DO VOLUME N�O FUNCIONA') Or (Edit1.Text = 'POTENCIOMETRODOVOLUMENAOFUNCIONA') Or (Edit1.Text = 'POTENCI�METRO DO VOLUME') Or (Edit1.Text = 'POTENCIOMETRODOVOLUME') Or (Edit1.Text = 'BOT�O DO VOLUME N�O FUNCIONA') Or (Edit1.Text = 'BOTAODOVOLUMENAOFUNCIONA') Or (Edit1.Text = 'BOT�O DO VOLUME') Or (Edit1.Text = 'BOTAODOVOLUME') Or (Edit1.Text = 'VOLUME') Or (Edit1.Text = 'VOLUME N�O FUNCIONA') Or (Edit1.Text = 'VOLUMENAOFUNCIONA') Then

                    Label3.Text := '1-Solte as travas laterais da placa e puxe o eixo, limpe todos ' + #13 + 'os contatos do eixo e a parte interna do potenci�metro com �lcool isoprop�lico';

                if (edit1.text = 'potenci�metro do volume n�o funciona') or (edit1.text = 'potenciometrodovolumenaofunciona') or (edit1.text = 'potenci�metro do volume') or (edit1.text = 'potenciometrodovolume') or (edit1.text = 'bot�o do volume n�o funciona') or (edit1.text = 'botaodovolumenaofunciona') or (edit1.text = 'bot�o do volume') or (edit1.text = 'botaodovolume') or (edit1.text = 'volume') or (edit1.text = 'volume n�o funciona') or (edit1.text = 'volumenaofunciona') then
                    Label3.Text := '1-Solte as travas laterais da placa e puxe o eixo, limpe todos ' + #13 + 'os contatos do eixo e a parte interna do potenci�metro com �lcool isoprop�lico';

                If (Edit1.Text = 'N�O PARA NAS ESTA��ES') Or (Edit1.Text = 'NAOPARANASESTACOES') Or (Edit1.Text = 'N�O PARA NAS R�DIOS') Or (Edit1.Text = 'NAOPARANASRADIOS') Or (Edit1.Text = 'N�O PARA') Or (Edit1.Text = 'NAOPARA') Or (Edit1.Text = 'ESTA��ES N�O PARAM') Or (Edit1.Text = 'ESTACOESNAOPARAM') Or (Edit1.Text = 'ESTACOESNAOPARAM') Then

                    Label3.Text := '1-Ajuste a bobina que est� ligada no AFC(Dentro do CI) ou ' + #13 + 'troque-a';

                if (edit1.text = 'n�o para nas esta��es') or (edit1.text = 'naoparanasestacoes') or (edit1.text = 'n�o para nas r�dios') or (edit1.text = 'naoparanasradios') or (edit1.text = 'n�o para') or (edit1.text = 'naopara') or (edit1.text = 'esta��es n�o param') or (edit1.text = 'estacoesnaoparam') or (edit1.text = 'estacoesnaoparam') then
                   Label3.Text := '1-Ajuste a bobina que est� ligada no AFC(Dentro do CI) ou ' + #13 + 'troque-a';

                If (Edit1.Text = 'NOLOAD') Or (Edit1.Text = 'MENSAGEMNOLOAD') Or (Edit1.Text = 'NODISC') Or (Edit1.Text = 'MENSAGEMNODISC') Or (Edit1.Text = 'N�O RECONHECE O CD') Or (Edit1.Text = 'NAORECONHECEOCD') Or (Edit1.Text = 'N�O RECONHECE O DVD') Or (Edit1.Text = 'NAORECONHECEODVD') Or (Edit1.Text = 'N�O L� O CD') Or (Edit1.Text = 'NAOLEOCD') Or (Edit1.Text = 'N�O L� O DVD') Or (Edit1.Text = 'NAOLEODVD') Or (Edit1.Text = 'N�O L� CD') Or (Edit1.Text = 'NAOLECD') Or (Edit1.Text = 'N�O L� DVD') Or (Edit1.Text = 'NAOLEDVD') Or (Edit1.Text = 'ERROR') Or (Edit1.Text = 'MENSAGEMERROR') Then

                    Label3.Text := '1-Lave a unidade �tica om �lcool 96 graus   2-Teste ou troque ' + #13 + 'os cabos flats, se estiverem amassados  3-Regule a unidade �tica(No trimpot, regule em sentido hor�rio at� o meio,' + #13 + 'se n�o a amem�ria queimar�)   4-Substitua a unidade de CD/DVD';

                if (edit1.text = 'noload') or (edit1.text = 'mensagemnoload') or (edit1.text = 'nodisc') or (edit1.text = 'mensagemnodisc') or (edit1.text = 'n�o reconhece o cd') or (edit1.text = 'naoreconheceocd') or (edit1.text = 'n�o reconhece o dvd') or (edit1.text = 'naoreconheceodvd') or (edit1.text = 'n�o l� o cd') or (edit1.text = 'naoleocd') or (edit1.text = 'n�o l� o dvd') or (edit1.text = 'naoleodvd') or (edit1.text = 'n�o l� cd') or (edit1.text = 'naolecd') or (edit1.text = 'n�o l� dvd') or (edit1.text = 'naoledvd') or (edit1.text = 'error') or (edit1.text = 'mensagemerror') then
                    Label3.Text := '1-Lave a unidade �tica om �lcool 96 graus   2-Teste ou troque ' + #13 + 'os cabos flats, se estiverem amassados  3-Regule a unidade �tica(No trimpot, regule em sentido hor�rio at� o meio, se ' + #13 + 'n�o a amem�ria queimar�)   4-Substitua a unidade de CD/DVD';

                If (Edit1.Text = 'GAVETAABRESOZINHA') Or (Edit1.Text = 'GAVETAABRE') Or (Edit1.Text = 'GAVETA') Or (Edit1.Text = 'AS VEZES TOCA AS VEZES N�O TOCA') Or (Edit1.Text = 'ASVEZESTOCAASVEZESNAOTOCA') Or (Edit1.Text = 'ASVEZESTOCA') Or (Edit1.Text = 'AS VEZES TOCA AS VEZES N�O') Or (Edit1.Text = 'ASVEZESTOCAASVEZESNAO') Or (Edit1.Text = 'ASVEZESTOCACD') Or (Edit1.Text = 'PULA A M�SICA') Or (Edit1.Text = 'PULAAMUSICA') Or (Edit1.Text = 'PULA') Or (Edit1.Text = 'REPETE A M�SICA') Or (Edit1.Text = 'REPETEAMUSICA') Or (Edit1.Text = 'REPETE') Or (Edit1.Text = 'REPETINDO') Or (Edit1.Text = 'REPETINDO A M�SICA') Or (Edit1.Text = 'REPETINDOAMUSICA') Or (Edit1.Text = 'REPETEAFAIXA') Or (Edit1.Text = 'PULAAFAIXA') Or (Edit1.Text = 'PULA') Or (Edit1.Text = 'PULA M�SICA')Or (Edit1.Text = 'PULAMUSICA')Or (Edit1.Text = 'PULAFAIXA')Or (Edit1.Text = 'REPETE M�SICA')Or (Edit1.Text = 'REPETEMUSICA')Or (Edit1.Text = 'REPETEFAIXA')Then

                    Label3.Text := '1-Troque as correias   2-Teste os motores(Use uma bateria de ' + #13 + '9V nos dois sentidos de polaridade)   3-Lubrifique as engrenagens com graxa especial de engrenagem   4-Centralize a ' + #13 + 'gaveta(Colocar o bloco da gaveta no lugar)';

                if (edit1.text = 'gavetaabresozinha') or (edit1.text = 'gavetaabre') or (edit1.text = 'gaveta') or (edit1.text = 'as vezes toca as vezes n�o toca') or (edit1.text = 'asvezestocaasvezesnaotoca') or (edit1.text = 'asvezestoca') or (edit1.text = 'as vezes toca as vezes n�o') or (edit1.text = 'asvezestocaasvezesnao') or (edit1.text = 'asvezestocacd') or (edit1.text = 'pula a m�sica') or (edit1.text = 'pulaamusica') or (edit1.text = 'pula') or (edit1.text = 'repete a m�sica') or (edit1.text = 'repeteamusica') or (edit1.text = 'repete') or (edit1.text = 'repetindo') or (edit1.text = 'repetindo a m�sica') or (edit1.text = 'repetindoamusica') or (edit1.text = 'repeteafaixa') or (edit1.text = 'pulaafaixa') or (edit1.text = 'pula') or (edit1.text = 'pula m�sica')or (edit1.text = 'pulamusica')or (edit1.text = 'pulafaixa')or (edit1.text = 'repete m�sica')or (edit1.text = 'repetemusica')or (edit1.text = 'repetefaixa')then
                    Label3.Text := '1-Troque as correias   2-Teste os motores(Use uma bateria ' + #13 + 'de 9V nos dois sentidos de polaridade)   3-Lubrifique as engrenagens com graxa especial de engrenagem   4-Centralize a ' + #13 + 'gaveta(Colocar o bloco da gaveta no lugar)';

                If (Edit1.Text = 'S� L� CD-R') Or (Edit1.Text = 'SOLECD-R') Or (Edit1.Text = 'SOLECD')Or (Edit1.Text = 'L� CD-R APENAS') Or (Edit1.Text = 'LECD-RAPENAS') Or (Edit1.Text = 'LECD-RSOMENTE') Or (Edit1.Text = 'L� CD-R') Or (Edit1.Text = 'L� CD')Or (Edit1.Text = 'LECD-R') Or (Edit1.Text = 'N�O L� MP3') Or (Edit1.Text = 'NAOLEMP3') Or (Edit1.Text = 'N�O EXECUTA MP3') Or (Edit1.Text = 'NAOEXECUTAMP3') Or (Edit1.Text = 'N�O TOCA MP3') Or (Edit1.Text = 'NAOTOCAMP3') Or (Edit1.Text = 'N�O RECONHECE MP3') Or (Edit1.Text = 'NAORECONHECEMP3') Or (Edit1.Text = 'MP3') Then

                    Label3.Text := '1-Limpe os motores da bandeja s� com graxa   2-Limpe a ' + #13 + 'unidade �tica com cotonete limpo ou passe bastante �lcool isoprop�lico no motor, espre secar e alimente o motor com uma ' + #13 + 'fonte externa e veja se gira';

                if (edit1.text = 's� l� cd-r') or (edit1.text = 'solecd-r') or (edit1.text = 'l� cd-r apenas') or (edit1.text = 'lecd-rapenas') or (edit1.text = 'lecd-rsomente') or (edit1.text = 'l� cd-r') or (edit1.text = 'lecd-r') or (edit1.text = 'n�o l� mp3') or (edit1.text = 'naolemp3') or (edit1.text = 'n�o executa mp3') or (edit1.text = 'naoexecutamp3') or (edit1.text = 'n�o toca mp3') or (edit1.text = 'naotocamp3') or (edit1.text = 'n�o reconhece mp3') or (edit1.text = 'naoreconhecemp3') or (edit1.text = 'mp3') then
                    Label3.Text := '1-Limpe os motores da bandeja s� com graxa   2-Limpe a ' + #13 + 'unidade �tica com cotonete limpo ou passe bastante �lcool isoprop�lico no motor, espre secar e alimente o motor com uma ' + #13 + 'fonte externa e veja se gira';

                if (edit1.text = 'n�o fica est�reo') or (edit1.text = 'naoficaestereo') or (edit1.text = 'est�reo') or (edit1.text = 'estereo') or (edit1.text = 'sem est�reo') or (edit1.text = 'semestereo') or (edit1.text = 'n�o est� est�reo') or (edit1.text = 'naoestaestereo') or (edit1.text = 'est� sem est�reo') or (edit1.text = 'estasemestereo') or (edit1.text = 'problema com est�reo') or (edit1.text = 'problemacomestereo') or (edit1.text = 'r�dio n�o fica est�reo') or (edit1.text = 'radionaoficaestereo') or (edit1.text = 'som n�o fica est�reo') or (edit1.text = 'somnaoficaestereo') or (edit1.text = '�udio n�o fica est�reo') or (edit1.text = 'audionaoficaestereo') then

                    Label3.Text := '1-Veja se h� um trimpot para ajuste do est�reo, troque-o e o ' + #13 + 'ajuste at� que o LED de est�reo acenda';

               If (Edit1.Text = '�UDIO DISTORCIDO') Or (Edit1.Text = 'AUDIODISTORCIDO') Or (Edit1.Text = 'SOMDISTORCIDO') Or (Edit1.Text = 'DISTOR��O') Or (Edit1.Text = 'DISTOR�AO') Or (Edit1.Text = 'DISTORCAO') Or (Edit1.Text = 'DISTORCIDO') Or (Edit1.Text = 'SOM EST� DISTORCIDO') Or (Edit1.Text = 'SOMESTADISTORCIDO') Or (Edit1.Text = 'SOMFICADISTORCIDO') Or (Edit1.Text = '�UDIO FICA DISTORCIDO') Or (Edit1.Text = 'AUDIOFICADISTORCIDO') Or (Edit1.Text = '�UDIO EST� DISTORCIDO') Or (Edit1.Text = 'AUDIOESTADISTORCIDO') Or (Edit1.Text = 'SOM EST� DISTORCIDO') Or (Edit1.Text = 'SOMESTADISTORCIDO')  Or (Edit1.Text = 'SOMTADISTORCIDO')Then
                     Label3.Text := '1-Verifique o transistor';


                if (edit1.text = 'n�o sintoniza') or (edit1.text = 'naosintoniza') or (edit1.text = 'n�o sintoniza as esta��es') or (edit1.text = 'naosintonizaasesta�oes') or (edit1.text = 'naosintonizaasestacoes') or (edit1.text = 'n�o est� sintonizando') or (edit1.text = 'naoestasintonizando') or (edit1.text = 'sintoniafraca') or (edit1.text = 'semsintonia') then
                    Label3.Text := '1-Veja transistor amplificador de RF e enrolamentos da bobina de antena  ' + #13 + '2-Transistor misturador 3-Transistor oscilador   ' + #13 + '3-Veja os transistores amplificadores de FI ' + #13 + 'ou CIs que amplificam a FI';

                If (Edit1.Text = 'SINTONIZA ESTA��O COM �UDIO BAIXO') Or (Edit1.Text = 'SINTONIZAESTA�AOCOMAUDIOBAIXO') Or (Edit1.Text = 'SINTONIZAESTACAOCOMAUDIOBAIXO') Or (Edit1.Text = 'SINTONIZA ESTA��O COM AUDIO BAIXO') Or (Edit1.Text = '�UDIO BAIXO') Or (Edit1.Text = 'AUDIOBAIXO') Or (Edit1.Text = 'SOMBAIXO') Or (Edit1.Text = 'ALGUMAS ESTA��ES COM �UDIO BAIXO') Or (Edit1.Text = 'ALGUMASESTACOESCOM AUDIO BAIXO') Or (Edit1.Text = 'ALGUMASESTACOESCOMAUDIOBAIXO') Or (Edit1.Text = 'ALGUMAS ESTA��ES COM SOM BAIXO') Or (Edit1.Text = 'ALGUMASESTACOESCOMSOMBAIXO') Or (Edit1.Text = 'ALGUMASESTACOESCOMSOMBAIXO') Or (Edit1.Text = 'ESTA��ES COM SOM BAIXO') Or (Edit1.Text = 'ESTACOESCOMSOMBAIXO') Or (Edit1.Text = 'ESTA��ES COM �UDIO BAIXO') Or (Edit1.Text = 'ESTACOESCOMAUDIOBAIXO') Then
                Label3.Text := '1-Ajuste a bobina de antena   2-Troque os transistores de som' + #13 + '(Normalmente quatro ou o CI principal)   3-Troque os componentes ' + #13 + 'da sa�da de som(todos)   4-Se estiver apagado � os ' + #13 + 'transistores reguladores da fonte';

                If (Edit1.Text = 'SINTONIZA ESTA��ES BAIXAS') Or (Edit1.Text = 'SINTONIZAESTACOESBAIXAS') Or (Edit1.Text = 'SINTONIZAESTACOESBAIXAS') Or (Edit1.Text = 'ESTA��ES BAIXAS') Or (Edit1.Text = 'ESTACOESBAIXAS') Or (Edit1.Text = 'S� SINTONIZA ESTA��ES BAIXAS') Or (Edit1.Text = 'SOSINTONIZAESTACOESBAIXAS') Or (Edit1.Text = 'SOSINTONIZAESTACOESBAIXAS') Or (Edit1.Text = 'S� TOCA ESTA��ES BAIXAS') Or (Edit1.Text = 'SOTOCAESTACOESBAIXAS') Or (Edit1.Text = 'SOTOCAESTACOESBAIXAS') Or (Edit1.Text = 'S� REPRODUZ ESTA��ES BAIXAS') Or (Edit1.Text = 'SOREPRODUZESTACOESBAIXAS') Or (Edit1.Text = 'SOREPRODUZESTACOESBAIXAS') Or (Edit1.Text = 'S� TOCA ESTA��ES BAIXAS') Or (Edit1.Text = 'SOTOCAESTACOESBAIXAS') Or (Edit1.Text = 'SOTOCAESTACOESBAIXAS') Then

                    Label3.Text := '1-Verifique os resistores que polarizam o transistor misturador';

                If (Edit1.Text = 'N�O LIGA') Or (Edit1.Text = 'DEUPAU') Or (Edit1.Text = 'N�O FUNCIONA') Or (Edit1.Text = 'N�O QUER LIGAR') Or (Edit1.Text = 'N�O QUER FUNCIONAR') Or (Edit1.Text = 'N�O EST� FUNCIONANDO') Or (Edit1.Text = 'N�O EST� LIGANDO') Or (Edit1.Text = 'NAOFUNCIONA') Or (Edit1.Text = 'NAOLIGA') Or (Edit1.Text = 'NAOESTAFUNCIONANDO') Or (Edit1.Text = 'NAOESTALIGANDO') Then

                    Label3.Text := '1-Verifique o transformador, suporte de pilhas ou mau-contato ' + #13 + 'na chave LIGA/DESLIGA   2-Transistor de regulagem da tens�o ' + #13 + 'da fonte   3-Observe os fus�veis ou teste  os fusistores na placa ' + #13 + 'do transformador de for�a';

                if (edit1.text = 'n�o liga') or (edit1.text = 'deupau') or (edit1.text = 'n�o funciona') or (edit1.text = 'n�o quer ligar') or (edit1.text = 'n�o quer funcionar') or (edit1.text = 'n�o est� funcionando') or (edit1.text = 'n�o est� ligando') or (edit1.text = 'naofunciona') or (edit1.text = 'naoliga') or (edit1.text = 'naoestafuncionando') or (edit1.text = 'naoestaligando') then
                    Label3.Text := '1-Verifique o transformador, suporte de pilhas ou mau-contato ' + #13 + 'na chave LIGA/DESLIGA   2-Transistor de regulagem da tens�o ' + #13 + 'da fonte   3-Observe os fus�veis ou teste  os fusistores na placa ' + #13 + 'do transformador de for�a';


                If (Edit1.Text = 'RONCA') Or (Edit1.Text = 'SOMRONCANDO') Or (Edit1.Text = 'R�DIO RONCA') Or (Edit1.Text = 'RADIORONCA') Or (Edit1.Text = 'R�DIO RONCANDO') Or (Edit1.Text = 'RADIORONCANDO') Or (Edit1.Text = 'SOMRONCANDO') Or (Edit1.Text = 'RONCANDO') Then

                    Label3.Text := '1-Verifique os diodos retificadores, capacitor eletrol�tico de ' + #13 + 'filtragem';

                if (edit1.text = 'ronca') or (edit1.text = 'somroncando') or (edit1.text = 'r�dio ronca') or (edit1.text = 'radioronca') or (edit1.text = 'r�dio roncando') or (edit1.text = 'radioroncando') or (edit1.text = 'somroncando') or (edit1.text = 'roncando') then
                    Label3.Text := '1-Verifique os diodos retificadores, capacitor eletrol�tico de ' + #13 + 'filtragem';


                If Label3.Text = '' Then
                  begin
                    Label4.Visible := True;
                    Label4.Text := procura + 'N�o est� relacionado, defina a pesquisa com outro nome.';
                  End;

              end;//fecha radio








          end;
end;
            {Except

                Label3.Visible := False;
                Label4.Visible := true;
                //Label4.Text := 'Informe o nome corretamente e com portugues correto(Verifique ' + #13 + 'os espa�os).'
                Label4.Text := procura + 'N�o est� relacionado, defina a pesquisa com outro nome.'

             end;}



      //end;
   //end;

end.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Consertando'
  ClientHeight = 567
  ClientWidth = 384
  FormStyle = fsPopup
  FormFactor.Width = 320
  FormFactor.Height = 480
  FormFactor.Devices = [dkDesktop]
  DesignerMobile = True
  DesignerWidth = 384
  DesignerHeight = 592
  DesignerDeviceName = 'Google Nexus 4'
  DesignerOrientation = 0
  DesignerOSVersion = ''
  object Panel2: TPanel
    Height = 585.000000000000000000
    Position.Y = 16.000000000000000000
    Width = 385.000000000000000000
    TabOrder = 0
    object Label3: TLabel
      Align = alCenter
      AutoSize = True
      Height = 26.000000000000000000
      Width = 58.000000000000000000
      WordWrap = False
      Trimming = ttCharacter
    end
    object Edit1: TEdit
      Touch.InteractiveGestures = [igLongTap, igDoubleTap]
      TabOrder = 0
      Font.Size = 12.000000000000000000
      FontColor = claBlue
      Position.X = 24.000000000000000000
      Position.Y = 112.000000000000000000
      Width = 337.000000000000000000
      Height = 32.000000000000000000
      StyledSettings = [ssFamily, ssSize, ssStyle]
      KillFocusByReturn = False
      OnChangeTracking = Edit1ChangeTracking
      OnTyping = Edit1Typing
    end
    object Label2: TLabel
      Height = 23.000000000000000000
      Position.X = 160.000000000000000000
      Position.Y = 16.000000000000000000
      Text = 'Label2'
      Width = 82.000000000000000000
      Trimming = ttCharacter
    end
    object Label1: TLabel
      Height = 23.000000000000000000
      Position.X = 128.000000000000000000
      Position.Y = 48.000000000000000000
      Text = 'Informe o defeito:'
      Width = 169.000000000000000000
      Trimming = ttCharacter
    end
    object Label4: TLabel
      Height = 23.000000000000000000
      Position.X = 16.000000000000000000
      Position.Y = 184.000000000000000000
      Text = 'Label4'
      Visible = False
      Width = 340.000000000000000000
      Trimming = ttCharacter
    end
    object Button1: TButton
      Height = 32.000000000000000000
      Position.X = 328.000000000000000000
      Position.Y = 112.000000000000000000
      StyleLookup = 'searcheditbutton'
      TabOrder = 5
      Text = 'Button1'
      Trimming = ttCharacter
      Width = 32.000000000000000000
      OnClick = Button1Click
    end
  end
  object ToolBar1: TToolBar
    Align = alBottom
    Height = 48.000000000000000000
    Position.Y = 519.000000000000000000
    TabOrder = 1
    Width = 384.000000000000000000
    OnClick = ToolBar1Click
    object Label5: TLabel
      Font.Size = 20.000000000000000000
      StyledSettings = [ssFamily, ssStyle, ssFontColor]
      Height = 23.000000000000000000
      Position.X = 160.000000000000000000
      Position.Y = 16.000000000000000000
      Text = 'Voltar'
      Width = 57.000000000000000000
      Trimming = ttCharacter
    end
  end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Consertando'
  ClientHeight = 567
  ClientWidth = 384
  FormStyle = fsPopup
  FormFactor.Width = 320
  FormFactor.Height = 480
  FormFactor.Devices = [dkDesktop]
  OnClose = FormClose
  DesignerMobile = True
  DesignerWidth = 384
  DesignerHeight = 592
  DesignerDeviceName = 'Google Nexus 4'
  DesignerOrientation = 0
  DesignerOSVersion = ''
  object Panel2: TPanel
    Height = 585.000000000000000000
    Width = 385.000000000000000000
    TabOrder = 0
    object Label3: TLabel
      Align = alCenter
      AutoSize = True
      Height = 26.000000000000000000
      Width = 58.000000000000000000
      WordWrap = False
      Trimming = ttCharacter
    end
    object Edit1: TEdit
      Touch.InteractiveGestures = [igLongTap, igDoubleTap]
      TabOrder = 0
      Font.Size = 12.000000000000000000
      FontColor = claBlue
      Position.X = 24.000000000000000000
      Position.Y = 112.000000000000000000
      Width = 337.000000000000000000
      Height = 32.000000000000000000
      StyledSettings = [ssFamily, ssSize, ssStyle]
      KillFocusByReturn = False
      OnChangeTracking = Edit1ChangeTracking
      OnTyping = Edit1Typing
    end
    object Label2: TLabel
      Height = 23.00000000000