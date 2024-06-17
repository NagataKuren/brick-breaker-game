float bw, bh = 30.0;//ブロックの縦,横幅
int column_bk = 100;//行の数
int row_bk = 100;//列の数

void initBlock() {
  block = new int[row_bk][column_bk]; //適切なサイズのブロック配列を初期化
  int B_r = 30; //ブロックの耐久
  /*一行づつコースを書いていく*/
  // 1,2
  for(int row = 0;
  row < 2;
  row = row + 1) {
    for(int column = 0;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 3
  for(int row = 2;
  row < 3;
  row = row + 1) {
    for(int column = 0;
    column < 12;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 2;
  row < 3;
  row = row + 1) {
    for(int column = 14;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 4
  for(int row = 3;
  row < 4;
  row = row + 4) {
    for(int column = 0;
    column < 5;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 3;
  row < 4;
  row = row + 1) {
    for(int column = 10;
    column < 12;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 3;
  row < 4;
  row = row + 1) {
    for(int column = 14;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 5
  for(int row = 4;
  row < 5;
  row = row + 1) {
    for(int column = 0;
    column < 5;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 4;
  row < 5;
  row = row + 1) {
    for(int column = 6;
    column < 9;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 4;
  row < 5;
  row = row + 1) {
    for(int column = 10;
    column < 12;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 4;
  row < 5;
  row = row + 1) {
    for(int column = 13;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 6
  for(int row = 5;
  row < 6;
  row = row + 1) {
    for(int column = 0;
    column < 5;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 5;
  row < 6;
  row = row + 1) {
    for(int column = 6;
    column < 9;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 5;
  row < 6;
  row = row + 1) {
    for(int column = 10;
    column < 12;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 5;
  row < 6;
  row = row + 1) {
    for(int column = 17;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 7
  for(int row = 6;
  row < 7;
  row = row + 1) {
    for(int column = 0;
    column < 5;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 6;
  row < 7;
  row = row + 1) {
    for(int column = 6;
    column < 9;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 6;
  row < 7;
  row = row + 1) {
    for(int column = 10;
    column < 12;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 6;
  row < 7;
  row = row + 1) {
    for(int column = 13;
    column < 16;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 6;
  row < 7;
  row = row + 1) {
    for(int column = 17;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 8
  for(int row = 7;
  row < 8;
  row = row + 1) {
    for(int column = 0;
    column < 5;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 7;
  row < 8;
  row = row + 1) {
    for(int column = 6;
    column < 9;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 7;
  row < 8;
  row = row + 1) {
    for(int column = 10;
    column < 12;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 7;
  row < 8;
  row = row + 1) {
    for(int column = 13;
    column < 16;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 7;
  row < 8;
  row = row + 1) {
    for(int column = 17;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 9
  for(int row = 8;
  row < 9;
  row = row + 1) {
    for(int column = 0;
    column < 1;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 8;
  row < 9;
  row = row + 1) {
    for(int column = 7;
    column < 9;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 8;
  row < 9;
  row = row + 1) {
    for(int column = 13;
    column <16;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 8;
  row < 9;
  row = row + 1) {
    for(int column = 17;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 10,11,12,13,14,15
  for(int row = 9;
  row < 15;
  row = row + 1) {
    for(int column = 0;
    column < 1;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 9;
  row < 15;
  row = row + 1) {
    for(int column = 7;
    column < 12;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 9;
  row < 15;
  row = row + 1) {
    for(int column = 13;
    column < 16;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 9;
  row < 15;
  row = row + 1) {
    for(int column = 17;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 16
  for(int row = 15;
  row < 16;
  row = row + 1) {
    for(int column = 0;
    column < 1;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 15;
  row < 16;
  row = row + 1) {
    for(int column = 7;
    column < 10;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 15;
  row < 16;
  row = row + 1) {
    for(int column = 13;
    column < 16;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 15;
  row < 16;
  row = row + 1) {
    for(int column = 17;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 17
  for(int row = 16;
  row < 17;
  row = row + 1) {
    for(int column = 0;
    column < 1;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 16;
  row < 17;
  row = row + 1) {
    for(int column = 7;
    column < 10;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 16;
  row < 17;
  row = row + 1) {
    for(int column = 7;
    column < 10;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 16;
  row < 17;
  row = row + 1) {
    for(int column = 11;
    column < 15;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 18
  for(int row = 17;
  row < 18;
  row = row + 1) {
    for(int column = 0;
    column < 1;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 17;
  row < 18;
  row = row + 1) {
    for(int column = 7;
    column < 10;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 17;
  row < 18;
  row = row + 1) {
    for(int column = 7;
    column < 10;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 17;
  row < 18;
  row = row + 1) {
    for(int column = 11;
    column < 15;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 19
  for(int row = 18;
  row < 19;
  row = row + 1) {
    for(int column = 0;
    column < 5;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 18;
  row < 19;
  row = row + 1) {
    for(int column = 6;
    column < 10;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 18;
  row < 19;
  row = row + 1) {
    for(int column = 11;
    column < 15;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 18;
  row < 19;
  row = row + 1) {
    for(int column = 17;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 20
  for(int row = 19;
  row < 20;
  row = row + 1) {
    for(int column = 0;
    column < 5;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 19;
  row < 20;
  row = row + 1) {
    for(int column = 6;
    column < 10;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 19;
  row < 20;
  row = row + 1) {
    for(int column = 11;
    column < 15;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 19;
  row < 20;
  row = row + 1) {
    for(int column = 17;
    column < 18;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 19;
  row < 20;
  row = row + 1) {
    for(int column = 22;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 21
  for(int row = 20;
  row < 21;
  row = row + 1) {
    for(int column = 0;
    column < 5;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 20;
  row < 21;
  row = row + 1) {
    for(int column = 6;
    column < 10;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 20;
  row < 21;
  row = row + 1) {
    for(int column = 11;
    column < 15;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 20;
  row < 21;
  row = row + 1) {
    for(int column = 19;
    column < 21;
    column = column + 1) {
      block[row][column] = 1;//ブロックの耐久
    }
  }
  for(int row = 20;
  row < 21;
  row = row + 1) {
    for(int column = 22;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 22
  for(int row = 21;
  row < 22;
  row = row + 1) {
    for(int column = 0;
    column < 5;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 21;
  row < 22;
  row = row + 1) {
    for(int column = 11;
    column < 15;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 21;
  row < 22;
  row = row + 1) {
    for(int column = 19;
    column < 21;
    column = column + 1) {
      block[row][column] = 1;//ブロックの耐久
    }
  }
  for(int row = 21;
  row < 22;
  row = row + 1) {
    for(int column = 22;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 23
  for(int row = 22;
  row < 23;
  row = row + 1) {
    for(int column = 0;
    column < 18;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  for(int row = 22;
  row < 23;
  row = row + 1) {
    for(int column = 22;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  // 24,25
  for(int row = 23;
  row < 25;
  row = row + 1) {
    for(int column = 0;
    column < 24;
    column = column + 1) {
      block[row][column] = B_r;//ブロックの耐久
    }
  }
  bw = width / 25; // ブロックの幅を決める
}
/* ボールが575個のブロックのいずれかにぶつかったら跳ね返る */

void checkBlocks() {
  for(int row = 0;
  row < block.length;
  row++) {
    for (int column=0; column<column_bk; column++) {
      if (block[row][column] > 0) {
        for(Ball ball : balls) {
          int ret = blockHitCheck(row * bw, column * bh, bw, bh, ball.x, ball.y, ball.b_w, ball.b_h, ball.dx, ball.dy);
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
              addNewBalls(ball);//ブロックが壊れたときにボールを追加
            }
            return;
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
        fill(255);
        rect(row * bw, column * bh, bw, bh); // ブロックの描画
        fill(0,0,255);
        text(block[row][column], row * bw + 10, column * bh + 20);  // ブロックごとの余命を表示
        fill(255);
      }
    }
  }
}
