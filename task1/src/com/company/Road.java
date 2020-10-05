package com.company;

import java.awt.*;

public class Road implements Drawable {
    private final int x1;
    private final int y1;
    private final int x2;
    private final int y2;

    public Road(int x, int y, int x2, int y2){
        this.x1 = x;
        this.y1 = y;
        this.x2 = x2;
        this.y2 = y2;
    }

    @Override
    public void draw(Graphics2D g) {
        g.setColor(Color.DARK_GRAY);
        g.fillPolygon(new int[]{x1, x1, x2, x2}, new int[]{y1, y2, y2, y1}, 4);
    }
}
