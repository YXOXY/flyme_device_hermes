.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final DO_ANIMATION_CALLBACK:I = 0x1a

.field public static final DO_DISPLAY_ADDED:I = 0x1b

.field public static final DO_DISPLAY_CHANGED:I = 0x1d

.field public static final DO_DISPLAY_REMOVED:I = 0x1c

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FINISH_TASK_POSITIONING:I = 0x28

.field public static final FORCE_GC:I = 0xf

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final NOTIFY_APP_TRANSITION_CANCELLED:I = 0x30

.field public static final NOTIFY_APP_TRANSITION_FINISHED:I = 0x31

.field public static final NOTIFY_APP_TRANSITION_STARTING:I = 0x2f

.field public static final NOTIFY_DOCKED_STACK_MINIMIZED_CHANGED:I = 0x35

.field public static final NOTIFY_STARTING_WINDOW_DRAWN:I = 0x32

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final RESIZE_STACK:I = 0x2a

.field public static final RESIZE_TASK:I = 0x2b

.field public static final SEAMLESS_ROTATION_TIMEOUT:I = 0x36

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final TAP_OUTSIDE_TASK:I = 0x1f

.field public static final TWO_FINGER_SCROLL_START:I = 0x2c

.field public static final UNUSED:I = 0x0

.field public static final UPDATE_ANIMATION_SCALE:I = 0x33

.field public static final UPDATE_DOCKED_STACK_DIVIDER:I = 0x29

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_HIDE_TIMEOUT:I = 0x34

