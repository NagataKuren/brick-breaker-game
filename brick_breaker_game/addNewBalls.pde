void addNewBalls(Ball originalBall) {
  // オリジナルボールの位置と速度を元に新しいボールを追加
 
    Ball newBall1 = new Ball(originalBall.x, originalBall.y, originalBall.dx, -originalBall.dy, originalBall.b_w, originalBall.b_h, false, color(255,0,0)); // 赤いボール（複製）
    Ball newBall2 = new Ball(originalBall.x, originalBall.y, -originalBall.dx, originalBall.dy, originalBall.b_w, originalBall.b_h, false, color(255,0,0)); // 赤いボール（複製）
    balls.add(newBall1);
    balls.add(newBall2);
    // originalBall.isOriginal = false; // オリジナルボールは複製後にオリジナルではなくなる
  }


void checkCollision(Ball ball) {
  if (ball.y + ball.b_h >= height) {
    if (remain > 0) {
      // initBall();//ボールの初期化
    }
  }
  if (ball.x <= 0 || ball.x + ball.b_w >= width) {
    ball.dx = -ball.dx;
  }
  if (ball.y <= 0) {
    ball.dy = -ball.dy;
  }
}
class Ball {
  float x, y, dx, dy, b_w, b_h;
  boolean isOriginal;
  color ballColor;

  Ball(float x, float y, float dx, float dy, float b_w, float b_h, boolean isOriginal, color ballColor) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.b_w = b_w;
    this.b_h = b_h;
    this.isOriginal = isOriginal;
    this.ballColor = ballColor;
  }

 void update() {
  x += dx;
  y += dy;
}


  void display() {
    fill(ballColor); // ボールの色を設定
    ellipse(x, y, b_w, b_h);
  }

  boolean hitsBlock(int row, int column) {
    // ブロックとボールの衝突判定
    float blockX = column *(width / block[0].length);
    float blockY = row *(height / block.length);
    float blockWidth = width / block[0].length;
    float blockHeight = height / block.length;
    return x + b_w > blockX && x < blockX + blockWidth && y + b_h > blockY && y < blockY + blockHeight;
  }
}
