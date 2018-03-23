.class Lcom/android/server/wm/WindowAnimator$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowAnimator;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowAnimator;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$SettingsObserver;->this$0:Lcom/android/server/wm/WindowAnimator;

    .line 1039
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1038
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1043
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1044
    const-string/jumbo v1, "lock_screen_blur_enabled"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1045
    const/4 v2, 0x0

    .line 1043
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1046
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowAnimator$SettingsObserver;->onChange(Z)V

    .line 1042
    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1051
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator$SettingsObserver;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator$SettingsObserver;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1052
    const-string/jumbo v4, "lock_screen_blur_enabled"

    .line 1051
    invoke-static {v3, v4, v1}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/server/wm/WindowAnimator;->-set0(Lcom/android/server/wm/WindowAnimator;Z)Z

    .line 1050
    return-void

    :cond_0
    move v0, v1

    .line 1051
    goto :goto_0
.end method
