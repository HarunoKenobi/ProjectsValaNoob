using Gtk;
public class Program : Window
{
  public Program()
  {
    this.title = "Pessoa";
    this.set_border_width(12);
    this.set_position(WindowPosition.CENTER);
    this.set_default_size(350, 150);
    this.destroy.connect(Gtk.main_quit);

    var box = new Box(Gtk.Orientation.VERTICAL, 5);


    Pessoa pessoa = new Pessoa();
    string str = "Meu nome é %s e minha idade eu não falo, brincadeira, tenho %d anos!".printf(pessoa.Nome, pessoa.idade);
    var label = new Label(str);


    var botao = new Button.with_label("OK");
    botao.clicked.connect(() => {
        botao.set_sensitive(true);
        Gtk.main_quit();
      });

      //Adicionando controles
      //this.add(label);
      //this.add(botao);
      box.pack_start(label, false, false, 0);
      box.pack_end(botao, true, false, 0);
      this.add(box);
  }

 public static int main(string [] args)
  {
    Gtk.init(ref args);

    Program program = new Program();
    program.show_all();

    Gtk.main();
    return 0;
  }
}
