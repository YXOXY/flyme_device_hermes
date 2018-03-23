.class Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field private mScreenshotFullscreen:I

.field private mScreenshotSelectedRegion:I

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotFullscreen:I

    .line 956
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotSelectedRegion:I

    .line 954
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 970
    const-string/jumbo v1, "screenshot_type"

    const/4 v2, 0x0

    .line 969
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 970
    const/4 v1, 0x1

    .line 969
    if-ne v0, v1, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotSelectedRegion:I

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;I)V

    .line 968
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotFullscreen:I

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;I)V

    goto :goto_0
.end method

.method public setScreenshotType(I)V
    .locals 3
    .param p1, "screenshotType"    # I

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 960
    const-string/jumbo v1, "screenshot_type"

    const/4 v2, 0x0

    .line 959
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 960
    const/4 v1, 0x1

    .line 959
    if-ne v0, v1, :cond_0

    .line 961
    iput p1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotSelectedRegion:I

    .line 958
    :goto_0
    return-void

    .line 963
    :cond_0
    iput p1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotFullscreen:I

    goto :goto_0
.end method
