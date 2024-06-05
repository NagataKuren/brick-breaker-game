float bw, bh = 30.0;
int column_bk = 100;
int row_bk = 100;

void initBlock() {
  block = new int[row_bk][column_bk]; //適切なサイズのブロック配列を初期化
  for(int row = 0;
  row < 26;
  row = row + 1) {
    for(int column = 0;
    column < 24;
    column = column + 1) {
      block[row][column] = 30;//ブロックの耐久
    }
  }
  bw = width / 25; // ブロックの幅を決める
  Ball ball = new Ball(width / 2, height / 2, 5,5, 10, 10);
}
/* ボールが60個のブロックのいずれかにぶつかったら跳ね返る */

void checkBlocks() {
  for(int row = 0;
  row < block.length;
  row++) {
    for (int column=0; column<column_bk; column++) {
      if (block[row][column] > 0) {
        for(Ball ball : balls) {
          int ret = blockHitCheck(row * bw, column * bh, bw, bh, ball.x, ball.y, ball.b_w, ball.b_h, ball.dx, ball.dy);
          if (ret > 0) {
            if (ret > 0) {
              if (ret == 1) {
                ball.dx = -ball.dx; // ボールのx速度を反転
              }
              else if (ret == 2) {
                ball.dy = -ball.dy; // ボールのy速度を反転
              }
              else if (ret == 3) {
                ball.dx = -ball.dx; // ボールのx速度を反転
                ball.dy = -ball.dy; // ボールのy速度を反転
              }
              block[row][column]--;
              if (block[row][column] <= 0) {
                addNewBalls(ball);
              }
              return;
            }
          }
        }
      }
    }
  }
}
/* 10個のブロックを表示する */

void showBlocks() {
  for(int row = 0;
  row < block.length;
  row = row + 1) {
    for(int column = 0;
    column < column_bk;
    column = column + 1) {
      if (block[row][column] > 0) {
        rect(row * bw, column * bh, bw, bh); // ブロックの描画
        fill(0,0,255);
        text(block[row][column], row * bw + 10, column * bh + 20);  // ブロックごとの余命を表示
        fill(255);
      }
    }
  }
}
