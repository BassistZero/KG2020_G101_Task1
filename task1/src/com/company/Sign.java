package com.company;

import java.awt.*;

public class Sign implements Drawable {
    private final int x;
    private final int y;
    private final int height;
    private final String string;

    public Sign(int x, int y, int height, String string){
        this.x = x;
        this.y = y;
        this.height = height;
        this.string = string;
    }

    @Override
    public void draw(Graphics2D g) {
        drawSign(g, x, y, height);
    }

    private static void drawSign(Graphics2D g, int x, int y, int height){
        int r1 = height / 2;
        g.setColor(Color.BLACK);
        g.setFont(new Font("TimesRoman", Font.PLAIN, 200));
        g.drawString("DooM",x + (int)(-1.5 * height),y - (int)(0.8 * r1));
    }
}
