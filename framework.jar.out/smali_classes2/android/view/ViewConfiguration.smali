.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_MAXIMUM_FLING_VELOCITY:I = 0x3e80

.field public static final DEFAULT_OVERFLING_DISTANCE:I = 0x6

.field public static final DEFAULT_OVERSCROLL_DISTANCE:I = 0x0

.field public static final DEFAULT_SCROLL_FRICTION:F = 0.007f

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0x6

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0xfa

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0xfa

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static MAXIMUM_FLING_VELOCITY:I = 0x0

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static OVERFLING_DISTANCE:I = 0x0

.field private static OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static SCROLL_FRICTION:F = 0.0f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0x5dc

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 185
    const/16 v0, 0x3e80

    sput v0, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    .line 211
    const v0, 0x3be56042    # 0.007f

    sput v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    .line 222
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    .line 232
    const/4 v0, 0x6

    sput v0, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    .line 272
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 271
    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x8

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 280
    const/16 v0, 0xc

    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 281
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 282
    sget v0, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 283
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 284
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 285
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 286
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 287
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 288
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 290
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 291
    sget v0, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 292
    sget v0, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 294
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 278
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 310
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v19, "animation_controls_no_scroll"

    const/16 v20, 0x0

    .line 309
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 310
    const/16 v20, 0x1

    .line 309
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 311
    const v19, 0x3be56042    # 0.007f

    sput v19, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    .line 312
    const/16 v19, 0x3e80

    sput v19, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    .line 313
    const/16 v19, 0x0

    sput v19, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    .line 314
    const/16 v19, 0x6

    sput v19, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    .line 340
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 341
    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 342
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 343
    .local v4, "config":Landroid/content/res/Configuration;
    iget v6, v10, Landroid/util/DisplayMetrics;->density:F

    .line 345
    .local v6, "density":F
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 346
    const/high16 v19, 0x3fc00000    # 1.5f

    mul-float v16, v6, v19

    .line 351
    .local v16, "sizeAndDensity":F
    :goto_1
    const/high16 v19, 0x40c00000    # 6.0f

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 352
    const/high16 v19, 0x41400000    # 12.0f

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 353
    const/high16 v19, 0x41200000    # 10.0f

    mul-float v19, v19, v6

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 354
    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 355
    const/high16 v19, 0x41800000    # 16.0f

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 358
    const-string/jumbo v19, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 359
    .local v17, "win":Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 360
    .local v7, "display":Landroid/view/Display;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 361
    .local v15, "size":Landroid/graphics/Point;
    invoke-virtual {v7, v15}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 362
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 364
    sget v19, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 365
    sget v19, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 367
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 369
    const v19, 0x10e009c

    .line 368
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 371
    .local v5, "configVal":I
    packed-switch v5, :pswitch_data_0

    .line 374
    :pswitch_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v18

    .line 376
    .local v18, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->hasPermanentMenuKey()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 377
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v5    # "configVal":I
    .end local v18    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_2
    const v19, 0x1120011

    .line 396
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 399
    const v19, 0x1050012

    .line 398
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 405
    const v19, 0x1050013

    .line 404
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 407
    const v19, 0x1050014

    .line 406
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 409
    const v19, 0x10e0094

    .line 408
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 307
    return-void

    .line 317
    .end local v4    # "config":Landroid/content/res/Configuration;
    .end local v6    # "density":F
    .end local v7    # "display":Landroid/view/Display;
    .end local v10    # "metrics":Landroid/util/DisplayMetrics;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v15    # "size":Landroid/graphics/Point;
    .end local v16    # "sizeAndDensity":F
    .end local v17    # "win":Landroid/view/WindowManager;
    :cond_1
    const-string/jumbo v19, "custom_scroll_friction"

    const v20, 0x3be56042    # 0.007f

    .line 316
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v19

    sput v19, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    .line 319
    const-string/jumbo v19, "custom_fling_velocity"

    const/16 v20, 0x3e80

    .line 318
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 320
    .local v9, "maximumFlingVelocity":I
    if-nez v9, :cond_3

    .line 321
    const/16 v19, 0x3e80

    sput v19, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    .line 326
    :goto_3
    const-string/jumbo v19, "custom_overscroll_distance"

    const/16 v20, 0x0

    .line 325
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 327
    .local v12, "overScrollDistance":I
    const/16 v19, 0x64

    move/from16 v0, v19

    if-le v12, v0, :cond_4

    .line 328
    const/16 v19, 0x0

    sput v19, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    .line 333
    :goto_4
    const-string/jumbo v19, "custom_overfling_distance"

    const/16 v20, 0x6

    .line 332
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 334
    .local v11, "overFlingDistance":I
    const/16 v19, 0x64

    move/from16 v0, v19

    if-gt v11, v0, :cond_2

    if-nez v11, :cond_5

    .line 335
    :cond_2
    const/16 v19, 0x6

    sput v19, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    goto/16 :goto_0

    .line 323
    .end local v11    # "overFlingDistance":I
    .end local v12    # "overScrollDistance":I
    :cond_3
    sput v9, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    goto :goto_3

    .line 330
    .restart local v12    # "overScrollDistance":I
    :cond_4
    sput v12, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    goto :goto_4

    .line 337
    .restart local v11    # "overFlingDistance":I
    :cond_5
    sput v11, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    goto/16 :goto_0

    .line 348
    .end local v9    # "maximumFlingVelocity":I
    .end local v11    # "overFlingDistance":I
    .end local v12    # "overScrollDistance":I
    .restart local v4    # "config":Landroid/content/res/Configuration;
    .restart local v6    # "density":F
    .restart local v10    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v13    # "res":Landroid/content/res/Resources;
    :cond_6
    move/from16 v16, v6

    .restart local v16    # "sizeAndDensity":F
    goto/16 :goto_1

    .line 378
    .restart local v5    # "configVal":I
    .restart local v7    # "display":Landroid/view/Display;
    .restart local v15    # "size":Landroid/graphics/Point;
    .restart local v17    # "win":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v8

    .line 379
    .local v8, "ex":Landroid/os/RemoteException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto/16 :goto_2

    .line 385
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v18    # "wm":Landroid/view/IWindowManager;
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 386
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto/16 :goto_2

    .line 390
    :pswitch_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 391
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto/16 :goto_2

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 421
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 423
    .local v1, "density":I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 424
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 425
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 426
    .restart local v0    # "configuration":Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    :cond_0
    return-object v0
.end method

.method public static getDefaultActionModeHideDuration()J
    .locals 2

    .prologue
    .line 799
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    .prologue
    .line 548
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 633
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 537
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 579
    const/4 v0, 0x6

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .prologue
    .line 568
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 558
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 528
    const/16 v0, 0xfa

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 510
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 503
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 495
    const-string/jumbo v0, "long_press_timeout"

    .line 496
    const/16 v1, 0x1f4

    .line 495
    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 721
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 701
    sget v0, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 684
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 487
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 455
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 462
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 792
    sget v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .prologue
    .line 654
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 519
    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 597
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 666
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 757
    const-wide/16 v0, 0x5dc

    return-wide v0
.end method


# virtual methods
.method public getDeviceGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 782
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    .prologue
    .line 815
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
