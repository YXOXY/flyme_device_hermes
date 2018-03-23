.class public Lcom/android/internal/util/rr/FontHelper;
.super Ljava/lang/Object;
.source "FontHelper.java"


# static fields
.field public static final BLACK:Landroid/graphics/Typeface;

.field public static final BLACK_ITALIC:Landroid/graphics/Typeface;

.field public static final BOLD:Landroid/graphics/Typeface;

.field public static final BOLD_ITALIC:Landroid/graphics/Typeface;

.field public static final COMINGSOON:Landroid/graphics/Typeface;

.field public static final CONDENSED:Landroid/graphics/Typeface;

.field public static final CONDENSED_BOLD:Landroid/graphics/Typeface;

.field public static final CONDENSED_BOLD_ITALIC:Landroid/graphics/Typeface;

.field public static final CONDENSED_ITALIC:Landroid/graphics/Typeface;

.field public static final CONDENSED_LIGHT:Landroid/graphics/Typeface;

.field public static final CONDENSED_LIGHT_ITALIC:Landroid/graphics/Typeface;

.field public static final DANCINGSCRIPT:Landroid/graphics/Typeface;

.field public static final DANCINGSCRIPT_BOLD:Landroid/graphics/Typeface;

.field public static final FONT_BLACK:I = 0x10

.field public static final FONT_BLACK_ITALIC:I = 0x11

.field public static final FONT_BOLD:I = 0x2

.field public static final FONT_BOLD_ITALIC:I = 0x3

.field public static final FONT_COMINGSOON:I = 0x14

.field public static final FONT_CONDENSED:I = 0x8

.field public static final FONT_CONDENSED_BOLD:I = 0xc

.field public static final FONT_CONDENSED_BOLD_ITALIC:I = 0xd

.field public static final FONT_CONDENSED_ITALIC:I = 0x9

.field public static final FONT_CONDENSED_LIGHT:I = 0xa

.field public static final FONT_CONDENSED_LIGHT_ITALIC:I = 0xb

.field public static final FONT_DANCINGSCRIPT:I = 0x12

.field public static final FONT_DANCINGSCRIPT_BOLD:I = 0x13

.field public static final FONT_ITALIC:I = 0x1

.field public static final FONT_LIGHT:I = 0x4

.field public static final FONT_LIGHT_ITALIC:I = 0x5

.field public static final FONT_MEDIUM:I = 0xe

.field public static final FONT_MEDIUM_ITALIC:I = 0xf

.field public static final FONT_NORMAL:I = 0x0

.field public static final FONT_NOTOSERIF:I = 0x15

.field public static final FONT_NOTOSERIF_BOLD:I = 0x17

.field public static final FONT_NOTOSERIF_BOLD_ITALIC:I = 0x18

.field public static final FONT_NOTOSERIF_ITALIC:I = 0x16

.field public static final FONT_THIN:I = 0x6

.field public static final FONT_THIN_ITALIC:I = 0x7

.field public static final ITALIC:Landroid/graphics/Typeface;

.field public static final LIGHT:Landroid/graphics/Typeface;

.field public static final LIGHT_ITALIC:Landroid/graphics/Typeface;

.field public static final MEDIUM:Landroid/graphics/Typeface;

.field public static final MEDIUM_ITALIC:Landroid/graphics/Typeface;

.field public static final NORMAL:Landroid/graphics/Typeface;

.field public static final NOTOSERIF:Landroid/graphics/Typeface;

.field public static final NOTOSERIF_BOLD:Landroid/graphics/Typeface;

.field public static final NOTOSERIF_BOLD_ITALIC:Landroid/graphics/Typeface;

.field public static final NOTOSERIF_ITALIC:Landroid/graphics/Typeface;

.field public static final THIN:Landroid/graphics/Typeface;

.field public static final THIN_ITALIC:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 49
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->NORMAL:Landroid/graphics/Typeface;

    .line 50
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->ITALIC:Landroid/graphics/Typeface;

    .line 51
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->BOLD:Landroid/graphics/Typeface;

    .line 52
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 53
    const-string/jumbo v0, "sans-serif-light"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->LIGHT:Landroid/graphics/Typeface;

    .line 54
    const-string/jumbo v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->LIGHT_ITALIC:Landroid/graphics/Typeface;

    .line 55
    const-string/jumbo v0, "sans-serif-thin"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->THIN:Landroid/graphics/Typeface;

    .line 56
    const-string/jumbo v0, "sans-serif-thin"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->THIN_ITALIC:Landroid/graphics/Typeface;

    .line 57
    const-string/jumbo v0, "sans-serif-condensed"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->CONDENSED:Landroid/graphics/Typeface;

    .line 58
    const-string/jumbo v0, "sans-serif-condensed"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->CONDENSED_ITALIC:Landroid/graphics/Typeface;

    .line 59
    const-string/jumbo v0, "sans-serif-condensed-light"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->CONDENSED_LIGHT:Landroid/graphics/Typeface;

    .line 60
    const-string/jumbo v0, "sans-serif-condensed-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->CONDENSED_LIGHT_ITALIC:Landroid/graphics/Typeface;

    .line 61
    const-string/jumbo v0, "sans-serif-condensed"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->CONDENSED_BOLD:Landroid/graphics/Typeface;

    .line 62
    const-string/jumbo v0, "sans-serif-condensed"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->CONDENSED_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 63
    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->MEDIUM:Landroid/graphics/Typeface;

    .line 64
    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->MEDIUM_ITALIC:Landroid/graphics/Typeface;

    .line 65
    const-string/jumbo v0, "sans-serif-black"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->BLACK:Landroid/graphics/Typeface;

    .line 66
    const-string/jumbo v0, "sans-serif-black"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->BLACK_ITALIC:Landroid/graphics/Typeface;

    .line 67
    const-string/jumbo v0, "cursive"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->DANCINGSCRIPT:Landroid/graphics/Typeface;

    .line 68
    const-string/jumbo v0, "cursive"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->DANCINGSCRIPT_BOLD:Landroid/graphics/Typeface;

    .line 69
    const-string/jumbo v0, "casual"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->COMINGSOON:Landroid/graphics/Typeface;

    .line 70
    const-string/jumbo v0, "serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->NOTOSERIF:Landroid/graphics/Typeface;

    .line 71
    const-string/jumbo v0, "serif"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->NOTOSERIF_ITALIC:Landroid/graphics/Typeface;

    .line 72
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->NOTOSERIF_BOLD:Landroid/graphics/Typeface;

    .line 73
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/FontHelper;->NOTOSERIF_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
