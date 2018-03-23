.class public Lcom/android/server/policy/HardkeyActionHandler;
.super Ljava/lang/Object;
.source "HardkeyActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/HardkeyActionHandler$1;,
        Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;,
        Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;,
        Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BOOST_LEVEL:I = 0xf4240

.field private static final KEY_MASK_APP_SWITCH:I = 0x10

.field private static final KEY_MASK_ASSIST:I = 0x8

.field private static final KEY_MASK_BACK:I = 0x2

.field private static final KEY_MASK_CAMERA:I = 0x20

.field private static final KEY_MASK_HOME:I = 0x1

.field private static final KEY_MASK_MENU:I = 0x4

.field private static final KEY_MASK_VOLUME:I = 0x40

.field public static final MSG_DO_HAPTIC_FB:I = 0x1bc3

.field public static final MSG_FIRE_HOME:I = 0x1bbe

.field public static final MSG_UPDATE_MENU_KEY:I = 0x1bc2

.field private static final TAG:Ljava/lang/String;

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I


# instance fields
.field private mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

.field private mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

.field private mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

.field private mContext:Landroid/content/Context;

.field private mDeviceHardwareKeys:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

.field private mHwKeysDisabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

.field private mObserver:Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;

.field private mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/HardkeyActionHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/HardkeyActionHandler;->updateKeyAssignments()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lcom/android/server/policy/HardkeyActionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/HardkeyActionHandler;->TAG:Ljava/lang/String;

    .line 650
    const/16 v0, 0x7d3

    .line 651
    const/16 v1, 0x7da

    .line 649
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/HardkeyActionHandler;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HardkeyActionHandler$1;-><init>(Lcom/android/server/policy/HardkeyActionHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHwKeysDisabled:Z

    .line 115
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    .line 119
    const-string/jumbo v0, "config_deviceHardwareKeys"

    .line 120
    const-string/jumbo v1, "android"

    .line 119
    invoke-static {p1, v0, v1}, Lcom/android/internal/utils/du/DUActionUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    .line 122
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 123
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 124
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 125
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 126
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 128
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mObserver:Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mObserver:Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->observe()V

    .line 114
    return-void
.end method

.method private filterDisabledKey(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    iget-boolean v2, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHwKeysDisabled:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 144
    const/16 v2, 0x52

    if-ne p1, v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    const/16 v2, 0xbb

    if-eq p1, v2, :cond_0

    .line 146
    const/16 v2, 0xdb

    if-eq p1, v2, :cond_0

    .line 147
    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method private getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private updateKeyAssignments()V
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 683
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 684
    .local v2, "cr":Landroid/content/ContentResolver;
    iget-object v12, p0, Lcom/android/server/policy/HardkeyActionHandler;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 686
    :try_start_0
    const-string/jumbo v11, "hardware_keys_disable"

    const/4 v13, 0x0

    .line 687
    const/4 v14, -0x2

    .line 685
    invoke-static {v2, v11, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_4

    move v11, v9

    :goto_0
    iput-boolean v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHwKeysDisabled:Z

    .line 689
    iget v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    .line 690
    .local v6, "hasMenu":Z
    :goto_1
    iget v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_6

    const/4 v5, 0x1

    .line 691
    .local v5, "hasHome":Z
    :goto_2
    iget v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_7

    const/4 v4, 0x1

    .line 692
    .local v4, "hasAssist":Z
    :goto_3
    iget v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_8

    const/4 v3, 0x1

    .line 694
    .local v3, "hasAppSwitch":Z
    :goto_4
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    .line 695
    const/4 v13, 0x2

    invoke-static {v13}, Lcom/android/internal/utils/du/ActionConstants;->getDefaults(I)Lcom/android/internal/utils/du/ActionConstants$Defaults;

    move-result-object v13

    .line 694
    invoke-static {v11, v13}, Lcom/android/internal/utils/du/Config;->getConfig(Landroid/content/Context;Lcom/android/internal/utils/du/ActionConstants$Defaults;)Ljava/util/ArrayList;

    move-result-object v1

    .line 697
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/utils/du/Config$ButtonConfig;>;"
    const-string/jumbo v11, "hwkeys_button_back"

    invoke-static {v1, v11}, Lcom/android/internal/utils/du/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/du/Config$ButtonConfig;

    move-result-object v0

    .line 698
    .local v0, "config":Lcom/android/internal/utils/du/Config$ButtonConfig;
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11, v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/du/Config$ButtonConfig;)V

    .line 700
    const-string/jumbo v11, "hwkeys_button_home"

    invoke-static {v1, v11}, Lcom/android/internal/utils/du/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/du/Config$ButtonConfig;

    move-result-object v0

    .line 701
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11, v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/du/Config$ButtonConfig;)V

    .line 703
    const-string/jumbo v11, "hwkeys_button_overview"

    invoke-static {v1, v11}, Lcom/android/internal/utils/du/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/du/Config$ButtonConfig;

    move-result-object v0

    .line 704
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11, v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/du/Config$ButtonConfig;)V

    .line 706
    const-string/jumbo v11, "hwkeys_button_menu"

    invoke-static {v1, v11}, Lcom/android/internal/utils/du/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/du/Config$ButtonConfig;

    move-result-object v0

    .line 707
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11, v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/du/Config$ButtonConfig;)V

    .line 709
    const-string/jumbo v11, "hwkeys_button_assist"

    invoke-static {v1, v11}, Lcom/android/internal/utils/du/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/du/Config$ButtonConfig;

    move-result-object v0

    .line 710
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11, v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/du/Config$ButtonConfig;)V

    .line 712
    const/4 v7, 0x0

    .line 714
    .local v7, "hasMenuKeyEnabled":Z
    if-eqz v5, :cond_0

    .line 715
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v7

    .line 717
    .end local v7    # "hasMenuKeyEnabled":Z
    :cond_0
    if-eqz v6, :cond_1

    .line 718
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v11

    or-int/2addr v7, v11

    .line 720
    :cond_1
    if-eqz v4, :cond_2

    .line 721
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v11

    or-int/2addr v7, v11

    .line 723
    :cond_2
    if-eqz v3, :cond_3

    .line 724
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v11

    or-int/2addr v7, v11

    .line 726
    :cond_3
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v11}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v11

    or-int/2addr v7, v11

    .line 729
    .local v7, "hasMenuKeyEnabled":Z
    iget-object v11, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x1bc2

    invoke-virtual {v11, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 730
    .local v8, "msg":Landroid/os/Message;
    if-eqz v7, :cond_9

    :goto_5
    iput v9, v8, Landroid/os/Message;->arg1:I

    .line 731
    iget-object v9, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 682
    return-void

    .end local v0    # "config":Lcom/android/internal/utils/du/Config$ButtonConfig;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/utils/du/Config$ButtonConfig;>;"
    .end local v3    # "hasAppSwitch":Z
    .end local v4    # "hasAssist":Z
    .end local v5    # "hasHome":Z
    .end local v6    # "hasMenu":Z
    .end local v7    # "hasMenuKeyEnabled":Z
    .end local v8    # "msg":Landroid/os/Message;
    :cond_4
    move v11, v10

    .line 685
    goto/16 :goto_0

    .line 689
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "hasMenu":Z
    goto/16 :goto_1

    .line 690
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "hasHome":Z
    goto/16 :goto_2

    .line 691
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "hasAssist":Z
    goto/16 :goto_3

    .line 692
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "hasAppSwitch":Z
    goto/16 :goto_4

    .restart local v0    # "config":Lcom/android/internal/utils/du/Config$ButtonConfig;
    .restart local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/utils/du/Config$ButtonConfig;>;"
    .restart local v7    # "hasMenuKeyEnabled":Z
    .restart local v8    # "msg":Landroid/os/Message;
    :cond_9
    move v9, v10

    .line 730
    goto :goto_5

    .line 684
    .end local v0    # "config":Lcom/android/internal/utils/du/Config$ButtonConfig;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/utils/du/Config$ButtonConfig;>;"
    .end local v3    # "hasAppSwitch":Z
    .end local v4    # "hasAssist":Z
    .end local v5    # "hasHome":Z
    .end local v6    # "hasMenu":Z
    .end local v7    # "hasMenuKeyEnabled":Z
    .end local v8    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v9

    monitor-exit v12

    throw v9
.end method


# virtual methods
.method fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V
    .locals 0
    .param p1, "button"    # Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .prologue
    .line 132
    return-void
.end method

.method public handleKeyEvent(Landroid/view/WindowManagerPolicy$WindowState;IIZZZZ)Z
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "keyCode"    # I
    .param p3, "repeatCount"    # I
    .param p4, "down"    # Z
    .param p5, "canceled"    # Z
    .param p6, "longPress"    # Z
    .param p7, "keyguardOn"    # Z

    .prologue
    .line 153
    invoke-direct {p0, p2}, Lcom/android/server/policy/HardkeyActionHandler;->filterDisabledKey(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    const/4 v5, 0x1

    return v5

    .line 157
    :cond_0
    const/4 v5, 0x3

    if-ne p2, v5, :cond_12

    .line 158
    if-nez p4, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 159
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 160
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 162
    const/4 v5, 0x1

    return v5

    .line 165
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    if-nez v5, :cond_2

    .line 166
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 169
    :cond_2
    if-eqz p5, :cond_3

    .line 170
    const/4 v5, 0x1

    return v5

    .line 193
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/HardkeyActionHandler;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 194
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 195
    sget-object v5, Lcom/android/server/policy/HardkeyActionHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v5, 0x1

    return v5

    .line 199
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 201
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 202
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 203
    const/4 v5, 0x1

    return v5

    .line 206
    :cond_5
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 207
    const/4 v5, 0x1

    return v5

    .line 217
    .end local v2    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_6
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 218
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v0, :cond_b

    .line 219
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 220
    .local v3, "type":I
    const/16 v5, 0x7ed

    if-eq v3, v5, :cond_7

    .line 221
    const/16 v5, 0x7d9

    if-ne v3, v5, :cond_9

    .line 227
    :cond_7
    const/4 v5, 0x0

    return v5

    .line 217
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "type":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "type":I
    :cond_9
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_7

    .line 229
    sget-object v5, Lcom/android/server/policy/HardkeyActionHandler;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v4, v5

    .line 230
    .local v4, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_b

    .line 231
    sget-object v5, Lcom/android/server/policy/HardkeyActionHandler;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v5, v5, v1

    if-ne v3, v5, :cond_a

    .line 233
    const/4 v5, 0x1

    return v5

    .line 230
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1    # "i":I
    .end local v3    # "type":I
    .end local v4    # "typeCount":I
    :cond_b
    if-nez p4, :cond_c

    .line 240
    const/4 v5, 0x1

    return v5

    .line 243
    :cond_c
    if-nez p3, :cond_10

    .line 244
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 245
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, v5}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 246
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 247
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 248
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 249
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 250
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 268
    :cond_d
    :goto_2
    const/4 v5, 0x1

    return v5

    .line 251
    :cond_e
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_f

    .line 252
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    .line 251
    if-eqz v5, :cond_d

    .line 253
    :cond_f
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->preloadRecentApps()V

    goto :goto_2

    .line 255
    :cond_10
    if-eqz p6, :cond_d

    .line 256
    if-nez p7, :cond_d

    .line 257
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-nez v5, :cond_d

    .line 258
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result v5

    .line 256
    if-eqz v5, :cond_d

    .line 259
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 260
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_11

    .line 261
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 263
    :cond_11
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1bc3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 265
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_2

    .line 269
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    const/16 v5, 0x52

    if-ne p2, v5, :cond_20

    .line 270
    if-nez p4, :cond_19

    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 271
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 273
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 274
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 275
    const/4 v5, 0x1

    return v5

    .line 278
    :cond_13
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    if-nez v5, :cond_14

    .line 279
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 282
    :cond_14
    if-nez p5, :cond_15

    if-eqz p7, :cond_16

    .line 283
    :cond_15
    const/4 v5, 0x1

    return v5

    .line 286
    :cond_16
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 287
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 288
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 289
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 290
    const/4 v5, 0x1

    return v5

    .line 293
    :cond_17
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result v5

    if-nez v5, :cond_18

    .line 294
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 297
    :cond_18
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 298
    const/4 v5, 0x1

    return v5

    .line 301
    :cond_19
    if-nez p4, :cond_1a

    .line 302
    const/4 v5, 0x1

    return v5

    .line 305
    :cond_1a
    if-nez p3, :cond_1e

    .line 306
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 307
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, v5}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 308
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 309
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 310
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 311
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 312
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 331
    :cond_1b
    :goto_3
    const/4 v5, 0x1

    return v5

    .line 313
    :cond_1c
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 314
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    .line 313
    if-nez v5, :cond_1d

    .line 315
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result v5

    .line 313
    if-eqz v5, :cond_1b

    .line 316
    :cond_1d
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->preloadRecentApps()V

    goto :goto_3

    .line 318
    :cond_1e
    if-eqz p6, :cond_1b

    .line 319
    if-nez p7, :cond_1b

    .line 320
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 321
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result v5

    .line 319
    if-eqz v5, :cond_1b

    .line 322
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 323
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 324
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 326
    :cond_1f
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1bc3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 328
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_3

    .line 332
    :cond_20
    const/16 v5, 0xbb

    if-ne p2, v5, :cond_2e

    .line 333
    if-nez p4, :cond_27

    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 334
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 336
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 337
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 338
    const/4 v5, 0x1

    return v5

    .line 341
    :cond_21
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    if-nez v5, :cond_22

    .line 342
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 345
    :cond_22
    if-nez p5, :cond_23

    if-eqz p7, :cond_24

    .line 346
    :cond_23
    const/4 v5, 0x1

    return v5

    .line 349
    :cond_24
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 350
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 351
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 352
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 353
    const/4 v5, 0x1

    return v5

    .line 356
    :cond_25
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result v5

    if-nez v5, :cond_26

    .line 357
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 360
    :cond_26
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 361
    const/4 v5, 0x1

    return v5

    .line 364
    :cond_27
    if-nez p4, :cond_28

    .line 365
    const/4 v5, 0x1

    return v5

    .line 368
    :cond_28
    if-nez p3, :cond_2c

    .line 369
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 370
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, v5}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 371
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 372
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 373
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 374
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 375
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 394
    :cond_29
    :goto_4
    const/4 v5, 0x1

    return v5

    .line 376
    :cond_2a
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 377
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    .line 376
    if-nez v5, :cond_2b

    .line 378
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result v5

    .line 376
    if-eqz v5, :cond_29

    .line 379
    :cond_2b
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->preloadRecentApps()V

    goto :goto_4

    .line 381
    :cond_2c
    if-eqz p6, :cond_29

    .line 382
    if-nez p7, :cond_29

    .line 383
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-nez v5, :cond_29

    .line 384
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result v5

    .line 382
    if-eqz v5, :cond_29

    .line 385
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 386
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 387
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 389
    :cond_2d
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1bc3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 391
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_4

    .line 395
    :cond_2e
    const/16 v5, 0xdb

    if-ne p2, v5, :cond_3c

    .line 396
    if-nez p4, :cond_35

    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 397
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 399
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 400
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 401
    const/4 v5, 0x1

    return v5

    .line 404
    :cond_2f
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    if-nez v5, :cond_30

    .line 405
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 408
    :cond_30
    if-nez p5, :cond_31

    if-eqz p7, :cond_32

    .line 409
    :cond_31
    const/4 v5, 0x1

    return v5

    .line 412
    :cond_32
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 413
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 414
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 415
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 416
    const/4 v5, 0x1

    return v5

    .line 419
    :cond_33
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result v5

    if-nez v5, :cond_34

    .line 420
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 422
    :cond_34
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 423
    const/4 v5, 0x1

    return v5

    .line 426
    :cond_35
    if-nez p4, :cond_36

    .line 427
    const/4 v5, 0x1

    return v5

    .line 430
    :cond_36
    if-nez p3, :cond_3a

    .line 431
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 432
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, v5}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 433
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 434
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 435
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 436
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 437
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 456
    :cond_37
    :goto_5
    const/4 v5, 0x1

    return v5

    .line 438
    :cond_38
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_39

    .line 439
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    .line 438
    if-nez v5, :cond_39

    .line 440
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result v5

    .line 438
    if-eqz v5, :cond_37

    .line 441
    :cond_39
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->preloadRecentApps()V

    goto :goto_5

    .line 443
    :cond_3a
    if-eqz p6, :cond_37

    .line 444
    if-nez p7, :cond_37

    .line 445
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-nez v5, :cond_37

    .line 446
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result v5

    .line 444
    if-eqz v5, :cond_37

    .line 447
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 448
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 449
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 451
    :cond_3b
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1bc3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 452
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 453
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_5

    .line 457
    :cond_3c
    const/4 v5, 0x4

    if-ne p2, v5, :cond_4a

    .line 458
    if-nez p4, :cond_42

    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 459
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 461
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 462
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 463
    const/4 v5, 0x1

    return v5

    .line 466
    :cond_3d
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 467
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 470
    :cond_3e
    if-nez p5, :cond_3f

    if-eqz p7, :cond_40

    .line 471
    :cond_3f
    const/4 v5, 0x1

    return v5

    .line 474
    :cond_40
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 475
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 476
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 477
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 478
    const/4 v5, 0x1

    return v5

    .line 481
    :cond_41
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 482
    const/4 v5, 0x1

    return v5

    .line 485
    :cond_42
    if-nez p4, :cond_43

    .line 486
    const/4 v5, 0x1

    return v5

    .line 489
    :cond_43
    if-nez p3, :cond_47

    .line 490
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 491
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, v5}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 492
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 493
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 494
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 495
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 496
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 521
    :cond_44
    :goto_6
    const/4 v5, 0x1

    return v5

    .line 497
    :cond_45
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_46

    .line 498
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result v5

    .line 497
    if-eqz v5, :cond_44

    .line 499
    :cond_46
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->preloadRecentApps()V

    goto :goto_6

    .line 501
    :cond_47
    if-eqz p6, :cond_44

    .line 502
    if-nez p7, :cond_44

    .line 503
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result v5

    if-nez v5, :cond_44

    .line 504
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 505
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->isLockTaskOn()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 506
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->turnOffLockTask()V

    .line 507
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1bc3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 508
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_6

    .line 510
    :cond_48
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 511
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result v5

    if-nez v5, :cond_49

    .line 512
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 514
    :cond_49
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v5}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 515
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1bc3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    iget-object v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_6

    .line 523
    :cond_4a
    const/4 v5, 0x0

    return v5
.end method

.method public isHwKeysDisabled()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHwKeysDisabled:Z

    return v0
.end method
