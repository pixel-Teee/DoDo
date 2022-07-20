package com.DoDo.GameEngine;

import android.app.NativeActivity;
import android.content.Context;
import android.os.Bundle;

public class NativeSampleActivity extends NativeActivity {

    private Context context;

    @Override
    protected void onCreate(Bundle instance) {
        super.onCreate(instance);

       //Notifications.initNotificationChannel(this);

        context = this;
    }
}
