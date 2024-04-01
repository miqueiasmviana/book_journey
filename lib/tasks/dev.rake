namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop) }
      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }
      %x(rails dev:add_reads)
      %x(rails dev:add_books)
 
 
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end
 
 
  desc "Cadastra as moedas"
   task add_books: :environment do
    show_spinner("cadastrando livros") do
      books = [
        {
          cover: "https://m.media-amazon.com/images/I/91ChBc9IxGL._AC_UF1000,1000_QL80_.jpg",
          title: "Redescobrindo os pais da igreja",
          author: "Michael A. G. Haykin",
          description:"No livro Redescobrindo os Pais da Igreja, Michael Haykin oferece ao leitor uma introdução agradável do cristianismo nos seus primeiros séculos, através das histórias de vida dos pais da Igreja e de seus ensinos, como Inácio, Cipriano, Basílio de Cesaréia e Ambrósio, cujos legados representam um imenso valor para os cristãos hoje. Nesta obra, Haykin revela o posicionamento desses homens piedosos diante de questões importantes da teologia como o batismo, o martírio, a ceia do Senhor, a Trindade, a relação da igreja com o estado, entre outras.",
          genre: "Teologia",
          publish_company: "Editora Fiel",
          page: "196",
          year_publish: "2011"
          },
 
 
          {
          cover: "https://m.media-amazon.com/images/I/51lRMYwP-4L.jpg",
          title: "Harry Potter e a Pedra Filosova",
          author: "J. K. Rowling",
          description:"Harry Potter é um garoto cujos pais, feiticeiros, foram assassinados por um poderosíssimo bruxo quando ele ainda era um bebê. Ele foi levado, então, para a casa dos tios que nada tinham a ver com o sobrenatural. Pelo contrário. Até os 10 anos, Harry foi uma espécie de gata borralheira: maltratado pelos tios, herdava roupas velhas do primo gorducho, tinha óculos remendados e era tratado como um estorvo. No dia de seu aniversário de 11 anos, entretanto, ele parece deslizar por um buraco sem fundo, como o de Alice no país das maravilhas, que o conduz a um mundo mágico. Descobre sua verdadeira história e seu destino: ser um aprendiz de feiticeiro até o dia em que terá que enfrentar a pior força do mal, o homem que assassinou seus pais. O menino de olhos verde, magricela e desengonçado, tão habituado à rejeição, descobre, também, que é um herói no universo dos magos. Potter fica sabendo que é a única pessoa a ter sobrevivido a um ataque do tal bruxo do mal e essa é a causa da marca em forma de raio que ele carrega na testa. Ele não é um garoto qualquer, ele sequer é um feiticeiro qualquer ele é Harry Potter, símbolo de poder, resistência e um líder natural entre os sobrenaturais. A fábula, recheada de fantasmas, paredes que falam, caldeirões, sapos, unicórnios, dragões e gigantes, não é, entretanto, apenas um passatempo.",
          genre: "Fantasia",
          publish_company: "Rocco",
          page: "208",
          year_publish: "2011"
          },
 
 
          {
          cover: "https://www.lojadobolseiro.com.br/uploads/images/2020/02/76-livro-o-hobbit-capa-smaug-j-r-r-tolkien-1582738560.jpg",
          title: "O Hobbit",
          author: "J. R. R. Tolkien",
          description:"Bilbo Bolseiro era um dos mais respeitáveis hobbits de todo o Condado até que, um dia, o mago Gandalf bate à sua porta. A partir de então, toda sua vida pacata e campestre soprando anéis de fumaça com seu belo cachimbo começa a mudar. Ele é convocado a participar de uma aventura por ninguém menos do que Thorin Escudo-de-Carvalho, um príncipe do poderoso povo dos Anãos.
 
 
          Esta jornada fará Bilbo, Gandalf e 13 anãos atravessarem a Terra-média, passando por inúmeros perigos, como os imensos trols, as Montanhas Nevoentas infestadas de gobelins ou a muito antiga e misteriosa Trevamata, até chegarem (se conseguirem) na Montanha Solitária. Lá está um incalculável tesouro, mas há um porém. Deitado em cima dele está Smaug, o Dourado, um dragão malicioso que... bem, você terá que ler para descobrir.
         
          Lançado em 1937, O Hobbit é um divisor de águas na literatura de fantasia mundial. Mais de 80 anos após a sua publicação, o livro que antecede os ocorridos em O Senhor dos Anéis continua arrebatando fãs de todas as idades, talvez pelo seu tom brincalhão com uma pitada de magia élfica, ou talvez porque J.R.R. Tolkien tenha escrito o melhor livro infantojuvenil de todos os tempo",
          genre: "Fantasia",
          publish_company: "WMF Martins Fontes",
          page: "328",
          year_publish: "2013"
          },
 
 
          {
          cover: "https://m.media-amazon.com/images/I/81CGmkRG9GL._AC_UF1000,1000_QL80_.jpg",
          title: "O Nome do Vento - A Crônica do Matador do Rei: Primeiro Dia",
          author: "Patrick Rothfulls",
          description:"Ninguém sabe ao certo quem é o herói ou o vilão desse fascinante universo criado por Patrick Rothfuss. Na realidade, essas duas figuras se concentram em Kote, um homem enigmático que se esconde sob a identidade de proprietário da hospedaria Marco do Percurso.
 
 
          Da infância numa trupe de artistas itinerantes, passando pelos anos vividos numa cidade hostil e pelo esforço para ingressar na escola de magia, O nome do vento acompanha a trajetória de Kote e as duas forças que movem sua vida: o desejo de aprender o mistério por trás da arte de nomear as coisas e a necessidade de reunir informações sobre o Chandriano – os lendários demônios que assassinaram sua família no passado.
         
          Quando esses seres do mal reaparecem na cidade, um cronista suspeita de que o misterioso Kote seja o personagem principal de diversas histórias que rondam a região e decide aproximar-se dele para descobrir a verdade.
         
          Pouco a pouco, a história de Kote vai sendo revelada, assim como sua multifacetada personalidade – notório mago, esmerado ladrão, amante viril, herói salvador, músico magistral, assassino infame.
         
          Nessa provocante narrativa, o leitor é transportado para um mundo fantástico, repleto de mitos e seres fabulosos, heróis e vilões, ladrões e trovadores, amor e ódio, paixão e vingança.
         
          Mais do que a trama bem construída e os personagens cativantes, o que torna O nome do vento uma obra tão especial – que levou Patrick Rothfuss ao topo da lista de mais vendidos do The New York Times – é sua capacidade de encantar leitores de todas as idades.
         
          Devorei em um dia e já estou louco pelo próximo. Ele é muito bom, esse tal de Rothfuss. – George R. R. Martin, autor de A guerra dos tronos",
          genre: "Fantasia",
          publish_company: "Arqueiro",
          page: "656",
          year_publish: "2007"
          },
 
 
          {
          cover: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1311904217i/12190559.jpg",
          title: "Para compreender as músicas de hoje",
          author: "",
          description:"Na luta das idéias novas, pouco importa saber quem tem razão e quem não tem. Saber-se-á mais tarde... se se souber... e tanto pior! A posteridade não é mais clarividente que os contemporâneos...” pensa Henry Barraud, um dos mais eminentes músicos de sua geração, cujos programas na Rádio Televisão Francesa conquistou em toda Europa audiências de massa. Neste livro que a Editora Perspectiva reedita por insistentes solicitações de professores, musicólogos, alunos e interessados na iniciação e pedagogia da música moderna, Barraud introduz o leitor nos diversos registros da criação de nosso tempo, detendo-se particularmente naqueles que parecem, à primeira vista, inacessíveis à compreensão do receptor tradicional, por causa de suas inovações estéticas e técnicas. Acompanha esta nova edição um CD",
          genre: "Arte",
          publish_company: "Perspectiva",
          page: "162",
          year_publish: "1997"
          }
          ]
     
      books.each do |book|
        Book.find_or_create_by!(book)
      end
    end
  end

  desc "Cadastra os status disponíveis"
   task add_reads: :environment do
    show_spinner("cadastrando status") do
      books = [
        { stating_type: "Want to Read" },
        { stating_type: "Current Reading"},
        { stating_type: "Finished"}
        ]
      
        reads.each do |read|
          Book.find_or_create_by!(read)
        end
      end
    end
 
    private
 
 
  def show_spinner(msg_start, msg_end = "Concluído!", &block)
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
 end
 
 
 
 