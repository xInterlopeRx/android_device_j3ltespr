package org.davis.inputdisabler.utils;

/*
 * Created by Dāvis Mālnieks on 2/22/16.
 */

import android.util.Log;

import java.io.FileOutputStream;

public final class Device {

    public static final String TAG = "Device";

    /*
     * Enables or disables input devices by writing to sysfs path
     */
    public static void enableDevices(boolean enable, boolean touch, boolean keys) {
        // Turn on keys input
        if(keys) {
            try {
                write_sysfs(Constants.TK_PATH, enable);
            } catch (Exception e) {
                Log.e(TAG, "Failed to " + (enable ? "enable" : "disable") + " keys");
            }
        }

        // Turn on touch input
        if(touch) {
            try {
                write_sysfs(Constants.TS_PATH, enable);
            } catch (Exception e) {
                Log.e(TAG, "Failed to " + (enable ? "enable" : "disable") + " touchscreen");
            }
        }
    }

    /*
     * Wrapper methods
     */
    public static void enableDevices(boolean enable) {
        enableDevices(enable, true, true);
    }

    public static void enableTouch(boolean enable) {
        enableDevices(enable, true, false);
    }

    public static void enableKeys(boolean enable) {
        enableDevices(enable, false, true);
    }

    // Writes to sysfs node, returns true if success, false if fail
    private static boolean write_sysfs(String path, boolean on) throws Exception {
        FileOutputStream fos = new FileOutputStream(path);
        byte[] bytes = new byte[2];
        bytes[0] = (byte)(on ? '1' : '0');
        bytes[1] = '\n';
        fos.write(bytes);
        fos.close();

        return true;
    }

}
