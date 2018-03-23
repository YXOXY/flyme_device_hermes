.class public Lcom/android/internal/util/rr/WeatherControllerImpl;
.super Ljava/lang/Object;
.source "WeatherControllerImpl.java"

# interfaces
.implements Lcom/android/internal/util/rr/WeatherController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/rr/WeatherControllerImpl$Receiver;
    }
.end annotation


# static fields
.field public static final ACTION_FORCE_WEATHER_UPDATE:Ljava/lang/String; = "com.cyanogenmod.lockclock.action.FORCE_WEATHER_UPDATE"

.field public static final ACTION_UPDATE_FINISHED:Ljava/lang/String; = "com.cyanogenmod.lockclock.action.WEATHER_UPDATE_FINISHED"

.field public static final COMPONENT_WEATHER_FORECAST:Landroid/content/ComponentName;

.field public static final CURRENT_WEATHER_URI:Landroid/net/Uri;

.field private static final DEBUG:Z

.field public static final EXTRA_UPDATE_CANCELLED:Ljava/lang/String; = "update_cancelled"

.field public static final LOCK_CLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.cyanogenmod.lockclock"

.field private static final TAG:Ljava/lang/String;

.field private static final WEATHER_ICON_COLORED:I = 0x1

.field private static final WEATHER_ICON_MONOCHROME:I

.field public static final WEATHER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/rr/WeatherController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/internal/util/rr/WeatherControllerImpl$Receiver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/util/rr/WeatherControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/rr/WeatherControllerImpl;->fireCallback()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/util/rr/WeatherControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/rr/WeatherControllerImpl;->queryWeather()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 36
    const-class v0, Lcom/android/internal/util/rr/WeatherController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->TAG:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->DEBUG:Z

    .line 39
    new-instance v0, Landroid/content/ComponentName;

    .line 40
    const-string/jumbo v1, "com.cyanogenmod.lockclock"

    const-string/jumbo v2, "com.cyanogenmod.lockclock.weather.ForecastActivity"

    .line 39
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->COMPONENT_WEATHER_FORECAST:Landroid/content/ComponentName;

    .line 47
    const-string/jumbo v0, "content://com.cyanogenmod.lockclock.weather.provider/weather/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->CURRENT_WEATHER_URI:Landroid/net/Uri;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "city"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "condition"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "condition_code"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "temperature"

    aput-object v1, v0, v3

    .line 48
    sput-object v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->WEATHER_PROJECTION:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 60
    new-instance v1, Lcom/android/internal/util/rr/WeatherControllerImpl$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/rr/WeatherControllerImpl$Receiver;-><init>(Lcom/android/internal/util/rr/WeatherControllerImpl;Lcom/android/internal/util/rr/WeatherControllerImpl$Receiver;)V

    iput-object v1, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mReceiver:Lcom/android/internal/util/rr/WeatherControllerImpl$Receiver;

    .line 63
    new-instance v1, Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    invoke-direct {v1}, Lcom/android/internal/util/rr/WeatherController$WeatherInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    .line 66
    iput-object p1, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mContext:Landroid/content/Context;

    .line 67
    iget-object v1, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lcom/android/internal/util/rr/WeatherControllerImpl;->queryWeather()V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.cyanogenmod.lockclock.action.WEATHER_UPDATE_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mReceiver:Lcom/android/internal/util/rr/WeatherControllerImpl$Receiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method private fireCallback()V
    .locals 3

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/rr/WeatherController$Callback;

    .line 137
    .local v0, "callback":Lcom/android/internal/util/rr/WeatherController$Callback;
    iget-object v2, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    invoke-interface {v0, v2}, Lcom/android/internal/util/rr/WeatherController$Callback;->onWeatherChanged(Lcom/android/internal/util/rr/WeatherController$WeatherInfo;)V

    goto :goto_0

    .line 135
    .end local v0    # "callback":Lcom/android/internal/util/rr/WeatherController$Callback;
    :cond_0
    return-void
.end method

.method private getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "conditionCode"    # I

    .prologue
    const/4 v6, 0x0

    .line 88
    iget-object v4, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 89
    const-string/jumbo v5, "lock_screen_weather_condition_icon"

    .line 88
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 92
    .local v2, "iconNameValue":I
    if-nez v2, :cond_0

    .line 93
    const-string/jumbo v1, "weather_"

    .line 102
    .local v1, "iconName":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.cyanogenmod.lockclock"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 103
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    const-string/jumbo v5, "drawable"

    const-string/jumbo v6, "com.cyanogenmod.lockclock"

    .line 103
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 94
    .end local v1    # "iconName":Ljava/lang/String;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 95
    const-string/jumbo v1, "weather_color_"

    .restart local v1    # "iconName":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v1    # "iconName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "weather_vclouds_"

    .restart local v1    # "iconName":Ljava/lang/String;
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    return-object v4
.end method

.method private queryWeather()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/rr/WeatherControllerImpl;->CURRENT_WEATHER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/util/rr/WeatherControllerImpl;->WEATHER_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 119
    sget-boolean v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cursor was null for temperature, forcing weather update"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.cyanogenmod.lockclock.action.FORCE_WEATHER_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    :goto_0
    return-void

    .line 123
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/rr/WeatherController$WeatherInfo;->city:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/rr/WeatherController$WeatherInfo;->condition:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/util/rr/WeatherController$WeatherInfo;->conditionCode:I

    .line 127
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    iget-object v1, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    iget v1, v1, Lcom/android/internal/util/rr/WeatherController$WeatherInfo;->conditionCode:I

    invoke-direct {p0, v1}, Lcom/android/internal/util/rr/WeatherControllerImpl;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/rr/WeatherController$WeatherInfo;->conditionDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/rr/WeatherController$WeatherInfo;->temp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/android/internal/util/rr/WeatherController$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/util/rr/WeatherController$Callback;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 76
    :cond_1
    sget-boolean v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    invoke-interface {p1, v0}, Lcom/android/internal/util/rr/WeatherController$Callback;->onWeatherChanged(Lcom/android/internal/util/rr/WeatherController$WeatherInfo;)V

    .line 74
    return-void
.end method

.method public getWeatherInfo()Lcom/android/internal/util/rr/WeatherController$WeatherInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/rr/WeatherController$WeatherInfo;

    return-object v0
.end method

.method public removeCallback(Lcom/android/internal/util/rr/WeatherController$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/util/rr/WeatherController$Callback;

    .prologue
    .line 82
    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    sget-boolean v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/util/rr/WeatherControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/rr/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public updateWeather()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/internal/util/rr/WeatherControllerImpl;->queryWeather()V

    .line 159
    invoke-direct {p0}, Lcom/android/internal/util/rr/WeatherControllerImpl;->fireCallback()V

    .line 157
    return-void
.end method
