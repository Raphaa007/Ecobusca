<?php
require "bancodedados.php";

// Verificando se a conexão foi bem-sucedida
if (!$conexao) {
    die("Conexão falhou: " . mysqli_connect_error());
}

// Obtendo os valores enviados pelo formulário e tratando para evitar SQL Injection
$cidade = isset($_POST['cidade']) ? mysqli_real_escape_string($conexao, $_POST['cidade']) : '';

// Construindo a consulta de acordo com os parâmetros fornecidos
$query = "SELECT * FROM coleta WHERE 1=1"; // Inicia com uma condição verdadeira

if (!empty($cidade)) {
    $query .= " AND cidade = '$cidade'"; // Adiciona a condição da cidade se estiver preenchida
}

// Executando a consulta
$selecionar = mysqli_query($conexao, $query);

if (!$selecionar) {
    die("Erro na consulta: " . mysqli_error($conexao));
}

?>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="pt">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Cadastre-se">
    <meta name="description" content="">
    <title>Resultado Buscar</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="Resultado-Buscar.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 6.17.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Resultado Buscar">
    <meta property="og:type" content="website">
    <!-- Feito por Raphael -->
    
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="pt">
    <header class="u-clearfix u-header u-header" id="sec-d2e6">
      <div class="u-clearfix u-sheet u-sheet-1">
        <a href="./" class="u-image u-logo u-image-1" data-image-width="511" data-image-height="144" title="Inicial">
          <img src="images/imagem_2024-09-13_202956920-removebg-preview.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-border-radius u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect></g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-custom-color-1" href="./" style="padding: 10px 20px;">Inicial</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-custom-color-1" href="Sobre.html" style="padding: 10px 20px;">Sobre</a>
<!-- </li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-custom-color-1" href="Buscar.html" style="padding: 10px 20px;">Buscar Ecoponto</a> -->
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-custom-color-1" href="Buscar-coleta.html" style="padding: 10px 20px;">Buscar Coleta Seletiva</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
               <strong> <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="./">Inicial</a>
</li><li  class="u-nav-item"><a class="u-button-style u-nav-link" href="Sobre.html">Sobre</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Buscar.html">Buscar Ecoponto</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Buscar-coleta.html">Buscar Coleta Seletiva</a></strong>
</li></ul>
                <!-- <a href="Buscar.html" class="u-btn u-btn-round u-button-style u-custom-color-1 u-radius u-btn-1">BUSCAR </a> -->
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="Buscar.html" class="u-btn u-btn-round u-button-style u-custom-color-1 u-hidden-md u-hidden-sm u-hidden-xs u-radius u-btn-2">ECOBUSCA</a>
      </div>
    </header>

    <section class="u-align-center u-clearfix u-container-align-center u-section-1" id="sec-988e">
      <div class="u-clearfix u-sheet u-sheet-1">
        <img class="custom-expanded u-image u-image-contain u-image-1" src="images/imagem_2024-09-13_202956920-removebg-preview.png" data-image-width="511" data-image-height="144">
        <!-- <span class="u-file-icon u-icon u-icon-1"><img src="images/71403.png" alt=""></span> -->
        <!-- <h2 class="u-text u-text-default u-text-1">RESULTADOS</h2> -->
        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">
          <?php
          if (mysqli_num_rows($selecionar) > 0) {
    echo "<h2>Coletas encontrados:</h2>";
    echo "<table border='1' cellpadding='10' cellspacing='0'>
            <thead>
                <tr>
                    <th>Bairro</th>
                    <th>Horário</th>
                </tr>
            </thead>
            <tbody>";
    
    // Exibindo os resultados em uma tabela
    while ($dados = mysqli_fetch_array($selecionar)) {
        echo "<tr>
                <td>" . $dados['bairro'] . "</td>
                <td>" . $dados['horario'] . "</td>
              </tr>";
    }
    
    echo "</tbody></table>";
} else {
    echo "<p>Nenhum resultado encontrado para os critérios fornecidos.</p>";
}

// Fechando a conexão
mysqli_close($conexao);
?>
<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-custom-color-1" href="Buscar-coleta.html" style="padding: 10px 20px;">Voltar</a>
          </div>
        </div>
      </div>
    </section>
    <footer class="u-align-center u-clearfix u-container-align-center u-footer u-grey-80 u-footer" id="sec-3d86"><div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1"> 2024 © Todos os Direitos Reservados. ECOBUSCA</p>
      </div></footer>
    
  
</body></html>