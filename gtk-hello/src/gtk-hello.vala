public class Aplicacao : Gtk.Window{
    public Aplicacao()
    {
        this.title = "Hello Word!";
        this.set_border_width(12);
        this.set_position(Gtk.WindowPosition.CENTER);
        this.set_default_size(350, 70);
        this.destroy.connect(Gtk.main_quit);

    
        var botao_hello = new Gtk.Button.with_label("Clique-me!");
        this.add(botao_hello);

        botao_hello.clicked.connect(() => {
            botao_hello.label = "Hello Word!";
            botao_hello.set_sensitive(false);
        });
    }

    public static int main(string[] args)
    {
        Gtk.init(ref args);

        Aplicacao app = new Aplicacao();
        app.show_all();

        Gtk.main();
        return 0;
    }
}
