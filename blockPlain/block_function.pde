float bw, bh = 30.0;
int column_bk = 23;
/* 60個のブロックを初期化する */

void initBlock() {
  for(int row = 0;
  row < block.length;
  row = row + 1) {
    for(int column = 0;
    column < block.length;
    column = column + 1) {
      block[row][column] = 30;//ブロックの耐久
    }
    bw = width / 25; // ブロックの幅を決める
  }
}
/* ボールが60個のブロックのいずれかにぶつかったら跳ね返る */

void checkBlocks() {
  for(int row = 0;
  row < block.length;
  row++) {
    for (int column=0; column<column_bk; column++) {
      if (block[row][column] > 0) {
        int ret = blockHitCheck(row * bw, column * bh, bw, bh, x, y, b_w, b_h, dx, dy);
        if (ret > 0) {
          if (ret == 1) {
            dx = -dx;
            block[row][column]--;
          }
          else if (ret == 2) {
            dy = -dy;
            block[row][column]--;
          }
          else if (ret == 3) {
            dx = -dx;
            dy = -dy;
            block[row][column]--;
          }
          return;
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
