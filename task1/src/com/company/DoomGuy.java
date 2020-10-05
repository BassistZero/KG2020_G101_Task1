package com.company;

import java.awt.*;

public class DoomGuy implements Drawable {

    private final int x;
    private final int y;
    private final Color color;

    public DoomGuy(int x, int y, Color color) {
        this.x = x;
        this.y = y;
        this.color = color;
    }

    @Override
    public void draw(Graphics2D g) {
        drawDoomGuy(g, x, y, color);
    }

    private static void drawDoomGuy(Graphics2D g, int x, int y, Color color) {
        drawLegs(g, x, y, color);
        drawBody(g, x, y, color);
        drawHands(g, x, y);
        drawHead(g, x, y);
        drawGun(g, x, y);
    }

    private static void drawLegs(Graphics2D g, int x, int y, Color color) {
        g.setColor(color);
        g.fillRoundRect(x, y/2, 80, 200, 20, 20);
        g.fillRoundRect(x/2 + 50, y/2, 80, 200, 20, 20);
        g.setColor(Color.decode("#006400"));
        g.fillRoundRect(x/2, y*5/7, 150, 70, 20, 20);
    }

    private static void drawBody(Graphics2D g, int x, int y, Color color) {
        g.setColor(color);
        g.fillRoundRect(x*3/4 - 30, y/4 + 50, 200, 150, 20, 20);
        g.setColor(Color.pink);
        g.fillRoundRect(x*3/3 - 70, y/3 + 60, 80, 50, 20, 20);
        g.setColor(Color.red);
        g.drawLine(x*3/4 + 80, y/3 + 100, x*3/4 + 95, y/3 + 80);
        g.drawLine(x*3/4 + 60, y/3 + 90, x*3/4 + 90, y/3 + 70);
    }

    private static void drawHands(Graphics2D g, int x, int y) {
        g.setColor(Color.pink);
        g.rotate(Math.toRadians(45));
        g.fillRoundRect(x + 100, y/16 - 200, 200, 80, 20, 20);
        g.setColor(Color.decode("#006400"));
        g.fillRoundRect(x + 100, y/16 - 210, 50, 100, 40, 40);
        g.setColor(Color.black);
        g.fillRoundRect(x + 280, y/16 - 200, 40, 90, 40, 40);

        g.setColor(Color.pink);
        g.rotate(Math.toRadians(30));
        g.fillRoundRect(x/2 + 100, y/16 - 250, 200, 80, 20, 20);
        g.setColor(Color.decode("#006400"));
        g.fillRoundRect(x/2 + 100, y/16 - 260, 50, 100, 40, 40);
        g.setColor(Color.black);
        g.fillRoundRect(x/2 + 280, y/16 - 250, 40, 90, 40, 40);
    }

    private static void drawHead(Graphics2D g, int x, int y) {
        g.setColor(Color.gray);
        g.fillArc(x/16 + 230, y/16 - 400, 220, 125, 90, 180);

        g.setColor(Color.white);
        g.fillRoundRect(x/16 + 280, y/16 - 380, 30, 90, 20, 20);

        g.setColor(Color.darkGray);
        g.fillOval(x/16 + 300, y/16 - 355, 30, 40);
    }

    private static void drawGun(Graphics2D g, int x, int y) {
        g.setColor(Color.gray);
        g.fillRect(x/16 + 430, y/16 - 230, 120, 30);

        g.setColor(Color.red);
        g.fillOval(x/16 + 560, y/16 - 225, 25, 25);
    }
}
