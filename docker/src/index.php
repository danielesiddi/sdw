<html>
  <body>
    <table>
      <?php
      $users = ['joe','john','jack']; // replace it with your data
      foreach($users as $user) {
          echo sprintf("<tr><td>%s</td></tr>\n",$user);
      }
      ?>
    </table>
  </body>
</html>

