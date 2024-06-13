int block[][] = new int [width][height];// ブロックの配列を宣言
ArrayList<Ball> balls; // ボールを管理するリスト
float x, y, b_w = 10, b_h = 10, dx, dy;
float r_w = 50.0, r_h = 3.0;
int remain = 3; // 残機の初期値を設定&ゲームの判定

void setup() {
  size(800, 1000);
  balls = new ArrayList<Ball>();
  initBall(); // ボールの初期化
  initBlock(); // ブロックの初期化
}

void draw() {
  frameRate(165);
  x = x + dx;
  y = y + dy;
  background(192, 192, 255);
  println(x,y);//x,yの値が代入されていない
  for(Ball ball : balls) {
    ball.update();
    ball.display();
    checkCollision(ball);
  }
  fill(255);
  textSize(50);
  text(remain, 50, height - 50);
  textSize(15);
  checkBlocks(); //ブロックによるボールの跳ね返り処理
  showBlocks(); //命が残っているブロックを表示する
  checkAndShowRacket(height-50); // ラケットの表示とボールの打ち返し処理

  if (x < 0 || x + b_w >= width) {
    dx = -dx;
  }
  // ボールが左右の壁に当たったら跳ね返る
  if (y <= 0) {
    dy = -dy;
  }
  if (y + b_h >= height) {
    //動いていない
    remain--;
    if (remain > 0) {
      initBall();
    }
  }
  //ボールが上部の壁に当たったら跳ね返る
  if (remain < 1) {
    background(0);
    fill(255);
    textSize(165);
    text("GAME OVER", width / 2 - 400, height / 3);
    textSize(100);
    text("RETRY", width / 2 - 150, height / 3 + 200);
  }
}
