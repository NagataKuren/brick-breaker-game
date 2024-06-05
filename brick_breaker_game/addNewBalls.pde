void addNewBalls(Ball originalBall) {
  // オリジナルボールの位置と速度を元に新しいボールを追加
  Ball newBall1 = new Ball(originalBall.x, originalBall.y, originalBall.dx, -originalBall.dy, originalBall.b_w, originalBall.b_h);
  Ball newBall2 = new Ball(originalBall.x, originalBall.y, -originalBall.dx, originalBall.dy, originalBall.b_w, originalBall.b_h);
  balls.add(newBall1);
  balls.add(newBall2);
}

void checkCollision(Ball ball) {
  if (ball.y + ball.b_h >= height) {
    remain--;
    if (remain > 0) {
      initBall();//すべて
    }
  }
  if (ball.x < 0 || ball.x + ball.b_w >= width) {
    ball.dx = -ball.dx;
  }
  if (ball.y < 0) {
    ball.dy = -ball.dy;
  }
}
class Ball {
  float x, y, dx, dy, b_w, b_h;

  Ball(float x, float y, float dx, float dy, float b_w, float b_h) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.b_w = b_w;
    this.b_h = b_h;
  }

  void update() {
    x += dx;
    y += dy;
  }

  void display() {
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