.field public static final WINDOW_REPLACEMENT_TIMEOUT:I = 0x2e


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 8288
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 50
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService$H;->handleFlymeMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    const/4 v15, 0x0

    .local v15, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8372
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_1

    .line 8374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 8377
    .end local v15    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    .line 8378
    .local v24, "lastFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8379
    .local v28, "newFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_2

    monitor-exit v3

    .line 8381
    return-void

    .line 8383
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v28

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 8386
    if-eqz v28, :cond_3

    if-eqz v24, :cond_3

    .line 8387
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    .end local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_3
    :goto_1
    monitor-exit v3

    .line 8396
    if-eqz v15, :cond_4

    .line 8397
    invoke-virtual {v15}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    .line 8402
    :cond_4
    if-eqz v28, :cond_5

    .line 8404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 8405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap7(Lcom/android/server/wm/WindowManagerService;)V

    .line 8408
    :cond_5
    if-eqz v24, :cond_0

    .line 8410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    goto :goto_0

    .line 8389
    .restart local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8390
    const/16 v24, 0x0

    .local v24, "lastFocus":Lcom/android/server/wm/WindowState;
    goto :goto_1

    .line 8370
    .end local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v28    # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8417
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8418
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .line 8419
    .local v26, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v3

    .line 8422
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 8423
    .local v13, "N":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v13, :cond_0

    .line 8426
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 8423
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 8417
    .end local v13    # "N":I
    .end local v23    # "i":I
    .end local v26    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8431
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8432
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_7
    :goto_3
    monitor-exit v3

    goto/16 :goto_0

    .line 8431
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8437
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8438
    .local v49, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v33, v0

    .line 8440
    .local v33, "sd":Lcom/android/server/wm/StartingData;
    if-nez v33, :cond_8

    .line 8442
    return-void

    .line 8448
    :cond_8
    const/16 v44, 0x0

    .line 8450
    .local v44, "view":Landroid/view/View;
    if-eqz v49, :cond_b

    :try_start_5
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_b

    .line 8451
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v12, v2, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 8452
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v33

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    .line 8453
    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v33

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v33

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v33

    iget v10, v0, Lcom/android/server/wm/StartingData;->logo:I

    .line 8454
    move-object/from16 v0, v33

    iget v11, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    .line 8452
    invoke-interface/range {v2 .. v12}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v44

    .line 8459
    .end local v44    # "view":Landroid/view/View;
    :goto_5
    if-eqz v44, :cond_0

    .line 8460
    const/4 v14, 0x0

    .line 8462
    .local v14, "abort":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8463
    :try_start_6
    move-object/from16 v0, v49

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_9

    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_c

    .line 8466
    :cond_9
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_a

    .line 8471
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8472
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 8473
    const/4 v14, 0x1

    :cond_a
    :goto_6
    monitor-exit v3

    .line 8485
    if-eqz v14, :cond_0

    .line 8487
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v44

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 8488
    :catch_0
    move-exception v21

    .line 8489
    .local v21, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when removing starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 8451
    .end local v14    # "abort":Z
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v44    # "view":Landroid/view/View;
    :cond_b
    const/4 v12, 0x0

    .local v12, "overrideConfig":Landroid/content/res/Configuration;
    goto :goto_4

    .line 8455
    .end local v12    # "overrideConfig":Landroid/content/res/Configuration;
    :catch_1
    move-exception v21

    .line 8456
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when adding starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 8476
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v44    # "view":Landroid/view/View;
    .restart local v14    # "abort":Z
    :cond_c
    :try_start_8
    move-object/from16 v0, v44

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    .line 8462
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8496
    .end local v14    # "abort":Z
    .end local v33    # "sd":Lcom/android/server/wm/StartingData;
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8497
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/16 v40, 0x0

    .line 8498
    .local v40, "token":Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 8499
    .restart local v44    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8504
    :try_start_9
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_d

    .line 8505
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v44, v0

    .line 8506
    .local v44, "view":Landroid/view/View;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v40, v0

    .line 8507
    .local v40, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8508
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8509
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8510
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .end local v40    # "token":Landroid/os/IBinder;
    .end local v44    # "view":Landroid/view/View;
    :cond_d
    monitor-exit v3

    .line 8513
    if-eqz v44, :cond_0

    .line 8515
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 8516
    :catch_2
    move-exception v21

    .line 8517
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when removing starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 8499
    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8523
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_6
    const/16 v40, 0x0

    .line 8524
    .local v40, "token":Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 8526
    .end local v40    # "token":Landroid/os/IBinder;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8527
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 8528
    .restart local v13    # "N":I
    if-lez v13, :cond_7

    .line 8531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v13, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8538
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-nez v2, :cond_e

    monitor-exit v3

    goto :goto_7

    .line 8542
    :cond_e
    :try_start_c
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v44, v0

    .line 8543
    .restart local v44    # "view":Landroid/view/View;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v40, v0

    .line 8544
    .local v40, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8545
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8546
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8547
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    monitor-exit v3

    .line 8551
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_7

    .line 8552
    :catch_3
    move-exception v21

    .line 8553
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when removing starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 8526
    .end local v13    # "N":I
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v40    # "token":Landroid/os/IBinder;
    .end local v44    # "view":Landroid/view/View;
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_5
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8559
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8564
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_e
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    .line 8565
    :catch_4
    move-exception v22

    .local v22, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8570
    .end local v22    # "ex":Landroid/os/RemoteException;
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8572
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_f

    const/16 v30, 0x1

    .line 8573
    .local v30, "nowVisible":Z
    :goto_8
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_10

    const/16 v29, 0x1

    .line 8580
    .local v29, "nowGone":Z
    :goto_9
    if-eqz v30, :cond_11

    .line 8581
    :try_start_f
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_0

    .line 8585
    :catch_5
    move-exception v22

    .restart local v22    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8572
    .end local v22    # "ex":Landroid/os/RemoteException;
    .end local v29    # "nowGone":Z
    .end local v30    # "nowVisible":Z
    :cond_f
    const/16 v30, 0x0

    .restart local v30    # "nowVisible":Z
    goto :goto_8

    .line 8573
    :cond_10
    const/16 v29, 0x0

    .restart local v29    # "nowGone":Z
    goto :goto_9

    .line 8583
    :cond_11
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_0

    .line 8591
    .end local v29    # "nowGone":Z
    .end local v30    # "nowVisible":Z
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8592
    :try_start_10
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 8594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v48

    .line 8595
    .local v48, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wm/WindowList;->size()I

    move-result v23

    .line 8596
    .restart local v23    # "i":I
    :cond_12
    :goto_a
    if-lez v23, :cond_13

    .line 8597
    add-int/lit8 v23, v23, -0x1

    .line 8598
    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/wm/WindowState;

    .line 8599
    .local v45, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v45

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_12

    .line 8600
    const/4 v2, 0x0

    move-object/from16 v0, v45

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 8601
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 8602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 8601
    sub-long/2addr v4, v6

    long-to-int v2, v4

    move-object/from16 v0, v45

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 8603
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_a

    .line 8591
    .end local v23    # "i":I
    .end local v45    # "w":Lcom/android/server/wm/WindowState;
    .end local v48    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_6
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8606
    .restart local v23    # "i":I
    .restart local v48    # "windows":Lcom/android/server/wm/WindowList;
    :cond_13
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto/16 :goto_3

    .line 8612
    .end local v23    # "i":I
    .end local v48    # "windows":Lcom/android/server/wm/WindowList;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8613
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 8614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 8619
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 8620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto/16 :goto_3

    .line 8612
    :catchall_7
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8627
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8628
    const-string/jumbo v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 8627
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8630
    const-string/jumbo v3, "transition_animation_scale"

    .line 8631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 8629
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8633
    const-string/jumbo v3, "animator_duration_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 8632
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    .line 8639
    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 8640
    .local v27, "mode":I
    packed-switch v27, :pswitch_data_1

    goto/16 :goto_0

    .line 8642
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 8643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8644
    const-string/jumbo v4, "window_animation_scale"

    .line 8645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 8642
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    goto/16 :goto_0

    .line 8649
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 8650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8651
    const-string/jumbo v4, "transition_animation_scale"

    .line 8652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 8649
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto/16 :goto_0

    .line 8656
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 8657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8658
    const-string/jumbo v4, "animator_duration_scale"

    .line 8659
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 8656
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 8660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto/16 :goto_0

    .line 8668
    .end local v27    # "mode":I
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8671
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-eqz v2, :cond_16

    .line 8674
    :cond_15
    const-wide/16 v4, 0x7d0

    const/16 v2, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    monitor-exit v3

    .line 8675
    return-void

    .line 8679
    :cond_16
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    if-eqz v2, :cond_17

    monitor-exit v3

    .line 8680
    return-void

    :cond_17
    monitor-exit v3

    .line 8683
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_0

    .line 8668
    :catchall_8
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8688
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_0

    .line 8693
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8694
    :try_start_15
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "App freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 8696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v31

    .line 8697
    .local v31, "numStacks":I
    const/16 v36, 0x0

    .local v36, "stackNdx":I
    :goto_b
    move/from16 v0, v36

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 8698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/TaskStack;

    .line 8699
    .local v35, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v38

    .line 8700
    .local v38, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v37, v2, -0x1

    .local v37, "taskNdx":I
    :goto_c
    if-ltz v37, :cond_1a

    .line 8701
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v0, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v43, v0

    .line 8702
    .local v43, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v42, v2, -0x1

    .local v42, "tokenNdx":I
    :goto_d
    if-ltz v42, :cond_19

    .line 8703
    move-object/from16 v0, v43

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/wm/AppWindowToken;

    .line 8704
    .local v39, "tok":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_18

    .line 8705
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Force clearing freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 8702
    :cond_18
    add-int/lit8 v42, v42, -0x1

    goto :goto_d

    .line 8700
    .end local v39    # "tok":Lcom/android/server/wm/AppWindowToken;
    :cond_19
    add-int/lit8 v37, v37, -0x1

    goto :goto_c

    .line 8697
    .end local v42    # "tokenNdx":I
    .end local v43    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_1a
    add-int/lit8 v36, v36, 0x1

    goto :goto_b

    .line 8693
    .end local v31    # "numStacks":I
    .end local v35    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v36    # "stackNdx":I
    .end local v37    # "taskNdx":I
    .end local v38    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :catchall_9
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8716
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8717
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_7

    .line 8718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 8719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "client-timeout"

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 8720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    goto/16 :goto_3

    .line 8716
    :catchall_a
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8727
    :pswitch_14
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_0

    .line 8733
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v2, :cond_0

    .line 8734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8735
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    monitor-exit v3

    .line 8737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap8(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_0

    .line 8734
    :catchall_b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8743
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/os/IBinder;

    .line 8747
    .local v46, "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8749
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_7

    .line 8750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    .line 8751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 8752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 8753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    goto/16 :goto_3

    .line 8747
    :catchall_c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8760
    .end local v46    # "win":Landroid/os/IBinder;
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/os/IBinder;

    .line 8764
    .restart local v46    # "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8766
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_7

    .line 8767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 8768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    goto/16 :goto_3

    .line 8764
    :catchall_d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8775
    .end local v46    # "win":Landroid/os/IBinder;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_0

    .line 8780
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_0

    .line 8785
    :pswitch_1a
    const/16 v17, 0x0

    .line 8786
    .local v17, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8787
    :try_start_1a
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Timeout waiting for drawn: undrawn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    .line 8790
    .local v17, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    monitor-exit v3

    .line 8792
    if-eqz v17, :cond_0

    .line 8793
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 8786
    .end local v17    # "callback":Ljava/lang/Runnable;
    :catchall_e
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8799
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap9(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_0

    .line 8804
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    goto/16 :goto_0

    :cond_1b
    const/4 v2, 0x0

    goto :goto_e

    .line 8809
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    goto/16 :goto_0

    .line 8815
    :pswitch_1e
    :try_start_1b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_6

    goto/16 :goto_0

    .line 8816
    :catch_6
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8822
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    goto/16 :goto_0

    .line 8826
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8827
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap5(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    goto/16 :goto_3

    .line 8826
    :catchall_f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8832
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8833
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap4(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    goto/16 :goto_3

    .line 8832
    :catchall_10
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8838
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->-wrap10(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;II)V

    goto/16 :goto_0

    .line 8843
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->-wrap6(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;II)V

    goto/16 :goto_0

    .line 8848
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap3(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_0

    .line 8854
    :pswitch_25
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_7

    goto/16 :goto_0

    .line 8855
    :catch_7
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8860
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8861
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    .line 8862
    .restart local v17    # "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    monitor-exit v3

    .line 8864
    if-eqz v17, :cond_1c

    .line 8865
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    .line 8869
    .end local v17    # "callback":Ljava/lang/Runnable;
    :cond_1c
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v32

    .line 8870
    .local v32, "scale":F
    invoke-static/range {v32 .. v32}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 8871
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/wm/Session;

    .line 8872
    .local v34, "session":Lcom/android/server/wm/Session;
    if-eqz v34, :cond_1d

    .line 8874
    :try_start_20
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_8

    goto/16 :goto_0

    .line 8875
    :catch_8
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8860
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v32    # "scale":F
    .end local v34    # "session":Lcom/android/server/wm/Session;
    :catchall_11
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8879
    .restart local v32    # "scale":F
    .restart local v34    # "session":Lcom/android/server/wm/Session;
    :cond_1d
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 8880
    .local v18, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8881
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_f
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_1e

    .line 8882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 8881
    add-int/lit8 v23, v23, 0x1

    goto :goto_f

    :cond_1e
    monitor-exit v3

    .line 8886
    const/16 v23, 0x0

    :goto_10
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_0

    .line 8888
    :try_start_22
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowSessionCallback;

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_b

    .line 8886
    :goto_11
    add-int/lit8 v23, v23, 0x1

    goto :goto_10

    .line 8880
    :catchall_12
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8897
    .end local v18    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v23    # "i":I
    .end local v32    # "scale":F
    .end local v34    # "session":Lcom/android/server/wm/Session;
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8899
    :try_start_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap0(Lcom/android/server/wm/WindowManagerService;)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    move-result v16

    .local v16, "bootAnimationComplete":Z
    monitor-exit v3

    .line 8901
    if-eqz v16, :cond_0

    .line 8902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_0

    .line 8897
    .end local v16    # "bootAnimationComplete":Z
    :catchall_13
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8907
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8908
    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    goto/16 :goto_3

    .line 8907
    :catchall_14
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8913
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8914
    :try_start_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 8915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    :cond_1f
    monitor-exit v3

    .line 8920
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8921
    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    .line 8922
    .local v19, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 8923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->adjustForImeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_15

    goto/16 :goto_3

    .line 8920
    .end local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_15
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8913
    :catchall_16
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8929
    :pswitch_2c
    :try_start_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v2, v5}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_9

    goto/16 :goto_0

    .line 8930
    :catch_9
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8937
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_2d
    :try_start_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 8938
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    const/4 v5, 0x1

    :goto_12
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 8937
    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_a

    goto/16 :goto_0

    .line 8939
    :catch_a
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8938
    .end local v20    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v5, 0x0

    goto :goto_12

    .line 8945
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8946
    :try_start_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mReplacingWindowTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .restart local v23    # "i":I
    :goto_13
    if-ltz v23, :cond_21

    .line 8947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mReplacingWindowTimeouts:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/wm/AppWindowToken;

    .line 8948
    .local v41, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/AppWindowToken;->clearTimedoutReplacesLocked()V

    .line 8946
    add-int/lit8 v23, v23, -0x1

    goto :goto_13

    .line 8950
    .end local v41    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mReplacingWindowTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    monitor-exit v3

    .line 8954
    .end local v23    # "i":I
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionStarting(I)V

    goto/16 :goto_0

    .line 8945
    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8958
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionCancelled()V

    goto/16 :goto_0

    .line 8962
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionFinished()V

    goto/16 :goto_0

    .line 8966
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->notifyStartingWindowDrawn()V

    goto/16 :goto_0

    .line 8970
    :pswitch_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/server/wm/WindowState;

    .line 8971
    .local v47, "window":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8983
    :try_start_2a
    move-object/from16 v0, v47

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8984
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    .line 8985
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 8986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_18

    goto/16 :goto_3

    .line 8971
    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8991
    .end local v47    # "window":Lcom/android/server/wm/WindowState;
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_22

    const/4 v2, 0x1

    :goto_14
    invoke-virtual {v3, v2}, Landroid/app/ActivityManagerInternal;->notifyDockedStackMinimizedChanged(Z)V

    goto/16 :goto_0

    :cond_22
    const/4 v2, 0x0

    goto :goto_14

    .line 8997
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8998
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    .line 8999
    .restart local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v48

    .line 9000
    .restart local v48    # "windows":Lcom/android/server/wm/WindowList;
    const/16 v25, 0x0

    .line 9001
    .local v25, "layoutNeeded":Z
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .restart local v23    # "i":I
    :goto_15
    if-ltz v23, :cond_24

    .line 9002
    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/wm/WindowState;

    .line 9003
    .restart local v45    # "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v45

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v2, :cond_23

    .line 9004
    const/16 v25, 0x1

    .line 9005
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 9006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 9001
    :cond_23
    add-int/lit8 v23, v23, -0x1

    goto :goto_15

    .line 9009
    .end local v45    # "w":Lcom/android/server/wm/WindowState;
    :cond_24
    if-eqz v25, :cond_7

    .line 9010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_19

    goto/16 :goto_3

    .line 8997
    .end local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v23    # "i":I
    .end local v25    # "layoutNeeded":Z
    .end local v48    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8889
    .restart local v18    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .restart local v23    # "i":I
    .restart local v32    # "scale":F
    .restart local v34    # "session":Lcom/android/server/wm/Session;
    :catch_b
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_11

    .line 8363
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_13
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_1c
        :pswitch_1d
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_24
        :pswitch_2b
        :pswitch_2d
        :pswitch_2c
        :pswitch_22
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_c
        :pswitch_33
        :pswitch_34
        :pswitch_35
    .end packed-switch

    .line 8640
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private handleFlymeMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService$FlymeInjector;->handleFlymeMessage(Lcom/android/server/wm/WindowManagerService;Landroid/os/Message;)V

    return-void
.end method
