package com.company;

import javax.swing.*;
import java.awt.*;

public class DrawPanel extends JPanel {
    public void paint(Graphics g) {
        Graphics2D gr = (Graphics2D) g;
        DoomGuy doomguy = new DoomGuy(getWidth()/2, getHeight()/2 + (int) (0.85*getHeight()), Color.decode("#2E8B57"));
        Sign sign = new Sign((int) (getWidth() / 7 * 4.5), getHeight() / 2, getHeight() / 2, "DooM");
        Road road = new Road(0, getHeight() / 2 + (int) (0.2 * getHeight()), getWidth(), getHeight());
        road.draw(gr);
        sign.draw(gr);
        doomguy.draw(gr);
    }
}
