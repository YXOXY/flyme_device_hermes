.class public Lcom/android/internal/util/cm/PowerMenuConstants;
.super Ljava/lang/Object;
.source "PowerMenuConstants.java"


# static fields
.field private static ALL_ACTIONS:[Ljava/lang/String; = null

.field public static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field public static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field public static final GLOBAL_ACTION_KEY_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field public static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field public static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field public static final GLOBAL_ACTION_KEY_SCREENRECORD:Ljava/lang/String; = "screenrecord"

.field public static final GLOBAL_ACTION_KEY_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field public static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field public static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field public static final GLOBAL_ACTION_KEY_TORCH:Ljava/lang/String; = "torch"

.field public static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field public static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "power"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "restart"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "screenshot"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "screenrecord"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "airplane"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "torch"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "users"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "settings"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "lockdown"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "bugreport"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "voiceassist"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "assist"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "silent"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "emergency"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 36
    sput-object v0, Lcom/android/internal/util/cm/PowerMenuConstants;->ALL_ACTIONS:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/util/cm/PowerMenuConstants;->ALL_ACTIONS:[Ljava/lang/String;

    return-object v0
.end method
