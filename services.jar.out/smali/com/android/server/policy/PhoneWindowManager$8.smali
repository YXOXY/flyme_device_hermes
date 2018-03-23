.class Lcom/android/server/policy/PhoneWindowManager$8;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1837
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/policy/PhoneWindowManager;->-wrap2(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1838
    return-void

    .line 1841
    :cond_0
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1842
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.launcher"

    .line 1843
    .local v4, "defaultHomePackage":Ljava/lang/String;
    const-string/jumbo v11, "android.intent.category.HOME"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1844
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1845
    .local v8, "res":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_1

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v12, "android"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1848
    :cond_1
    :goto_0
    const/4 v9, 0x0

    .line 1849
    .local v9, "targetKilled":Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1850
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1851
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "appInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1852
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 1855
    .local v10, "uid":I
    const/16 v11, 0x2710

    if-lt v10, v11, :cond_6

    const/16 v11, 0x4e1f

    if-gt v10, v11, :cond_6

    .line 1856
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x64

    if-ne v11, v12, :cond_6

    .line 1857
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v11

    if-lez v11, :cond_8

    .line 1858
    iget-object v12, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_1
    if-ge v11, v13, :cond_6

    aget-object v6, v12, v11

    .line 1859
    .local v6, "pkg":Ljava/lang/String;
    const-string/jumbo v14, "com.android.systemui"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1858
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1846
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v9    # "targetKilled":Z
    .end local v10    # "uid":I
    :cond_4
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 1860
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v9    # "targetKilled":Z
    .restart local v10    # "uid":I
    :cond_5
    const/4 v11, -0x2

    invoke-interface {v0, v6, v11}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1861
    const/4 v9, 0x1

    .line 1870
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_6
    :goto_2
    if-eqz v9, :cond_2

    .line 1871
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1872
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v12, 0x104001a

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1836
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "defaultHomePackage":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "res":Landroid/content/pm/ResolveInfo;
    .end local v9    # "targetKilled":Z
    .end local v10    # "uid":I
    :cond_7
    :goto_3
    return-void

    .line 1866
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v4    # "defaultHomePackage":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v8    # "res":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "targetKilled":Z
    .restart local v10    # "uid":I
    :cond_8
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1867
    const/4 v9, 0x1

    goto :goto_2

    .line 1876
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "defaultHomePackage":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "res":Landroid/content/pm/ResolveInfo;
    .end local v9    # "targetKilled":Z
    .end local v10    # "uid":I
    :catch_0
    move-exception v7

    .local v7, "remoteException":Landroid/os/RemoteException;
    goto :goto_3
.end method
