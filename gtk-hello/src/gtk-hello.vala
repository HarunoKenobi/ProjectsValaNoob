int main(string[] args)
{
    Gtk.init(ref args);

    var janela = new Gtk.Window();
    janela.title = "Hello Word!";
    janela.set_border_width(12);
    janela.set_position(Gtk.WindowPosition.CENTER);
    janela.set_default_size(350, 70);
    janela.destroy.connect(Gtk.main_quit);

    var botao_hello = new Gtk.Button.with_label("Clique-me!");
    botao_hello.clicked.connect(() => {
        botao_hello.label = "Hello Word!";
        botao_hello.set_sensitive(false);
    });

    janela.add(botao_hello);
    janela.show_all();

    Gtk.main();
    return 0;
}
