/* ボールの位置と速度を初期化 */

void initBall() {
  Ball ball = new Ball(mouseX, height - 100, 2, -3, 10, 10); // 新しいボールの初期化
  balls.add(ball);
}
