.class Lcom/android/server/lights/LightsService$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v2, v3

    .line 220
    .local v0, "l":Lcom/android/server/lights/LightsService$LightImpl;
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-wrap0(Lcom/android/server/lights/LightsService;)I

    move-result v1

    .line 223
    .local v1, "vrDisplayMode":I
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get2(Lcom/android/server/lights/LightsService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/android/server/lights/LightsService$LightImpl;->enableLowPersistence()V

    .line 228
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->-set0(Lcom/android/server/lights/LightsService;Z)Z

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get2(Lcom/android/server/lights/LightsService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/android/server/lights/LightsService$LightImpl;->disableLowPersistence()V

    .line 234
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->-set0(Lcom/android/server/lights/LightsService;Z)Z

    goto :goto_0
.end method
