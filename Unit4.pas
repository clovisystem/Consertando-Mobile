unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.ListView.Types, FMX.ListView, FMX.Layouts, FMX.ListBox;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Label3: TLabel;
    ToolBar1: TToolBar;
    Label5: TLabel;
    procedure ToolBar1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses Unit1;

procedure TForm4.Button1Click(Sender: TObject);
var
    procura:string;
begin
    procura:=Edit1.Text;


            If (Label2.Text = 'Rádio') Then
            Label3.Visible := true;
            //Try


                If (Edit1.Text = 'NÃO LIGA') Or (Edit1.Text = 'DEU PAU') Or (Edit1.Text = 'NÃO FUNCIONA') Or (Edit1.Text = 'NÃO QUER LIGAR') Or (Edit1.Text = 'NÃO QUER FUNCIONAR') Or (Edit1.Text = 'NÃO ESTÁ FUNCIONANDO') Or (Edit1.Text = 'NÃO ESTÁ LIGANDO') Or (Edit1.Text = 'NAO FUNCIONA') Or (Edit1.Text = 'NAO LIGA') Or (Edit1.Text = 'NAO ESTA FUNCIONANDO') Or (Edit1.Text = 'NAO ESTA LIGANDO') Then

                    Label3.Text := '1-Verifique o transformador, suporte de pilhas ou mau-contato ' + #13 + 'na chave LIGA/DESLIGA   2-Transistor de regulagem da tensão ' + #13 + 'da fonte   3-Observe os fusíveis ou teste  os fusistores na placa ' + #13 + 'do transformador de força';

                if (edit1.text = 'não liga') or (edit1.text = 'deu pau') or (edit1.text = 'não funciona') or (edit1.text = 'não quer ligar') or (edit1.text = 'não quer funcionar') or (edit1.text = 'não está funcionando') or (edit1.text = 'não está ligando') or (edit1.text = 'nao funciona') or (edit1.text = 'nao liga') or (edit1.text = 'nao esta funcionando') or (edit1.text = 'nao esta ligando') then
                    Label3.Text := '1-Verifique o transformador, suporte de pilhas ou mau-contato ' + #13 + 'na chave LIGA/DESLIGA   2-Transistor de regulagem da tensão ' + #13 + 'da fonte   3-Observe os fusíveis ou teste  os fusistores na placa ' + #13 + 'do transformador de força';


                If (Edit1.Text = 'RONCA') Or (Edit1.Text = 'SOM RONCANDO') Or (Edit1.Text = 'RÁDIO RONCA') Or (Edit1.Text = 'RADIO RONCA') Or (Edit1.Text = 'RÁDIO RONCANDO') Or (Edit1.Text = 'RADIO RONCANDO') Or (Edit1.Text = 'SOM RONCANDO') Or (Edit1.Text = 'RONCANDO') Then

                    Label3.Text := '1-Verifique os diodos retificadores, capacitor eletrolítico de ' + #13 + 'filtragem';

                if (edit1.text = 'ronca') or (edit1.text = 'som roncando') or (edit1.text = 'rádio ronca') or (edit1.text = 'radio ronca') or (edit1.text = 'rádio roncando') or (edit1.text = 'radio roncando') or (edit1.text = 'som roncando') or (edit1.text = 'roncando') then
                    Label3.Text := '1-Verifique os diodos retificadores, capacitor eletrolítico de ' + #13 + 'filtragem';

                If (Edit1.Text = 'NÃO SINTONIZA') Or (Edit1.Text = 'NAO SINTONIZA') Or (Edit1.Text = 'NÃO SINTONIZA AS ESTAÇÕES') Or (Edit1.Text = 'NAO SINTONIZA AS ESTAÇOES') Or (Edit1.Text = 'NAO SINTONIZA AS ESTACOES') Or (Edit1.Text = 'NÃO ESTÁ SINTONIZANDO') Or (Edit1.Text = 'NAO ESTA SINTONIZANDO') Or (Edit1.Text = 'SINTONIA FRACA') Or (Edit1.Text = 'SEM SINTONIA') Then

                    Label3.Text := '1-Veja transistor amplificador de RF e enrolamentos da bobina de antena  ' + #13 + '2-Transistor misturador 3-Transistor oscilador   ' + #13 + '3-Veja os transistores amplificadores de FI ou CIs que amplificam a FI';

                if (edit1.text = 'não sintoniza') or (edit1.text = 'nao sintoniza') or (edit1.text = 'não sintoniza as estações') or (edit1.text = 'nao sintoniza as estaçoes') or (edit1.text = 'nao sintoniza as estacoes') or (edit1.text = 'não está sintonizando') or (edit1.text = 'nao esta sintonizando') or (edit1.text = 'sintonia fraca') or (edit1.text = 'sem sintonia') then
                    Label3.Text := '1-Veja transistor amplificador de RF e enrolamentos da bobina de antena  ' + #13 + '2-Transistor misturador 3-Transistor oscilador   ' + #13 + '3-Veja os transistores amplificadores de FI ou CIs que amplificam a FI';

                If (Edit1.Text = 'SINTONIZA ESTAÇÃO COM ÁUDIO BAIXO') Or (Edit1.Text = 'SINTONIZA ESTAÇAO COM AUDIO BAIXO') Or (Edit1.Text = 'SINTONIZA ESTACAO COM AUDIO BAIXO') Or (Edit1.Text = 'SINTONIZA ESTAÇÃO COM AUDIO BAIXO') Or (Edit1.Text = 'ÁUDIO BAIXO') Or (Edit1.Text = 'AUDIO BAIXO') Or (Edit1.Text = 'SOM BAIXO') Or (Edit1.Text = 'ALGUMAS ESTAÇÕES COM ÁUDIO BAIXO') Or (Edit1.Text = 'ALGUMAS ESTAÇOES COM AUDIO BAIXO') Or (Edit1.Text = 'ALGUMAS ESTACOES COM AUDIO BAIXO') Or (Edit1.Text = 'ALGUMAS ESTAÇÕES COM SOM BAIXO') Or (Edit1.Text = 'ALGUMAS ESTAÇOES COM SOM BAIXO') Or (Edit1.Text = 'ALGUMAS ESTACOES COM SOM BAIXO') Or (Edit1.Text = 'ESTAÇÕES COM SOM BAIXO') Or (Edit1.Text = 'ESTACOES COM SOM BAIXO') Or (Edit1.Text = 'ESTAÇÕES COM ÁUDIO BAIXO') Or (Edit1.Text = 'ESTAÇOES COM AUDIO BAIXO') Then

                    Label3.Text := '1-Ajuste a bobina de antena   2-Troque os transistores de som' + #13 + '(Normalmente quatro ou o CI principal)   3-Troque os componentes ' + #13 + 'da saída de som(todos)   4-Se estiver apagado é os ' + #13 + 'transistores reguladores da fonte';

                if (edit1.text = 'sintoniza estação com áudio baixo') or (edit1.text = 'sintoniza estaçao com audio baixo') or (edit1.text = 'sintoniza estacao com audio baixo') or (edit1.text = 'sintoniza estação com audio baixo') or (edit1.text = 'áudio baixo') or (edit1.text = 'audio baixo') or (edit1.text = 'som baixo') or (edit1.text = 'algumas estações com áudio baixo') or (edit1.text = 'algumas estaçoes com audio baixo') or (edit1.text = 'algumas estacoes com audio baixo') or (edit1.text = 'algumas estações com som baixo') or (edit1.text = 'algumas estaçoes com som baixo') or (edit1.text = 'algumas estacoes com som baixo') or (edit1.text = 'estações com som baixo') or (edit1.text = 'estacoes com som baixo') or (edit1.text = 'estações com áudio baixo') or (edit1.text = 'estaçoes com audio baixo') then
                   Label3.Text := '1-Ajuste a bobina de antena   2-Troque os transistores de som' + #13 + '(Normalmente quatro ou o CI principal)   3-Troque os componentes ' + #13 + 'da saída de som(todos)   4-Se estiver apagado é os ' + #13 + 'transistores reguladores da fonte';

                If (Edit1.Text = 'SINTONIZA ESTAÇÕES BAIXAS') Or (Edit1.Text = 'SINTONIZA ESTAÇOES BAIXAS') Or (Edit1.Text = 'SINTONIZA ESTACOES BAIXAS') Or (Edit1.Text = 'ESTAÇÕES BAIXAS') Or (Edit1.Text = 'ESTACOES BAIXAS') Or (Edit1.Text = 'SÓ SINTONIZA ESTAÇÕES BAIXAS') Or (Edit1.Text = 'SO SINTONIZA ESTAÇOES BAIXAS') Or (Edit1.Text = 'SO SINTONIZA ESTACOES BAIXAS') Or (Edit1.Text = 'SÓ TOCA ESTAÇÕES BAIXAS') Or (Edit1.Text = 'SO TOCA ESTAÇOES BAIXAS') Or (Edit1.Text = 'SO TOCA ESTACOES BAIXAS') Or (Edit1.Text = 'SÓ REPRODUZ ESTAÇÕES BAIXAS') Or (Edit1.Text = 'SO REPRODUZ ESTAÇOES BAIXAS') Or (Edit1.Text = 'SO REPRODUZ ESTACOES BAIXAS') Or (Edit1.Text = 'SÓ TOCA ESTAÇÕES BAIXAS') Or (Edit1.Text = 'SO TOCA ESTAÇOES BAIXAS') Or (Edit1.Text = 'SO TOCA ESTACOES BAIXAS') Then

                    Label3.Text := '1-Verifique os resistores que polarizam o transistor misturador';

                if (edit1.text = 'sintoniza estações baixas') or (edit1.text = 'sintoniza estaçoes baixas') or (edit1.text = 'sintoniza estacoes baixas') or (edit1.text = 'estações baixas') or (edit1.text = 'estacoes baixas') or (edit1.text = 'só sintoniza estações baixas') or (edit1.text = 'so sintoniza estaçoes baixas') or (edit1.text = 'so sintoniza estacoes baixas') or (edit1.text = 'só toca estações baixas') or (edit1.text = 'so toca estaçoes baixas') or (edit1.text = 'so toca estacoes baixas') or (edit1.text = 'só reproduz estações baixas') or (edit1.text = 'so reproduz estaçoes baixas') or (edit1.text = 'so reproduz estacoes baixas') or (edit1.text = 'só toca estações baixas') or (edit1.text = 'so toca estaçoes baixas') or (edit1.text = 'so toca estacoes baixas') then
                    Label3.Text := '1-Verifique os resistores que polarizam o transistor misturador';

                If (Edit1.Text = 'NÃO ESTÁ SUBINDO SOM') Or (Edit1.Text = 'NÃO SOBE SOM') Or (Edit1.Text = 'SUBINDO SOM') Or (Edit1.Text = 'NÃO SUBIU SOM') Or (Edit1.Text = 'NAO ESTA SUBINDO SOM') Or (Edit1.Text = 'NAO SOBE SOM') Or (Edit1.Text = 'SUBINDO SOM') Or (Edit1.Text = 'NAO SUBIU SOM') Or (Edit1.Text = 'SEM ÁUDIO') Or (Edit1.Text = 'SEM AUDIO') Or (Edit1.Text = 'SEM SOM') Or (Edit1.Text = 'ÁUDIO') Or (Edit1.Text = 'AUDIO') Or (Edit1.Text = 'SOM') Or (Edit1.Text = 'ÁUDIO NÃO FUNCIONA') Or (Edit1.Text = 'AUDIO NAO FUNCIONA') Or (Edit1.Text = 'SOM NÃO FUNCIONA') Or (Edit1.Text = 'SOM NAO FUNCIONA') Or (Edit1.Text = 'SOM NÃO ESTÁ FUNCIONANDO') Or (Edit1.Text = 'SOM NAO ESTA FUNCIONANDO') Or (Edit1.Text = 'ÁUDIO NÃO ESTÁ FUNCIONANDO') Or (Edit1.Text = 'AUDIO NAO ESTA FUNCIONANDO') Or (Edit1.Text = 'ÁUDIO NÃO ESTÁ TOCANDO') Or (Edit1.Text = 'AUDIO NAO ESTA TOCANDO') Or (Edit1.Text = 'NÃO ESTÁ TOCANDO') Or (Edit1.Text = 'NAO ESTA TOCANDO') Or (Edit1.Text = 'SOM NÃO ESTÁ TOCANDO') Or (Edit1.Text = 'SOM NAO ESTA TOCANDO') Or (Edit1.Text = 'ÁUDIO NÃO TOCA') Or (Edit1.Text = 'AUDIO NAO TOCA') Or (Edit1.Text = 'SOM NÃO TOCA') Or (Edit1.Text = 'SOM NAO TOCA') Or (Edit1.Text = 'NÃO TOCA') Or (Edit1.Text = 'NAO TOCA') Then

                    Label3.Text := '1-Algum transistor pré-amplificador defeituoso   ' + #13 + '2-Diodo detetor   ' + #13 + '3-Veja o alto-falante, CI ou transistor de saída   ' + #13 + '4-Troque os transistores de som  ' + #13 + '5-Troque os componentes da saída de som  ' + #13 + '6-Se estiver apagado é os transistores reguladores da fonte';

                if (edit1.text = 'não está subindo som') or (edit1.text = 'não sobe som') or (edit1.text = 'subindo som') or (edit1.text = 'não subiu som') or (edit1.text = 'nao esta subindo som') or (edit1.text = 'nao sobe som') or (edit1.text = 'subindo som') or (edit1.text = 'nao subiu som') or (edit1.text = 'sem áudio') or (edit1.text = 'sem audio') or (edit1.text = 'sem som') or (edit1.text = 'áudio') or (edit1.text = 'audio') or (edit1.text = 'som') or (edit1.text = 'áudio não funciona') or (edit1.text = 'audio nao funciona') or (edit1.text = 'som não funciona') or (edit1.text = 'som nao funciona') or (edit1.text = 'som não está funcionando') or (edit1.text = 'som nao esta funcionando') or (edit1.text = 'áudio não está funcionando') or (edit1.text = 'audio nao esta funcionando') or (edit1.text = 'áudio não está tocando') or (edit1.text = 'audio nao esta tocando') or (edit1.text = 'não está tocando') or (edit1.text = 'nao esta tocando') or (edit1.text = 'som não está tocando') or (edit1.text = 'som nao esta tocando') or (edit1.text = 'áudio não toca') or (edit1.text = 'audio nao toca') or (edit1.text = 'som não toca') or (edit1.text = 'som nao toca') or (edit1.text = 'não toca') or (edit1.text = 'nao toca') then
                    Label3.Text := '1-Algum transistor pré-amplificador defeituoso   ' + #13 + '2-Diodo detetor   ' + #13 + '3-Veja o alto-falante, CI ou transistor de saída   ' + #13 + '4-Troque os transistores de som  ' + #13 + '5-Troque os componentes da saída de som  ' + #13 + '6-Se estiver apagado é os transistores reguladores da fonte';

                If (Edit1.Text = 'ESTAÇÕES DESLOCADAS') Or (Edit1.Text = 'ESTACOES DESLOCADAS') Or (Edit1.Text = 'ESTAÇÕES DESLOCADAS NO DIAL') Or (Edit1.Text = 'ESTAÇOES DESLOCADAS NO DIAL') Or (Edit1.Text = 'ESTACOES DESLOCADAS NO DIAL') Or (Edit1.Text = 'ESTAÇÕES FORA DE POSIÇÃO') Or (Edit1.Text = 'ESTAÇOES FORA DE POSIÇAO') Or (Edit1.Text = 'ESTACOES FORA DE POSICAO') Or (Edit1.Text = 'ESTAÇÃO FORA DE POSIÇÃO') Or (Edit1.Text = 'ESTAÇAO FORA DE POSIÇAO') Or (Edit1.Text = 'ESTACAO FORA DE POSICAO') Or (Edit1.Text = 'DIAL FORA DE POSIÇÃO') Or (Edit1.Text = 'DIAL FORA DE POSICAO') Or (Edit1.Text = 'DIAL') Or (Edit1.Text = 'DIAL DESLOCADO') Or (Edit1.Text = 'DESLOCADO') Or (Edit1.Text = 'DESLOCADA') Or (Edit1.Text = 'ESTAÇÃO DESLOCADA') Or (Edit1.Text = 'ESTACAO DESLOCADA')Or (Edit1.Text = 'MOSTRADOR')Or (Edit1.Text = 'DEFEITO MOSTRADOR')Or (Edit1.Text = 'DEFEITO DIAL')Or (Edit1.Text = 'DEFEITO NO MOSTRADOR')Or (Edit1.Text = 'DEFEITO NO DIAL') Then

                    Label3.Text := '1-Ajuste a bobina osciladora e trimmer que fica no capacitor ' + #13 + 'variável(Normalmente ajusta-se a bobina para as estações baixas ' + #13 + 'e o trimmer para as altas)';

                if (edit1.text = 'estações deslocadas') or (edit1.text = 'estacoes deslocadas') or (edit1.text = 'estações deslocadas no dial') or (edit1.text = 'estaçoes deslocadas no dial') or (edit1.text = 'estacoes deslocadas no dial') or (edit1.text = 'estações fora de posição') or (edit1.text = 'estaçoes fora de posiçao') or (edit1.text = 'estacoes fora de posicao') or (edit1.text = 'estação fora de posição') or (edit1.text = 'estaçao fora de posiçao') or (edit1.text = 'estacao fora de posicao') or (edit1.text = 'dial fora de posição') or (edit1.text = 'dial fora de posicao') or (edit1.text = 'dial') or (edit1.text = 'dial deslocado') or (edit1.text = 'deslocado') or (edit1.text = 'deslocada') or (edit1.text = 'estação deslocada') or (edit1.text = 'estacao deslocada')or (edit1.text = 'mostrador')or (edit1.text = 'defeito mostrador')or (edit1.text = 'defeito dial')or (edit1.text = 'defeito no mostrador')or (edit1.text = 'defeito no dial') then
                    Label3.Text := '1-Ajuste a bobina osciladora e trimmer que fica no capacitor ' + #13 + 'variável(Normalmente ajusta-se a bobina para as estações baixas ' + #13 + 'e o trimmer para as altas)';

                If (Edit1.Text = 'NÃO SINTONIZA NADA') Or (Edit1.Text = 'NAO SINTONIZA NADA') Or (Edit1.Text = 'NÃO TOCA NADA') Or (Edit1.Text = 'NAO TOCA NADA') Or (Edit1.Text = 'NÃO ESTÁ SINTONIZANDO NADA') Or (Edit1.Text = 'NAO ESTA SINTONIZANDO NADA') Or (Edit1.Text = 'NÃO ESTÁ TOCANDO NADA') Or (Edit1.Text = 'NAO ESTA TOCANDO NADA') Or (Edit1.Text = 'NÃO ESCUTO NADA') Or (Edit1.Text = 'NAO ESCUTO NADA') Or (Edit1.Text = 'NÃO FALA NADA') Or (Edit1.Text = 'NAO FALA NADA') Or (Edit1.Text = 'SINTONIZA NADA') Then

                    Label3.Text := '1-Verifique o transistor oscilador  2-Verifique o transistor ' + #13 + 'amplicador de RF';

               if (edit1.text = 'não sintoniza nada') or (edit1.text = 'nao sintoniza nada') or (edit1.text = 'não toca nada') or (edit1.text = 'nao toca nada') or (edit1.text = 'não está sintonizando nada') or (edit1.text = 'nao esta sintonizando nada') or (edit1.text = 'não está tocando nada') or (edit1.text = 'nao esta tocando nada') or (edit1.text = 'não escuto nada') or (edit1.text = 'nao escuto nada') or (edit1.text = 'não fala nada') or (edit1.text = 'nao fala nada') or (edit1.text = 'sintoniza nada') then
                    Label3.Text := '1-Verifique o transistor oscilador  2-Verifique o transistor ' + #13 + 'amplicador de RF';

                If (Edit1.Text = 'NÃO ESTÁ SUBINDO ÁUDIO') Or (Edit1.Text = 'NÃO SOBE ÁUDIO') Or (Edit1.Text = 'SUBINDO ÁUDIO') Or (Edit1.Text = 'NÃO SUBIU ÁUDIO') Or (Edit1.Text = 'NÃO ESTA SUBINDO ÁUDIO') Or (Edit1.Text = 'NAO SOBE ÁUDIO') Or (Edit1.Text = 'SUBINDO ÁUDIO') Or (Edit1.Text = 'NÃO SUBIU ÁUDIO') Or (Edit1.Text = 'NAO ESTA SUBINDO AUDIO') Or (Edit1.Text = 'NAO SOBE AUDIO') Or (Edit1.Text = 'SUBINDO AUDIO') Or (Edit1.Text = 'NAO SUBIU AUDIO') Or (Edit1.Text = 'NAO ESTA SUBINDO AUDIO') Or (Edit1.Text = 'NAO SOBE AUDIO') Or (Edit1.Text = 'SUBINDO AUDIO') Or (Edit1.Text = 'NAO SUBIU AUDIO') Then
                    Label3.Text := '1-Algum transistor pré-amplificador defeituoso   ' + #13 + '2-Diodo detetor   ' + #13 + '3-Veja o alto-falante, CI ou transistor de saída   ' + #13 + '4-Troque os transistores de som  ' + #13 + '5-Troque os componentes da saída de som  ' + #13 + '6-Se estiver apagado é os transistores reguladores da fonte';

                if (edit1.text = 'não está subindo áudio') or (edit1.text = 'não sobe áudio') or (edit1.text = 'subindo áudio') or (edit1.text = 'não subiu áudio') or (edit1.text = 'não esta subindo áudio') or (edit1.text = 'nao sobe áudio') or (edit1.text = 'subindo áudio') or (edit1.text = 'não subiu áudio') or (edit1.text = 'nao esta subindo audio') or (edit1.text = 'nao sobe audio') or (edit1.text = 'subindo audio') or (edit1.text = 'nao subiu audio') or (edit1.text = 'nao esta subindo audio') or (edit1.text = 'nao sobe audio') or (edit1.text = 'subindo audio') or (edit1.text = 'nao subiu audio') then
                    Label3.Text := '1-Algum transistor pré-amplificador defeituoso   ' + #13 + '2-Diodo detetor   ' + #13 + '3-Veja o alto-falante, CI ou transistor de saída   ' + #13 + '4-Troque os transistores de som  ' + #13 + '5-Troque os componentes da saída de som  ' + #13 + '6-Se estiver apagado é os transistores reguladores da fonte';


                If (Edit1.Text = 'ÁUDIO FANHOSO') Or (Edit1.Text = 'AUDIO FANHOSO') Or (Edit1.Text = 'SOM FANHOSO') Or (Edit1.Text = 'FANHOSO') Or (Edit1.Text = 'SOM ESTRANHO') Or (Edit1.Text = 'ÁUDIO ESTRANHO') Or (Edit1.Text = 'AUDIO ESTRANHO') Or (Edit1.Text = 'ÁUDIO RUIM') Or (Edit1.Text = 'AUDIO RUIM') Or (Edit1.Text = 'SOM RUIM') Or (Edit1.Text = 'FANHO') Or (Edit1.Text = 'FANHOSO') Then

                    Label3.Text := '1-Bobinas desajustadas ou com contatos desajustados ' + #13 + '(Geralmente ligado a dois diodos detetores)';

                if (edit1.text = 'áudio fanhoso') or (edit1.text = 'audio fanhoso') or (edit1.text = 'som fanhoso') or (edit1.text = 'fanhoso') or (edit1.text = 'som estranho') or (edit1.text = 'áudio estranho') or (edit1.text = 'audio estranho') or (edit1.text = 'áudio ruim') or (edit1.text = 'audio ruim') or (edit1.text = 'som ruim') or (edit1.text = 'fanho') or (edit1.text = 'fanhoso') then
                    Label3.Text := '1-Bobinas desajustadas ou com contatos desajustados ' + #13 + '(Geralmente ligado a dois diodos detetores)';

                If (Edit1.Text = 'SOM PIPOCANDO') Or (Edit1.Text = 'ÁUDIO PIPOCANDO') Or (Edit1.Text = 'AUDIO PIPOCANDO') Or (Edit1.Text = 'PIPOCANDO') Or (Edit1.Text = 'PIPOCA') Or (Edit1.Text = 'FICA PIPOCANDO') Or (Edit1.Text = 'ESTÁ PIPOCANDO') Or (Edit1.Text = 'ESTA PIPOCANDO') Or (Edit1.Text = 'ESTÁ A PIPOCAR') Or (Edit1.Text = 'ESTA A PIPOCAR') Or (Edit1.Text = 'BATIDOS') Or (Edit1.Text = 'BATIDAS') Or (Edit1.Text = 'PIPOCA') Then

                    Label3.Text := '1-Verifique o capacitor que liga a saída dos transistores com o alto-falante   2-Veja transistores ou CI de saída';

                if (edit1.text = 'som pipocando') or (edit1.text = 'áudio pipocando') or (edit1.text = 'audio pipocando') or (edit1.text = 'pipocando') or (edit1.text = 'pipoca') or (edit1.text = 'fica pipocando') or (edit1.text = 'está pipocando') or (edit1.text = 'esta pipocando') or (edit1.text = 'está a pipocar') or (edit1.text = 'esta a pipocar') or (edit1.text = 'batidos') or (edit1.text = 'batidas') or (edit1.text = 'pipoca') then
                   Label3.Text := '1-Verifique o capacitor que liga a saída dos transistores com o alto-falante   2-Veja transistores ou CI de saída';

                If (Edit1.Text = 'RUÍDO AO MUDAR DE ESTAÇÃO') Or (Edit1.Text = 'RUIDO AO MUDAR DE ESTAÇAO') Or (Edit1.Text = 'RUIDO AO MUDAR DE ESTACAO') Or (Edit1.Text = 'RUÍDO QUANDO MUDA DE ESTAÇÃO') Or (Edit1.Text = 'RUIDO QUANDO MUDA DE ESTAÇAO') Or (Edit1.Text = 'RUIDO QUANDO MUDA DE ESTACAO') Or (Edit1.Text = 'BARULHO AO MUDAR DE ESTAÇÃO') Or (Edit1.Text = 'BARULHO AO MUDAR DE ESTACAO') Or (Edit1.Text = 'BARULHO QUANDO MUDA DE ESTAÇÃO') Or (Edit1.Text = 'BARULHO QUANDO MUDA DE ESTAÇAO') Or (Edit1.Text = 'BARULHO QUANDO MUDA DE ESTACAO') Or (Edit1.Text = 'BARULHO') Or (Edit1.Text = 'BARULHOS') Then

                    Label3.Text := '1-Limpe o capacitor variável com álcool isopropílico ou com um óleo fino em seu eixo';

                if (edit1.text = 'ruído ao mudar de estação') or (edit1.text = 'ruido ao mudar de estaçao') or (edit1.text = 'ruido ao mudar de estacao') or (edit1.text = 'ruído quando muda de estação') or (edit1.text = 'ruido quando muda de estaçao') or (edit1.text = 'ruido quando muda de estacao') or (edit1.text = 'barulho ao mudar de estação') or (edit1.text = 'barulho ao mudar de estacao') or (edit1.text = 'barulho quando muda de estação') or (edit1.text = 'barulho quando muda de estaçao') or (edit1.text = 'barulho quando muda de estacao') or (edit1.text = 'barulho') or (edit1.text = 'barulhos') then
                    Label3.Text := '1-Limpe o capacitor variável com álcool isopropílico ou com um óleo fino em seu eixo';

                If (Edit1.Text = 'ÁUDIO DISTORCIDO') Or (Edit1.Text = 'AUDIO DISTORCIDO') Or (Edit1.Text = 'SOM DISTORCIDO') Or (Edit1.Text = 'DISTORÇÃO') Or (Edit1.Text = 'DISTORÇAO') Or (Edit1.Text = 'DISTORCAO') Or (Edit1.Text = 'DISTORCIDO') Or (Edit1.Text = 'SOM ESTÁ DISTORCIDO') Or (Edit1.Text = 'SOM ESTA DISTORCIDO') Or (Edit1.Text = 'SOM FICA DISTORCIDO') Or (Edit1.Text = 'ÁUDIO FICA DISTORCIDO') Or (Edit1.Text = 'AUDIO FICA DISTORCIDO') Or (Edit1.Text = 'ÁUDIO ESTÁ DISTORCIDO') Or (Edit1.Text = 'AUDIO ESTA DISTORCIDO') Or (Edit1.Text = 'SOM ESTÁ DISTORCIDO') Or (Edit1.Text = 'SOM ESTA DISTORCIDO') Then

                    Label3.Text := '1-Verifique o transistor';

                if (edit1.text = 'áudio distorcido') or (edit1.text = 'audio distorcido') or (edit1.text = 'som distorcido') or (edit1.text = 'distorção') or (edit1.text = 'distorçao') or (edit1.text = 'distorcao') or (edit1.text = 'distorcido') or (edit1.text = 'som está distorcido') or (edit1.text = 'som esta distorcido') or (edit1.text = 'som fica distorcido') or (edit1.text = 'áudio fica distorcido') or (edit1.text = 'audio fica distorcido') or (edit1.text = 'áudio está distorcido') or (edit1.text = 'audio esta distorcido') or (edit1.text = 'som está distorcido') or (edit1.text = 'som esta distorcido') then
                    Label3.Text := '1-Verifique o transistor';

                  if (edit1.text = 'ruídos') or (edit1.text = 'ruidos') or (edit1.text = 'ruídos ao mexer o potenciômetro') or (edit1.text = 'ruidos ao mexer o potenciometro') or (edit1.text = 'ruído no potenciômetro') or (edit1.text = 'ruido no potenciometro') or (edit1.text = 'ruído ao girar botão') or (edit1.text = 'ruido ao girar botao') or (edit1.text = 'ruído ao girar botão') or (edit1.text = 'ruido ao girar botao') or (edit1.text = 'ruído') or (edit1.text = 'ruido') or (edit1.text = 'ruídos ao girar o botão') or (edit1.text = 'ruidos ao girar o botao') or (edit1.text = 'ruídos ao girar o potenciômetro') or (edit1.text = 'ruidos ao girar o potenciometro') or (edit1.text = 'ruídos ao girar potenciômetro') or (edit1.text = 'ruidos ao girar potenciometro') or (edit1.text = 'ruídos ao girar botão') or (edit1.text = 'ruidos ao girar botao') or (edit1.text = 'ruídos quando gira botão') or (edit1.text = 'ruidos quando gira botao') or (edit1.text = 'ruídos quando gira o botão') or (edit1.text = 'ruidos quando gira o botao') or (edit1.text = 'ruído quando gira botão') or (edit1.text = 'ruido quando gira botao') or (edit1.text = 'ruído quando gira o botão') or (edit1.text = 'ruido quando gira o botão') then
                     Label3.Text := '1-Sujeira nos contatos ou eixos dos potenciômetros, limpe-os ou troque-os';

                If (Edit1.Text = 'RUÍDO GRAVE') Or (Edit1.Text = 'RUIDO GRAVE') Or (Edit1.Text = 'SOM GRAVE') Or (Edit1.Text = 'ÁUDIO GRAVE') Or (Edit1.Text = 'AUDIO GRAVE') Or (Edit1.Text = 'GRAVE') Or (Edit1.Text = 'SOM ESTÁ GRAVE') Or (Edit1.Text = 'SOM ESTA GRAVE') Or (Edit1.Text = 'ÁUDIO ESTÁ GRAVE') Or (Edit1.Text = 'AUDIO ESTA GRAVE') Or (Edit1.Text = 'RUÍDO ESTÁ GRAVE') Or (Edit1.Text = 'RUIDO ESTA GRAVE') Or (Edit1.Text = 'SOM FICOU GRAVE') Or (Edit1.Text = 'SOM FICANDO GRAVE') Or (Edit1.Text = 'ÁUDIO FICOU GRAVE') Or (Edit1.Text = 'AUDIO FICOU GRAVE') Or (Edit1.Text = 'ÁUDIO FICANDO GRAVE') Or (Edit1.Text = 'AUDIO FICANDO GRAVE') Then

                    Label3.Text := '1-Os responsáveis são os diodos retificadores e capacitor de filtragem';

                if (edit1.text = 'ruído grave') or (edit1.text = 'ruido grave') or (edit1.text = 'som grave') or (edit1.text = 'áudio grave') or (edit1.text = 'audio grave') or (edit1.text = 'grave') or (edit1.text = 'som está grave') or (edit1.text = 'som esta grave') or (edit1.text = 'áudio está grave') or (edit1.text = 'audio esta grave') or (edit1.text = 'ruído está grave') or (edit1.text = 'ruido esta grave') or (edit1.text = 'som ficou grave') or (edit1.text = 'som ficando grave') or (edit1.text = 'áudio ficou grave') or (edit1.text = 'audio ficou grave') or (edit1.text = 'áudio ficando grave') or (edit1.text = 'audio ficando grave') then
                    Label3.Text := '1-Os responsáveis são os diodos retificadores e capacitor de filtragem';

                If (Edit1.Text = 'NÃO FICA ESTÉREO') Or (Edit1.Text = 'NAO FICA ESTEREO') Or (Edit1.Text = 'ESTÉREO') Or (Edit1.Text = 'ESTEREO') Or (Edit1.Text = 'SEM ESTÉREO') Or (Edit1.Text = 'SEM ESTEREO') Or (Edit1.Text = 'NÃO ESTÁ ESTÉREO') Or (Edit1.Text = 'NAO ESTA ESTEREO') Or (Edit1.Text = 'ESTÁ SEM ESTÉREO') Or (Edit1.Text = 'ESTA SEM ESTEREO') Or (Edit1.Text = 'PROBLEMA COM ESTÉREO') Or (Edit1.Text = 'PROBLEMA COM ESTEREO') Or (Edit1.Text = 'RÁDIO NÃO FICA ESTÉREO') Or (Edit1.Text = 'RADIO NAO FICA ESTEREO') Or (Edit1.Text = 'SOM NÃO FICA ESTÉREO') Or (Edit1.Text = 'SOM NAO FICA ESTEREO') Or (Edit1.Text = 'ÁUDIO NÃO FICA ESTÉREO') Or (Edit1.Text = 'AUDIO NAO FICA ESTEREO') Then

                    Label3.Text := '1-Veja se há um trimpot para ajuste do estéreo, troque-o e o ajuste até que o LED de estéreo acenda';

                 If (Edit1.Text = 'RUÍDOS') Or (Edit1.Text = 'RUIDOS') Or (Edit1.Text = 'RUÍDOS AO MEXER O POTENCIÔMETRO') Or (Edit1.Text = 'RUIDOS AO MEXER O POTENCIOMETRO') Or (Edit1.Text = 'RUÍDO NO POTENCIÔMETRO') Or (Edit1.Text = 'RUIDO NO POTENCIOMETRO') Or (Edit1.Text = 'RUÍDO AO GIRAR BOTÃO') Or (Edit1.Text = 'RUIDO AO GIRAR BOTAO') Or (Edit1.Text = 'RUÍDO AO GIRAR BOTÃO') Or (Edit1.Text = 'RUIDO AO GIRAR BOTAO') Or (Edit1.Text = 'RUÍDO') Or (Edit1.Text = 'RUIDO') Or (Edit1.Text = 'RUÍDOS AO GIRAR O BOTÃO') Or (Edit1.Text = 'RUIDOS AO GIRAR O BOTAO') Or (Edit1.Text = 'RUÍDOS AO GIRAR O POTENCIÔMETRO') Or (Edit1.Text = 'RUIDOS AO GIRAR O POTENCIOMETRO') Or (Edit1.Text = 'RUÍDOS AO GIRAR POTENCIÔMETRO') Or (Edit1.Text = 'RUIDOS AO GIRAR POTENCIOMETRO') Or (Edit1.Text = 'RUÍDOS AO GIRAR BOTÃO') Or (Edit1.Text = 'RUIDOS AO GIRAR BOTAO') Or (Edit1.Text = 'RUÍDOS QUANDO GIRA BOTÃO') Or (Edit1.Text = 'RUIDOS QUANDO GIRA BOTAO') Or (Edit1.Text = 'RUÍDOS QUANDO GIRA O BOTÃO') Or (Edit1.Text = 'RUIDOS QUANDO GIRA O BOTAO') Or (Edit1.Text = 'RUÍDO QUANDO GIRA BOTÃO') Or (Edit1.Text = 'RUIDO QUANDO GIRA BOTAO') Or (Edit1.Text = 'RUÍDO QUANDO GIRA O BOTÃO') Or (Edit1.Text = 'RUIDO QUANDO GIRA O BOTÃO') Then

                    Label3.Text := '1-Sujeira nos contatos ou eixos dos potenciômetros, limpe-os ou troque-os';

                If (Edit1.Text = 'SOM ROUCO') Or (Edit1.Text = 'ÁUDIO ROUCO') Or (Edit1.Text = 'AUDIO ROUCO') Or (Edit1.Text = 'ROUCO') Or (Edit1.Text = 'ESTÁ ROUCO') Or (Edit1.Text = 'ESTA ROUCO') Or (Edit1.Text = 'SOM FICOU ROUCO') Or (Edit1.Text = 'ÁUDIO FICOU ROUCO') Or (Edit1.Text = 'AUDIO FICOU ROUCO') Or (Edit1.Text = 'ÁUDIO ESTÁ ROUCO') Or (Edit1.Text = 'AUDIO ESTA ROUCO') Or (Edit1.Text = 'SOM ESTÁ ROUCO') Or (Edit1.Text = 'SOM ESTA ROUCO') Then

                    Label3.Text := '1-Troque os transistores de som   2-Troque os componentes da saída de som(todos)   3-Se estiver apagado é os transistores reguladores da fonte';

                if (edit1.text = 'som rouco') or (edit1.text = 'áudio rouco') or (edit1.text = 'audio rouco') or (edit1.text = 'rouco') or (edit1.text = 'está rouco') or (edit1.text = 'esta rouco') or (edit1.text = 'som ficou rouco') or (edit1.text = 'áudio ficou rouco') or (edit1.text = 'audio ficou rouco') or (edit1.text = 'áudio está rouco') or (edit1.text = 'audio esta rouco') or (edit1.text = 'som está rouco') or (edit1.text = 'som esta rouco') then
                    Label3.Text := '1-Troque os transistores de som   2-Troque os componentes da saída de som(todos)   3-Se estiver apagado é os transistores reguladores da fonte';

                If (Edit1.Text = 'SOM ALTO') Or (Edit1.Text = 'ÁUDIO ALTO') Or (Edit1.Text = 'AUDIO ALTO') Or (Edit1.Text = 'ALTO') Or (Edit1.Text = 'SOM ESTÁ ALTO') Or (Edit1.Text = 'SOM ESTA ALTO') Or (Edit1.Text = 'SOM FICOU ALTO') Or (Edit1.Text = 'ÁUDIO FICOU ALTO') Or (Edit1.Text = 'AUDIO FICOU ALTO') Or (Edit1.Text = 'ÁUDIO ESTÁ ALTO') Or (Edit1.Text = 'AUDIO ESTA ALTO') Or (Edit1.Text = 'SOM ESTÁ ALTO') Or (Edit1.Text = 'SOM ESTA ALTO') Then

                    Label3.Text := '1-Troque os transistores de som   2-Troque os componentes da saída de som(todos)   3-Se estiver apagado é os transistores reguladores da fonte';

                if (edit1.text = 'som alto') or (edit1.text = 'áudio alto') or (edit1.text = 'audio alto') or (edit1.text = 'alto') or (edit1.text = 'som está alto') or (edit1.text = 'som esta alto') or (edit1.text = 'som ficou alto') or (edit1.text = 'áudio ficou alto') or (edit1.text = 'audio ficou alto') or (edit1.text = 'áudio está alto') or (edit1.text = 'audio esta alto') or (edit1.text = 'som está alto') or (edit1.text = 'som esta alto') then
                    Label3.Text := '1-Troque os transistores de som   2-Troque os componentes da saída de som(todos)   3-Se estiver apagado é os transistores reguladores da fonte';

                If (Edit1.Text = 'SÓ LIGA O LED') Or (Edit1.Text = 'SO LIGA O LED') Or (Edit1.Text = 'SÓ LIGA LED') Or (Edit1.Text = 'SO LIGA LED') Or (Edit1.Text = 'LIGA O LED') Or (Edit1.Text = 'SÓ LIGA O STAND-BY') Or (Edit1.Text = 'SO LIGA O STAND-BY') Or (Edit1.Text = 'SÓ LIGA O STANDBY') Or (Edit1.Text = 'SO LIGA O STANDBY') Or (Edit1.Text = 'SÓ LIGA STANDBY') Or (Edit1.Text = 'SO LIGA STANDBY') Or (Edit1.Text = 'STANDBY')Then

                    Label3.Text := '1-Trocar o CI SMD(memória-omaior da placa)';

                if (edit1.text = 'só liga o led') or (edit1.text = 'so liga o led') or (edit1.text = 'só liga led') or (edit1.text = 'so liga led') or (edit1.text = 'liga o led') or (edit1.text = 'só liga o stand-by') or (edit1.text = 'so liga o stand-by') or (edit1.text = 'só liga o standby') or (edit1.text = 'so liga o standby') or (edit1.text = 'só liga standby') or (edit1.text = 'so liga standby') or (edit1.text = 'standby')then
                    Label3.Text := '1-Trocar o CI SMD(memória-omaior da placa)';

                If (Edit1.Text = 'DESARMA') Or (Edit1.Text = 'RÁDIO DESARMA') Or (Edit1.Text = 'RADIO DESARMA') Or (Edit1.Text = 'SOM DESARMA') Or (Edit1.Text = 'ESTÁ DESARMANDO') Or (Edit1.Text = 'ESTA DESARMANDO') Or (Edit1.Text = 'FICA DESARMANDO') Or (Edit1.Text = 'DESARMOU') Or (Edit1.Text = 'ESTÁ APAGANDO') Or (Edit1.Text = 'ESTA APAGANDO') Or (Edit1.Text = 'APAGANDO') Or (Edit1.Text = 'APAGA') Or (Edit1.Text = 'APAGOU') Then

                    Label3.Text := '1-Trocar o CI SMD(memória-omaior da placa)';

                if (edit1.text = 'desarma') or (edit1.text = 'rádio desarma') or (edit1.text = 'radio desarma') or (edit1.text = 'som desarma') or (edit1.text = 'está desarmando') or (edit1.text = 'esta desarmando') or (edit1.text = 'fica desarmando') or (edit1.text = 'desarmou') or (edit1.text = 'está apagando') or (edit1.text = 'esta apagando') or (edit1.text = 'apagando') or (edit1.text = 'apaga') or (edit1.text = 'apagou') then
                    Label3.Text := '1-Trocar o CI SMD(memória-omaior da placa)';

                If (Edit1.Text = 'NÃO ACEITA COMANDO') Or (Edit1.Text = 'NAO ACEITA COMANDO') Or (Edit1.Text = 'NÃO ACEITA COMANDO DO CONTROLE REMOTO') Or (Edit1.Text = 'NAO ACEITA COMANDO DO CONTROLE REMOTO') Or (Edit1.Text = 'NÃO OBEDECE O CONTROLE REMOTO') Or (Edit1.Text = 'NAO OBEDECE O CONTROLE REMOTO') Or (Edit1.Text = 'NÃO OBEDECE CONTROLE REMOTO') Or (Edit1.Text = 'NAO OBEDECE CONTROLE REMOTO') Or (Edit1.Text = 'NÃO OBEDECE') Or (Edit1.Text = 'CONTROLE REMOTO')Then

                    Label3.Text := '1-Trocar o CI SMD(memória-omaior da placa)';

                if (edit1.text = 'não aceita comando') or (edit1.text = 'nao aceita comando') or (edit1.text = 'não aceita comando do controle remoto') or (edit1.text = 'nao aceita comando do controle remoto') or (edit1.text = 'não obedece o controle remoto') or (edit1.text = 'nao obedece o controle remoto') or (edit1.text = 'não obedece controle remoto') or (edit1.text = 'nao obedece controle remoto') or (edit1.text = 'não obedece') or (edit1.text = 'controle remoto')then
                    Label3.Text := '1-Trocar o CI SMD(memória-omaior da placa)';

                If (Edit1.Text = 'DISPLAY NÃO ACENDE') Or (Edit1.Text = 'DISPLAY NAO ACENDE') Or (Edit1.Text = 'DISPLAY NÃO LIGA') Or (Edit1.Text = 'DISPLAY NAO LIGA') Or (Edit1.Text = 'NÃO LIGA O DISPLAY') Or (Edit1.Text = 'NAO LIGA O DISPLAY') Or (Edit1.Text = 'DISPLAY NÃO FUNCIONA') Or (Edit1.Text = 'DISPLAY NAO FUNCIONA') Or (Edit1.Text = 'NÃO FUNCIONA O DISPLAY') Or (Edit1.Text = 'NAO FUNCIONA O DISPLAY') Or (Edit1.Text = 'NÃO FUNCIONA DISPLAY') Or (Edit1.Text = 'NAO FUNCIONA DISPLAY') Or (Edit1.Text = 'NÃO LIGA DISPLAY') Or (Edit1.Text = 'NAO LIGA DISPLAY') Or (Edit1.Text = 'DISPLAY') Then

                    Label3.Text := '1-Veja o fusistor aberto(Na placa do display ou na placa principal)   2-Verifique também os capacitores eletrolíticos ou os circuitos que o comandam';

                if (edit1.text = 'display não acende') or (edit1.text = 'display nao acende') or (edit1.text = 'display não liga') or (edit1.text = 'display nao liga') or (edit1.text = 'não liga o display') or (edit1.text = 'nao liga o display') or (edit1.text = 'display não funciona') or (edit1.text = 'display nao funciona') or (edit1.text = 'não funciona o display') or (edit1.text = 'nao funciona o display') or (edit1.text = 'não funciona display') or (edit1.text = 'nao funciona display') or (edit1.text = 'não liga display') or (edit1.text = 'nao liga display') or (edit1.text = 'display') then
                    Label3.Text := '1-Veja o fusistor aberto(Na placa do display ou na placa principal)   2-Verifique também os capacitores eletrolíticos ou os circuitos que o comandam';

                If (Edit1.Text = 'CHAVES FALHANDO') Or (Edit1.Text = 'CHAVES DO PAINEL FALHANDO') Or (Edit1.Text = 'BOTÕES FALHANDO') Or (Edit1.Text = 'BOTOES FALHANDO') Or (Edit1.Text = 'BOTÕES DO PAINEL FALHANDO') Or (Edit1.Text = 'BOTOES DO PAINEL FALHANDO') Or (Edit1.Text = 'BOTÃO NÃO FUNCIONA') Or (Edit1.Text = 'BOTAO NAO FUNCIONA') Or (Edit1.Text = 'BOTÕES NÃO FUNCIONAM') Or (Edit1.Text = 'BOTOES NAO FUNCIONAM') Or (Edit1.Text = 'CHAVES NÃO FUNCIONAM') Or (Edit1.Text = 'CHAVES NAO FUNCIONAM') Or (Edit1.Text = 'BOTÃO NÃO LIGA') Or (Edit1.Text = 'BOTAO NAO LIGA') Or (Edit1.Text = 'CHAVE NÃO LIGA') Or (Edit1.Text = 'CHAVE NAO LIGA') Or (Edit1.Text = 'BOTÕES NÃO LIGAM') Or (Edit1.Text = 'BOTOES NAO LIGAM') Or (Edit1.Text = 'CHAVES NÃO LIGAM') Or (Edit1.Text = 'CHAVES NAO LIGAM') Then

                    Label3.Text := '1-Limpe-as com álcool isopropílico ou substitua-as';

                if (edit1.text = 'chaves falhando') or (edit1.text = 'chaves do painel falhando') or (edit1.text = 'botões falhando') or (edit1.text = 'botoes falhando') or (edit1.text = 'botões do painel falhando') or (edit1.text = 'botoes do painel falhando') or (edit1.text = 'botão não funciona') or (edit1.text = 'botao nao funciona') or (edit1.text = 'botões não funcionam') or (edit1.text = 'botoes nao funcionam') or (edit1.text = 'chaves não funcionam') or (edit1.text = 'chaves nao funcionam') or (edit1.text = 'botão não liga') or (edit1.text = 'botao nao liga') or (edit1.text = 'chave não liga') or (edit1.text = 'chave nao liga') or (edit1.text = 'botões não ligam') or (edit1.text = 'botoes nao ligam') or (edit1.text = 'chaves não ligam') or (edit1.text = 'chaves nao ligam') then
                   Label3.Text := '1-Limpe-as com álcool isopropílico ou substitua-as';

                If (Edit1.Text = 'POTENCIÔMETRO DO VOLUME NÃO FUNCIONA') Or (Edit1.Text = 'POTENCIOMETRO DO VOLUME NAO FUNCIONA') Or (Edit1.Text = 'POTENCIÔMETRO DO VOLUME') Or (Edit1.Text = 'POTENCIOMETRO DO VOLUME') Or (Edit1.Text = 'BOTÃO DO VOLUME NÃO FUNCIONA') Or (Edit1.Text = 'BOTAO DO VOLUME NAO FUNCIONA') Or (Edit1.Text = 'BOTÃO DO VOLUME') Or (Edit1.Text = 'BOTAO DO VOLUME') Or (Edit1.Text = 'VOLUME') Or (Edit1.Text = 'VOLUME NÃO FUNCIONA') Or (Edit1.Text = 'VOLUME NAO FUNCIONA') Then

                    Label3.Text := '1-Solte as travas laterais da placa e puxe o eixo, limpe todos os contatos do eixo e a parte interna do potenciômetro com álcool isopropílico';

                if (edit1.text = 'potenciômetro do volume não funciona') or (edit1.text = 'potenciometro do volume nao funciona') or (edit1.text = 'potenciômetro do volume') or (edit1.text = 'potenciometro do volume') or (edit1.text = 'botão do volume não funciona') or (edit1.text = 'botao do volume nao funciona') or (edit1.text = 'botão do volume') or (edit1.text = 'botao do volume') or (edit1.text = 'volume') or (edit1.text = 'volume não funciona') or (edit1.text = 'volume nao funciona') then
                    Label3.Text := '1-Solte as travas laterais da placa e puxe o eixo, limpe todos os contatos do eixo e a parte interna do potenciômetro com álcool isopropílico';

                If (Edit1.Text = 'NÃO PARA NAS ESTAÇÕES') Or (Edit1.Text = 'NAO PARA NAS ESTAÇÕES') Or (Edit1.Text = 'NÃO PARA NAS RÁDIOS') Or (Edit1.Text = 'NAO PARA NAS RADIOS') Or (Edit1.Text = 'NÃO PARA') Or (Edit1.Text = 'NAO PARA') Or (Edit1.Text = 'ESTAÇÕES NÃO PARAM') Or (Edit1.Text = 'ESTAÇOES NAO PARAM') Or (Edit1.Text = 'ESTACOES NAO PARAM') Then

                    Label3.Text := '1-Ajuste a bobina que está ligada no AFC(Dentro do CI) ou troque-a';

                if (edit1.text = 'não para nas estações') or (edit1.text = 'nao para nas estações') or (edit1.text = 'não para nas rádios') or (edit1.text = 'nao para nas radios') or (edit1.text = 'não para') or (edit1.text = 'nao para') or (edit1.text = 'estações não param') or (edit1.text = 'estaçoes nao param') or (edit1.text = 'estacoes nao param') then
                   Label3.Text := '1-Ajuste a bobina que está ligada no AFC(Dentro do CI) ou troque-a';

                If (Edit1.Text = 'NO LOAD') Or (Edit1.Text = 'MENSAGEM NO LOAD') Or (Edit1.Text = 'NO DISC') Or (Edit1.Text = 'MENSAGEM NO DISC') Or (Edit1.Text = 'NÃO RECONHECE O CD') Or (Edit1.Text = 'NAO RECONHECE O CD') Or (Edit1.Text = 'NÃO RECONHECE O DVD') Or (Edit1.Text = 'NAO RECONHECE O DVD') Or (Edit1.Text = 'NÃO LÊ O CD') Or (Edit1.Text = 'NAO LE O CD') Or (Edit1.Text = 'NÃO LÊ O DVD') Or (Edit1.Text = 'NAO LE O DVD') Or (Edit1.Text = 'NÃO LÊ CD') Or (Edit1.Text = 'NAO LE CD') Or (Edit1.Text = 'NÃO LÊ DVD') Or (Edit1.Text = 'NAO LE DVD') Or (Edit1.Text = 'ERROR') Or (Edit1.Text = 'MENSAGEM ERROR') Then

                    Label3.Text := '1-Lave a unidade ótica om álcool 96 graus   2-Teste ou troque os cabos flats, se estiverem amassados  3-Regule a unidade ótica(No trimpot, regule em sentido horário até o meio, se não a amemória queimará)   4-Substitua a unidade de CD/DVD';

                if (edit1.text = 'no load') or (edit1.text = 'mensagem no load') or (edit1.text = 'no disc') or (edit1.text = 'mensagem no disc') or (edit1.text = 'não reconhece o cd') or (edit1.text = 'nao reconhece o cd') or (edit1.text = 'não reconhece o dvd') or (edit1.text = 'nao reconhece o dvd') or (edit1.text = 'não lê o cd') or (edit1.text = 'nao le o cd') or (edit1.text = 'não lê o dvd') or (edit1.text = 'nao le o dvd') or (edit1.text = 'não lê cd') or (edit1.text = 'nao le cd') or (edit1.text = 'não lê dvd') or (edit1.text = 'nao le dvd') or (edit1.text = 'error') or (edit1.text = 'mensagem error') then
                    Label3.Text := '1-Lave a unidade ótica om álcool 96 graus   2-Teste ou troque os cabos flats, se estiverem amassados  3-Regule a unidade ótica(No trimpot, regule em sentido horário até o meio, se não a amemória queimará)   4-Substitua a unidade de CD/DVD';

                If (Edit1.Text = 'GAVETA ABRE SOZINHA') Or (Edit1.Text = 'GAVETA ABRE') Or (Edit1.Text = 'GAVETA') Or (Edit1.Text = 'AS VEZES TOCA AS VEZES NÃO TOCA') Or (Edit1.Text = 'AS VEZES TOCA AS VEZES NAO TOCA') Or (Edit1.Text = 'AS VEZES TOCA') Or (Edit1.Text = 'AS VEZES TOCA AS VEZES NÃO') Or (Edit1.Text = 'AS VEZES TOCA AS VEZES NAO') Or (Edit1.Text = 'AS VEZES TOCA CD') Or (Edit1.Text = 'PULA A MÚSICA') Or (Edit1.Text = 'PULA A MUSICA') Or (Edit1.Text = 'PULA') Or (Edit1.Text = 'REPETE A MÚSICA') Or (Edit1.Text = 'REPETE A MUSICA') Or (Edit1.Text = 'REPETE') Or (Edit1.Text = 'REPETINDO') Or (Edit1.Text = 'REPETINDO A MÚSICA') Or (Edit1.Text = 'REPETINDO A MUSICA') Or (Edit1.Text = 'REPETE A FAIXA') Or (Edit1.Text = 'PULA A FAIXA') Or (Edit1.Text = 'PULA') Or (Edit1.Text = 'PULA MÚSICA')Or (Edit1.Text = 'PULA MUSICA')Or (Edit1.Text = 'PULA FAIXA')Or (Edit1.Text = 'REPETE MÚSICA')Or (Edit1.Text = 'REPETE MUSICA')Or (Edit1.Text = 'REPETE FAIXA')Then

                    Label3.Text := '1-Troque as correias   2-Teste os motores(Use uma bateria de 9V nos dois sentidos de polaridade)   3-Lubrifique as engrenagens com graxa especial de engrenagem   4-Centralize a gaveta(Colocar o bloco da gaveta no lugar)';

                if (edit1.text = 'gaveta abre sozinha') or (edit1.text = 'gaveta abre') or (edit1.text = 'gaveta') or (edit1.text = 'as vezes toca as vezes não toca') or (edit1.text = 'as vezes toca as vezes nao toca') or (edit1.text = 'as vezes toca') or (edit1.text = 'as vezes toca as vezes não') or (edit1.text = 'as vezes toca as vezes nao') or (edit1.text = 'as vezes toca cd') or (edit1.text = 'pula a música') or (edit1.text = 'pula a musica') or (edit1.text = 'pula') or (edit1.text = 'repete a música') or (edit1.text = 'repete a musica') or (edit1.text = 'repete') or (edit1.text = 'repetindo') or (edit1.text = 'repetindo a música') or (edit1.text = 'repetindo a musica') or (edit1.text = 'repete a faixa') or (edit1.text = 'pula a faixa') or (edit1.text = 'pula') or (edit1.text = 'pula música')or (edit1.text = 'pula musica')or (edit1.text = 'pula faixa')or (edit1.text = 'repete música')or (edit1.text = 'repete musica')or (edit1.text = 'repete faixa')then
                    Label3.Text := '1-Troque as correias   2-Teste os motores(Use uma bateria de 9V nos dois sentidos de polaridade)   3-Lubrifique as engrenagens com graxa especial de engrenagem   4-Centralize a gaveta(Colocar o bloco da gaveta no lugar)';

                If (Edit1.Text = 'SÓ LÊ CD-R') Or (Edit1.Text = 'SO LE CD-R') Or (Edit1.Text = 'LÊ CD-R APENAS') Or (Edit1.Text = 'LE CD-R APENAS') Or (Edit1.Text = 'LE CD-R SOMENTE') Or (Edit1.Text = 'LÊ CD-R') Or (Edit1.Text = 'LE CD-R') Or (Edit1.Text = 'NÃO LÊ MP3') Or (Edit1.Text = 'NAO LE MP3') Or (Edit1.Text = 'NÃO EXECUTA MP3') Or (Edit1.Text = 'NAO EXECUTA MP3') Or (Edit1.Text = 'NÃO TOCA MP3') Or (Edit1.Text = 'NAO TOCA MP3') Or (Edit1.Text = 'NÃO RECONHECE MP3') Or (Edit1.Text = 'NAO RECONHECE MP3') Or (Edit1.Text = 'MP3') Then

                    Label3.Text := '1-Limpe os motores da bandeja só com graxa   2-Limpe a unidade ótica com cotonete limpo ou passe bastante álcool isopropílico no motor, espre secar e alimente o motor com uma fonte externa e veja se gira';

                if (edit1.text = 'só lê cd-r') or (edit1.text = 'so le cd-r') or (edit1.text = 'lê cd-r apenas') or (edit1.text = 'le cd-r apenas') or (edit1.text = 'le cd-r somente') or (edit1.text = 'lê cd-r') or (edit1.text = 'le cd-r') or (edit1.text = 'não lê mp3') or (edit1.text = 'nao le mp3') or (edit1.text = 'não executa mp3') or (edit1.text = 'nao executa mp3') or (edit1.text = 'não toca mp3') or (edit1.text = 'nao toca mp3') or (edit1.text = 'não reconhece mp3') or (edit1.text = 'nao reconhece mp3') or (edit1.text = 'mp3') then
                    Label3.Text := '1-Limpe os motores da bandeja só com graxa   2-Limpe a unidade ótica com cotonete limpo ou passe bastante álcool isopropílico no motor, espre secar e alimente o motor com uma fonte externa e veja se gira';

                if (edit1.text = 'não fica estéreo') or (edit1.text = 'nao fica estereo') or (edit1.text = 'estéreo') or (edit1.text = 'estereo') or (edit1.text = 'sem estéreo') or (edit1.text = 'sem estereo') or (edit1.text = 'não está estéreo') or (edit1.text = 'nao esta estereo') or (edit1.text = 'está sem estéreo') or (edit1.text = 'esta sem estereo') or (edit1.text = 'problema com estéreo') or (edit1.text = 'problema com estereo') or (edit1.text = 'rádio não fica estéreo') or (edit1.text = 'radio nao fica estereo') or (edit1.text = 'som não fica estéreo') or (edit1.text = 'som nao fica estereo') or (edit1.text = 'áudio não fica estéreo') or (edit1.text = 'audio nao fica estereo') then

                    Label3.Text := '1-Veja se há um trimpot para ajuste do estéreo, troque-o e o ajuste até que o LED de estéreo acenda';

                If Label3.Text = '' Then
                  begin
                    Label4.Visible := True;
                    Label4.Text := procura + 'Não está relacionado, defina a pesquisa com outro nome.';
                  End;

            {Except

                Label3.Visible := False;
                Label4.Visible := true;
                //Label4.Text := 'Informe o nome corretamente e com portugues correto(Verifique ' + #13 + 'os espaços).';
                Label4.Text := procura + ', Não está relacionado, defina a pesquisa com outro nome.';

            End;}
            end;

procedure TForm4.Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
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

procedure TForm4.Edit1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
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

procedure TForm4.ToolBar1Click(Sender: TObject);
begin
  //Halt(0);
      //Form1.Show;
      //Application.MainForm.DisposeOf;
      Form4:=nil;
      hide;
      Edit1.Text:='';
      Label3.Text:='';
      Label4.Text:='';
end;

end.
