.class final Landroid/hardware/SystemSensorManager$SensorEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventQueue"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mSensorsEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 644
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    .line 649
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    .line 647
    return-void
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 654
    new-instance v0, Landroid/hardware/SensorEvent;

    .line 655
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-get4(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    .line 654
    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 656
    .local v0, "t":Landroid/hardware/SensorEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 657
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 653
    return-void

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected dispatchAdditionalInfoEvent(III[F[I)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "serial"    # I
    .param p4, "floatValues"    # [F
    .param p5, "intValues"    # [I

    .prologue
    .line 724
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v2, v2, Landroid/hardware/SensorEventCallback;

    if-eqz v2, :cond_1

    .line 725
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 726
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-nez v1, :cond_0

    .line 728
    return-void

    .line 731
    :cond_0
    new-instance v0, Landroid/hardware/SensorAdditionalInfo;

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    .line 732
    .local v0, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v2, Landroid/hardware/SensorEventCallback;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorEventCallback;->onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V

    .line 723
    .end local v0    # "info":Landroid/hardware/SensorAdditionalInfo;
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    return-void
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 708
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v1, v1, Landroid/hardware/SensorEventListener2;

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 710
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 712
    return-void

    .line 714
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v1, Landroid/hardware/SensorEventListener2;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener2;->onFlushCompleted(Landroid/hardware/Sensor;)V

    .line 716
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "inAccuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v5, 0x0

    .line 673
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->-get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 674
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-nez v1, :cond_0

    .line 676
    return-void

    .line 679
    :cond_0
    const/4 v2, 0x0

    .line 680
    .local v2, "t":Landroid/hardware/SensorEvent;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v4

    .line 681
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "t":Landroid/hardware/SensorEvent;
    check-cast v2, Landroid/hardware/SensorEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "t":Landroid/hardware/SensorEvent;
    monitor-exit v4

    .line 684
    if-nez v2, :cond_1

    .line 687
    return-void

    .line 680
    .end local v2    # "t":Landroid/hardware/SensorEvent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 690
    .restart local v2    # "t":Landroid/hardware/SensorEvent;
    :cond_1
    iget-object v3, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    invoke-static {p2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 691
    iput-wide p4, v2, Landroid/hardware/SensorEvent;->timestamp:J

    .line 692
    iput p3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    .line 693
    iput-object v1, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 696
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 697
    .local v0, "accuracy":I
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v3, :cond_2

    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v0, v3, :cond_2

    .line 698
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 699
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v3, v4, v5}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 701
    :cond_2
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v3, v2}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 672
    return-void
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 663
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 664
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 662
    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
