PK     ���Z3}0M�  �  
   index.html<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Portfólio | Engenheiro de Software</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', sans-serif;
    }
    body {
      color: #fff;
      background: #111;
    }
    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 50px;
      background-color: rgba(0, 0, 0, 0.7);
      flex-wrap: wrap;
    }
    header h1 {
      font-size: 1.8rem;
    }
    nav {
      margin-top: 10px;
    }
    nav a {
      margin: 0 10px;
      color: #00fff0;
      text-decoration: none;
      font-weight: bold;
      transition: transform 0.3s ease, color 0.3s;
    }
    nav a:hover {
      color: #fff;
      transform: scale(1.1);
    }
    .hero {
      padding: 100px 20px;
      text-align: center;
      background: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=1950&q=80') no-repeat center center/cover;
      position: relative;
    }
    .hero::before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.6);
      z-index: 0;
    }
    .hero h2, .hero p {
      position: relative;
      z-index: 1;
    }
    .hero h2 {
      font-size: 2.8rem;
      margin-bottom: 20px;
    }
    .hero p {
      font-size: 1.2rem;
      max-width: 700px;
      margin: 0 auto;
      line-height: 1.6;
    }
    .services {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 30px;
      padding: 50px 20px;
      background-color: #1a1a1a;
    }
    .service-card {
      background: rgba(255, 255, 255, 0.05);
      padding: 30px;
      border-radius: 15px;
      text-align: center;
      transition: transform 0.4s ease, background 0.3s ease;
      cursor: pointer;
      box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
    }
    .service-card:hover {
      transform: scale(1.06);
      background: rgba(255, 255, 255, 0.15);
    }
    .service-card h3 {
      margin-bottom: 10px;
      color: #00fff0;
    }
    section#contato {
      padding: 50px 20px;
      background-color: #111;
      text-align: center;
    }
    #contato h2 {
      margin-bottom: 20px;
      font-size: 2rem;
    }
    form {
      max-width: 500px;
      margin: 0 auto;
    }
    input, textarea {
      width: 100%;
      padding: 15px;
      margin: 10px 0;
      border: none;
      border-radius: 8px;
      font-size: 1rem;
      background-color: #222;
      color: #fff;
    }
    button {
      padding: 15px 30px;
      background-color: #00fff0;
      border: none;
      border-radius: 10px;
      font-size: 1rem;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s;
    }
    button:hover {
      background-color: #00c7b7;
    }
    .whatsapp-float {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: #25d366;
      color: white;
      border-radius: 50%;
      width: 60px;
      height: 60px;
      text-align: center;
      font-size: 30px;
      z-index: 1000;
      box-shadow: 0 8px 12px rgba(0, 0, 0, 0.3);
      animation: bounce 2s infinite;
    }
    .whatsapp-float i {
      margin-top: 15px;
    }
    footer {
      text-align: center;
      padding: 20px;
      background-color: #111;
      color: #aaa;
      font-size: 0.9rem;
    }
    @keyframes bounce {
      0%, 100% { transform: translateY(0); }
      50% { transform: translateY(-5px); }
    }
    @media (max-width: 600px) {
      header {
        flex-direction: column;
        padding: 20px;
      }
      .hero h2 {
        font-size: 2rem;
      }
      nav a {
        display: inline-block;
        margin: 10px 8px;
      }
    }
  </style>
</head>
<body>
  <header>
    <h1>Marcelo Junior</h1>
    <nav>
      <a href="#sobre">Sobre</a>
      <a href="#servicos">Serviços</a>
      <a href="#contato">Contato</a>
    </nav>
  </header>
  <section class="hero" id="sobre">
    <h2>Engenheiro de Software</h2>
    <p>Desenvolvo sistemas de alto padrão para empresas de todos os portes com foco em qualidade, inovação e resultados reais.</p>
  </section>
  <section class="services" id="servicos">
    <div class="service-card">
      <h3>Desenvolvimento Web</h3>
      <p>Sites modernos, responsivos e otimizados para gerar resultados e presença digital.</p>
    </div>
    <div class="service-card">
      <h3>APIs e Back-end</h3>
      <p>Soluções escaláveis, seguras e integradas com bancos de dados e serviços externos.</p>
    </div>
    <div class="service-card">
      <h3>UX/UI Design</h3>
      <p>Interfaces pensadas para o usuário com foco em fluidez e acessibilidade.</p>
    </div>
    <div class="service-card">
      <h3>Consultoria Técnica</h3>
      <p>Mentoria, code review, arquitetura de sistemas e estratégia digital para empresas.</p>
    </div>
  </section>
  <section id="contato">
    <h2>Fale Comigo</h2>
    <form>
      <input type="text" placeholder="Seu nome" required>
      <input type="email" placeholder="Seu e-mail" required>
      <textarea placeholder="Sua mensagem..." rows="5" required></textarea>
      <button type="submit">Enviar</button>
    </form>
  </section>
  <a href="https://wa.me/5524993153141?text=Olá%2C%20gostaria%20de%20falar%20sobre%20seus%20serviços!" class="whatsapp-float" target="_blank">
    <i class="fab fa-whatsapp"></i>
  </a>
  <footer>
    &copy; 2025 Marcelo Junior. Todos os direitos reservados.
  </footer>
</body>
</html>PK     ���Z3}0M�  �  
           ��    index.htmlPK      8   �    