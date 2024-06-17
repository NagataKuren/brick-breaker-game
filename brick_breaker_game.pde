int block[][] = new int [width][height];// ブロックの配列を宣言
ArrayList<Ball> balls; // ボールを管理するリスト
float x, y, b_w = 10, b_h = 10, dx, dy;
float r_w = 100.0, r_h = 3.0;
int remain = 3; // 残機の初期値を設定&ゲームの判定

void setup() {
  size(800, 1000);
  balls = new ArrayList<Ball>();
  initBall(); // ボールの初期化
  initBlock(); // ブロックの初期化
}

void draw() {
  frameRate(165);

  background(192, 192, 255);
  for(Ball ball : balls) {
    ball.update();
    ball.display();
    checkCollision(ball);
    if (ball.x < 0 ||ball.x + b_w >= width) {
      // ボールが左右の壁に当たったら跳ね返る
      ball.dx = -ball.dx;
      if (ball.y < 0) {
        //ボールが上の壁に当たったら跳ね返る
        ball.dy = -ball.dy;
      }
    }
    // ballが赤か白か判定する
    // 白で落ちたならリセット

    if (ball.isOriginal == true) {
      if (ball.y + b_h > height) {
        // remain--;//永遠にひかれ続ける
        println("fall");
        if (remain > 0) {
          // initBall();//やっぱフリーズする
        }
      }
    }
    if (ball.isOriginal == !true) {
      if (ball.y + b_h > height) {
        ball.dy = -ball.dy;//赤のボールは画面底部に接触すると跳ね返る
      }
    }
  }
  fill(255);
  textSize(50);
  text(remain, 50, height - 50);
  textSize(15);
  checkBlocks(); //ブロックによるボールの跳ね返り処理
  showBlocks(); //命が残っているブロックを表示する
  checkAndShowRacket(height-50); // ラケットの表示とボールの打ち返し処理

  if (remain < 1) {
    background(0);
    fill(255);
    textSize(165);
    text("GAME OVER", width / 2 - 400, height / 3);
    textSize(100);
    text("PLEASE RETRY", width / 2 - 300, height / 3 + 200);
  }
}
