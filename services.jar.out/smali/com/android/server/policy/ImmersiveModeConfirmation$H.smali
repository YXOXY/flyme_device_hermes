.class final Lcom/android/server/policy/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Lcom/android/server/policy/ImmersiveModeConfirmation$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-get1(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "disable_immersive_message"

    const/4 v2, 0x0

    .line 382
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 383
    const/4 v1, 0x1

    .line 382
    if-eq v0, v1, :cond_0

    .line 384
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 386
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-wrap1(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    goto :goto_0

    .line 389
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
