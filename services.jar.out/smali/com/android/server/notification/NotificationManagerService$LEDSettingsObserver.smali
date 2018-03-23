.class final Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LEDSettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final MUTE_ANNOYING_NOTIFICATIONS_THRESHOLD_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

.field private final NOTIFICATION_SOUND_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 888
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 877
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 876
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 879
    const-string/jumbo v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 878
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    .line 881
    const-string/jumbo v0, "max_notification_enqueue_rate"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 880
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    .line 883
    const-string/jumbo v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 882
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 885
    const-string/jumbo v0, "mute_annoying_notifications_threshold"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 884
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->MUTE_ANNOYING_NOTIFICATIONS_THRESHOLD_URI:Landroid/net/Uri;

    .line 887
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 892
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 894
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 893
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 896
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 895
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 898
    const-string/jumbo v1, "notification_light_pulse_default_color"

    .line 897
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 901
    const-string/jumbo v1, "notification_light_pulse_default_led_on"

    .line 900
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 904
    const-string/jumbo v1, "notification_light_pulse_default_led_off"

    .line 903
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 907
    const-string/jumbo v1, "notification_light_pulse_custom_enable"

    .line 906
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 910
    const-string/jumbo v1, "notification_light_pulse_custom_values"

    .line 909
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 912
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 914
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 917
    const-string/jumbo v1, "notification_light_screen_on_enable"

    .line 916
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 920
    const-string/jumbo v1, "notification_light_color_auto"

    .line 919
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 922
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    const-string/jumbo v1, "notification_light_brightness_level"

    .line 923
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 927
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    const-string/jumbo v1, "notification_light_multiple_leds_enable"

    .line 928
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 932
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->MUTE_ANNOYING_NOTIFICATIONS_THRESHOLD_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 934
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->update(Landroid/net/Uri;)V

    .line 891
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 938
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->update(Landroid/net/Uri;)V

    .line 937
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x2

    const/4 v3, 0x0

    .line 942
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 945
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 946
    const-string/jumbo v1, "notification_light_pulse"

    .line 945
    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set11(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 949
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 950
    const-string/jumbo v1, "notification_light_color_auto"

    .line 949
    invoke-static {v0, v1, v2, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_1
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set1(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 954
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 955
    const-string/jumbo v4, "notification_light_pulse_default_color"

    .line 956
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 954
    invoke-static {v0, v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set3(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 959
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 960
    const-string/jumbo v4, "notification_light_pulse_default_led_on"

    .line 961
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 959
    invoke-static {v0, v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set5(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 964
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 965
    const-string/jumbo v4, "notification_light_pulse_default_led_off"

    .line 966
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get9(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 964
    invoke-static {v0, v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set4(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 969
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get12(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 972
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get20(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 974
    const-string/jumbo v1, "notification_light_pulse_custom_enable"

    .line 973
    invoke-static {v0, v1, v3, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 977
    const-string/jumbo v4, "notification_light_pulse_custom_values"

    .line 976
    invoke-static {v0, v4, v6}, Lcyanogenmod/providers/CMSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-wrap31(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 980
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 981
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 982
    const-string/jumbo v4, "max_notification_enqueue_rate"

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v5

    .line 981
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set8(Lcom/android/server/notification/NotificationManagerService;F)F

    .line 984
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 985
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 986
    const-string/jumbo v4, "notification_sound"

    .line 985
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set14(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 990
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 991
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 992
    const-string/jumbo v4, "notification_light_brightness_level"

    .line 993
    const/16 v5, 0xff

    .line 991
    invoke-static {v0, v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set10(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 997
    :cond_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 998
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 999
    const-string/jumbo v5, "notification_light_multiple_leds_enable"

    .line 1000
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    .line 998
    :goto_2
    invoke-static {v0, v5, v1, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    :goto_3
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set9(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1004
    :cond_6
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1005
    const-string/jumbo v5, "notification_light_screen_on_enable"

    .line 1006
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get25(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    .line 1004
    :goto_4
    invoke-static {v0, v5, v1, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_e

    :goto_5
    invoke-static {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->-set13(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1008
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->MUTE_ANNOYING_NOTIFICATIONS_THRESHOLD_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1009
    :cond_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1010
    const-string/jumbo v2, "mute_annoying_notifications_threshold"

    const-wide/16 v4, 0x0

    .line 1011
    const/4 v3, -0x3

    .line 1009
    invoke-static {v0, v2, v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-set0(Lcom/android/server/notification/NotificationManagerService;J)J

    .line 1014
    :cond_8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap37(Lcom/android/server/notification/NotificationManagerService;)V

    .line 941
    return-void

    :cond_9
    move v1, v3

    .line 945
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 949
    goto/16 :goto_1

    :cond_b
    move v1, v3

    .line 1000
    goto :goto_2

    :cond_c
    move v1, v3

    .line 998
    goto :goto_3

    :cond_d
    move v1, v3

    .line 1006
    goto :goto_4

    :cond_e
    move v2, v3

    .line 1004
    goto :goto_5
.end method
