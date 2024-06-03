int block[][] = new int [width][height];

// 20個のブロックの余命カウンター
float x, y; // ボールの左上の座標
float b_w = 10, b_h = 10; // ボールの幅と高さ
float dx, dy; // ボールの移動速度
float r_w = 50.0, r_h = 5.0; // ラケットの幅と高さ
int GAME; //ゲームが終わったか判定

void setup() {
  size(800, 1000);
  initBall(); // ボールの初期化
  initBlock(); // ブロックの初期化
}

void draw() {
  frameRate(165);
  x += dx;
  y += dy;

  background(192, 192, 255);
  ellipse(x, y, b_w, b_h); // ボールの表示

  checkBlocks(); // ブロックによるボールの跳ね返り処理
  showBlocks(); //　命が残っているブロックを表示する
  checkAndShowRacket(height-50); // ラケットの表示とボールの打ち返し処理

  if (y + b_h >= height) {
    // ボールをラケットで受け損ねたらゲームを終わらせる
    GAME = 1;
  }
  if (x < 0 || x+b_w >=width) {
    dx = -dx;
  }
  // ボールが左右の壁に当たったら跳ね返る
  if (y < 0) {
    dy = -dy;
  }
  //　ボールが上部の壁に当たったら跳ね返る
  if (GAME == 1) {
    fill(0);
    rect(0, 0, width, height);
    fill(255);
    textSize(165);
    text("GAME OVER", 0, height/2);
    /*if (block[row][column] > 0) {
      ellipse(,, b_w, b_h);
    }
    */
  }
}
