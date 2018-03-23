.class public Lcom/android/internal/util/rr/TickerColorHelper;
.super Ljava/lang/Object;
.source "TickerColorHelper.java"


# static fields
.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTickerIconColor(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultColor"    # I

    .prologue
    const/4 v3, -0x1

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 39
    const-string/jumbo v2, "status_bar_ticker_icon_color"

    .line 38
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, "color":I
    if-ne v0, v3, :cond_0

    .line 42
    return p1

    .line 44
    :cond_0
    return v0
.end method

.method public static getTickerIconColorList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultColor"    # I

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/android/internal/util/rr/TickerColorHelper;->getTickerIconColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getTickerTextColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "status_bar_ticker_text_color"

    const/4 v2, -0x1

    .line 29
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
