.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 4652
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4943
    if-eqz p1, :cond_0

    .line 4945
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4946
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4942
    :cond_0
    :goto_0
    return-void

    .line 4947
    :catch_0
    move-exception v0

    .line 4948
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onLoadSoundEffects()Z
    .locals 18

    .prologue
    .line 4725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 4726
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get42(Lcom/android/server/audio/AudioService;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 4727
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "onLoadSoundEffects() called before boot complete"

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4728
    const/4 v13, 0x0

    monitor-exit v14

    return v13

    .line 4731
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    if-eqz v13, :cond_1

    .line 4732
    const/4 v13, 0x1

    monitor-exit v14

    return v13

    .line 4735
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;)V

    .line 4737
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v15, Landroid/media/SoundPool$Builder;

    invoke-direct {v15}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 4738
    const/16 v16, 0x4

    .line 4737
    invoke-virtual/range {v15 .. v16}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v15

    .line 4739
    new-instance v16, Landroid/media/AudioAttributes$Builder;

    invoke-direct/range {v16 .. v16}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4740
    const/16 v17, 0xd

    .line 4739
    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v16

    .line 4741
    const/16 v17, 0x4

    .line 4739
    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v16

    .line 4737
    invoke-virtual/range {v15 .. v16}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4744
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set13(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 4745
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v15, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4746
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 4747
    const/4 v2, 0x3

    .local v2, "attempts":I
    move v3, v2

    .line 4748
    .end local v2    # "attempts":I
    .local v3, "attempts":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    if-nez v13, :cond_2

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    if-lez v3, :cond_3

    .line 4751
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v13

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move v3, v2

    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    goto :goto_0

    :cond_2
    move v2, v3

    .line 4757
    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v13

    if-nez v13, :cond_5

    .line 4758
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 4760
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 4761
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4763
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4764
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/SoundPool;->release()V

    .line 4765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4766
    const/4 v13, 0x0

    monitor-exit v14

    return v13

    .line 4752
    :catch_0
    move-exception v4

    .line 4753
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "Interrupted while waiting sound pool listener thread."

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 4725
    .end local v2    # "attempts":I
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 4774
    .restart local v2    # "attempts":I
    :cond_5
    :try_start_6
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v9, v13, [I

    .line 4775
    .local v9, "poolId":[I
    const/4 v6, 0x0

    .local v6, "fileIdx":I
    :goto_2
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_6

    .line 4776
    const/4 v13, -0x1

    aput v13, v9, v6

    .line 4775
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4784
    :cond_6
    const/4 v8, 0x0

    .line 4785
    .local v8, "numSamples":I
    const/4 v5, 0x0

    .local v5, "effect":I
    :goto_3
    const/16 v13, 0xa

    if-ge v5, v13, :cond_b

    .line 4787
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x1

    aget v13, v13, v15

    if-nez v13, :cond_7

    .line 4785
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4790
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x0

    aget v13, v13, v15

    aget v13, v9, v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_a

    .line 4791
    const-string/jumbo v7, ""

    .line 4792
    .local v7, "filePath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/data/system/theme/audio/ui/"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4793
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v16

    aget-object v16, v16, v5

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 4792
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4794
    .local v12, "theme_file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 4795
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 4801
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v10

    .line 4802
    .local v10, "sampleId":I
    if-gtz v10, :cond_9

    .line 4803
    const-string/jumbo v13, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Soundpool could not load file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4797
    .end local v10    # "sampleId":I
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4798
    const-string/jumbo v15, "/media/audio/ui/"

    .line 4797
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4799
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v16

    aget-object v16, v16, v5

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 4797
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 4805
    .restart local v10    # "sampleId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x1

    aput v10, v13, v15

    .line 4806
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x0

    aget v13, v13, v15

    aput v10, v9, v13

    .line 4807
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 4810
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v10    # "sampleId":I
    .end local v12    # "theme_file":Ljava/io/File;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    .line 4811
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v15}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v15

    aget-object v15, v15, v5

    const/16 v16, 0x0

    aget v15, v15, v16

    aget v15, v9, v15

    .line 4810
    const/16 v16, 0x1

    aput v15, v13, v16

    goto/16 :goto_4

    .line 4815
    :cond_b
    if-lez v8, :cond_10

    .line 4816
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4818
    const/4 v2, 0x3

    .line 4819
    const/4 v11, 0x1

    .local v11, "status":I
    move v3, v2

    .line 4820
    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    :goto_6
    const/4 v13, 0x1

    if-ne v11, v13, :cond_c

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    if-lez v3, :cond_d

    .line 4822
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v13

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 4823
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v11

    :goto_7
    move v3, v2

    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    goto :goto_6

    :cond_c
    move v2, v3

    .line 4832
    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    :cond_d
    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 4833
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 4834
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4836
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4837
    if-eqz v11, :cond_12

    .line 4838
    const-string/jumbo v13, "AudioService"

    .line 4839
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onLoadSoundEffects(), Error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " while loading samples"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4838
    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    const/4 v5, 0x0

    :goto_9
    const/16 v13, 0xa

    if-ge v5, v13, :cond_11

    .line 4841
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x1

    aget v13, v13, v15

    if-lez v13, :cond_f

    .line 4842
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, -0x1

    const/16 v16, 0x1

    aput v15, v13, v16

    .line 4840
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 4824
    :catch_1
    move-exception v4

    .line 4825
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "Interrupted while waiting sound pool callback."

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4829
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "status":I
    :cond_10
    const/4 v11, -0x1

    .restart local v11    # "status":I
    goto :goto_8

    .line 4846
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/SoundPool;->release()V

    .line 4847
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_12
    monitor-exit v14

    .line 4850
    if-nez v11, :cond_13

    const/4 v13, 0x1

    :goto_a
    return v13

    :cond_13
    const/4 v13, 0x0

    goto :goto_a
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4960
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4961
    const-string/jumbo v1, "audio_safe_volume_state"

    .line 4960
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4959
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 16
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 4885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 4887
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 4889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v15

    .line 4890
    return-void

    .line 4894
    :cond_0
    if-gez p2, :cond_1

    .line 4895
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :try_start_1
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get46()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v4, v2

    .line 4900
    .local v4, "volFloat":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_2

    .line 4901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v5, 0x1

    aget v3, v3, v5

    .line 4902
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v5, v4

    .line 4901
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v15

    .line 4884
    return-void

    .line 4897
    .end local v4    # "volFloat":F
    :cond_1
    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v4, v2, v3

    .restart local v4    # "volFloat":F
    goto :goto_0

    .line 4904
    :cond_2
    :try_start_2
    new-instance v13, Landroid/media/MediaPlayer;

    invoke-direct {v13}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4906
    .local v13, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_3
    const-string/jumbo v12, ""

    .line 4907
    .local v12, "filePath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/system/theme/audio/ui/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4908
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, p1

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4907
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4909
    .local v14, "theme_file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4910
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 4915
    :goto_2
    invoke-virtual {v13, v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4916
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4917
    invoke-virtual {v13}, Landroid/media/MediaPlayer;->prepare()V

    .line 4918
    invoke-virtual {v13, v4}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 4919
    new-instance v2, Lcom/android/server/audio/AudioService$AudioHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v13, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4924
    new-instance v2, Lcom/android/server/audio/AudioService$AudioHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v13, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4930
    invoke-virtual {v13}, Landroid/media/MediaPlayer;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4931
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v14    # "theme_file":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 4932
    .local v9, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer IOException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 4885
    .end local v4    # "volFloat":F
    .end local v9    # "ex":Ljava/io/IOException;
    .end local v13    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    monitor-exit v15

    throw v2

    .line 4912
    .restart local v4    # "volFloat":F
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v13    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v14    # "theme_file":Ljava/io/File;
    :cond_3
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/media/audio/ui/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4913
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, p1

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4912
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    goto :goto_2

    .line 4935
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v14    # "theme_file":Ljava/io/File;
    :catch_1
    move-exception v11

    .line 4936
    .local v11, "ex":Ljava/lang/IllegalStateException;
    :try_start_6
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer IllegalStateException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4933
    .end local v11    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v10

    .line 4934
    .local v10, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    .prologue
    .line 4859
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4860
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 4861
    return-void

    .line 4864
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 4865
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_0
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4866
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 4865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4869
    :cond_1
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    .line 4870
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 4869
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4873
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 4874
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 4875
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, -0x1

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 4876
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 4859
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4879
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 4880
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 4858
    return-void
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 4716
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4717
    return-void

    .line 4719
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4715
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4703
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4704
    return-void

    .line 4706
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 4707
    return-void

    .line 4709
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4710
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 4711
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    .line 4712
    const/4 v3, -0x2

    .line 4709
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4702
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 4690
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4693
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 4694
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4695
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4696
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 4697
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4694
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4687
    :cond_1
    return-void
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 10
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    const/4 v4, 0x0

    .line 4656
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 4658
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4661
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 4662
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_0
    if-ltz v9, :cond_2

    .line 4663
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_1

    .line 4664
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 4667
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    .line 4668
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4669
    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_0

    .line 4670
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4672
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4662
    .end local v8    # "streamDevice":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    .line 4677
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    .line 4678
    const/4 v1, 0x1

    .line 4679
    const/4 v2, 0x2

    .line 4683
    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    .line 4677
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap36(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4654
    return-void

    .line 4656
    .end local v7    # "numStreamTypes":I
    .end local v9    # "streamType":I
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setForceUse(II)V
    .locals 2
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 4954
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 4955
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioService;->-wrap38(Lcom/android/server/audio/AudioService;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4953
    return-void

    .line 4954
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 4967
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 4966
    :cond_0
    :goto_0
    return-void

    .line 4970
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4974
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    goto :goto_0

    .line 4978
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4984
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_0

    .line 4988
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    goto :goto_0

    .line 4992
    :sswitch_5
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto :goto_0

    .line 4998
    :sswitch_6
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v9

    .line 4999
    .local v9, "loaded":Z
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5000
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 5001
    .local v12, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v12

    .line 5002
    if-eqz v9, :cond_1

    :goto_1
    :try_start_0
    iput v1, v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 5003
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    goto :goto_0

    :cond_1
    move v1, v2

    .line 5002
    goto :goto_1

    .line 5001
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .line 5009
    .end local v9    # "loaded":Z
    .end local v12    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5010
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Stream muted, skip playback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5012
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto :goto_0

    .line 5018
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 5019
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap19(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    goto :goto_0

    .line 5018
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 5025
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_0

    .line 5029
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap33(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 5034
    :sswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    .line 5035
    .local v7, "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iget v2, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    .line 5036
    iget-object v3, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    .line 5035
    invoke-static/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->-wrap28(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5037
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 5042
    .end local v7    # "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    :sswitch_c
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap27(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5043
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 5047
    :sswitch_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap26(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5048
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 5052
    :sswitch_e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 5053
    .local v6, "N":I
    if-lez v6, :cond_3

    .line 5055
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 5056
    :try_start_2
    new-instance v13, Landroid/media/AudioRoutesInfo;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v13, v0}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .local v13, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v1

    .line 5058
    :goto_2
    if-lez v6, :cond_3

    .line 5059
    add-int/lit8 v6, v6, -0x1

    .line 5060
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/media/IAudioRoutesObserver;

    .line 5062
    .local v11, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_3
    invoke-interface {v11, v13}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 5063
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 5055
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v11    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v13    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 5067
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5068
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-wrap20(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 5073
    .end local v6    # "N":I
    :sswitch_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap22(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5077
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap25(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 5082
    :sswitch_11
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_4

    move v1, v0

    .line 5083
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5082
    invoke-static {v2, v1, v0}, Lcom/android/server/audio/AudioService;->-wrap23(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 5086
    :sswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_0

    .line 5090
    :sswitch_13
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-wrap21(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 5094
    :sswitch_14
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    goto/16 :goto_0

    .line 5098
    :sswitch_15
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    goto/16 :goto_0

    .line 5102
    :sswitch_16
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 5103
    .local v10, "musicActiveMs":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5104
    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    .line 5105
    const/4 v2, -0x2

    .line 5103
    invoke-static {v0, v1, v10, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 5109
    .end local v10    # "musicActiveMs":I
    :sswitch_17
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-wrap29(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_0

    .line 5113
    :sswitch_18
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap24(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 4967
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_6
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_1
        0xc -> :sswitch_e
        0xd -> :sswitch_9
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_5
        0x15 -> :sswitch_14
        0x16 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_15
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
    .end sparse-switch
.end method
