/*
  checkAndShowRacket()
  float r_y;  // r_hはラケットのy座標
*/
void checkAndShowRacket(float r_y) {
  float r_x = mouseX; // r_x はラケットの左側のx座標
  
  if (r_x + r_w > width) { // 右に寄りすぎていたら補正する
    r_x = width - r_w;
  } 
  
  /* ラケットにボールが当たったらボールを上方へ跳ね返す */
for (Ball ball : balls) {
    if (blockHitCheck(r_x, r_y, r_w, r_h, ball.x, ball.y, ball.b_w, ball.b_h, ball.dx, ball.dy) > 0) {
      ball.dy = -ball.dy; // ボールのy速度を反転
    }
  }
  fill(255);
  rect(r_x, r_y, r_w, r_h); // ラケットを表示する
}