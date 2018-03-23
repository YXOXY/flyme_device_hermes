.class public Landroid/preference/CustomSeekBarPreference;
.super Landroid/preference/Preference;
.source "CustomSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final ANDROIDNS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final DEFAULT_VALUE:I = 0x32


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentValue:I

.field private mDefaultValue:I

.field private mInterval:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStatusText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUnitsLeft:Ljava/lang/String;

.field private mUnitsRight:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0}, Landroid/preference/CustomSeekBarPreference;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Landroid/preference/CustomSeekBarPreference;->mMaxValue:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/CustomSeekBarPreference;->mMinValue:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Landroid/preference/CustomSeekBarPreference;->mInterval:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/CustomSeekBarPreference;->mDefaultValue:I

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/CustomSeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-virtual {p0}, Landroid/preference/CustomSeekBarPreference;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Landroid/preference/CustomSeekBarPreference;->mMaxValue:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/CustomSeekBarPreference;->mMinValue:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Landroid/preference/CustomSeekBarPreference;->mInterval:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/CustomSeekBarPreference;->mDefaultValue:I

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/CustomSeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 82
    move-object v0, p4

    .line 84
    :cond_0
    return-object v0
.end method

.method private initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p2}, Landroid/preference/CustomSeekBarPreference;->setValuesFromXml(Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 45
    iget-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/CustomSeekBarPreference;->mMaxValue:I

    iget v2, p0, Landroid/preference/CustomSeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 46
    iget-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 42
    return-void
.end method

.method private setValuesFromXml(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/preference/CustomSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 51
    sget-object v6, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    .line 50
    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 53
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    const-string/jumbo v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "max"

    const/16 v7, 0x64

    invoke-interface {p1, v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/preference/CustomSeekBarPreference;->mMaxValue:I

    .line 54
    const-string/jumbo v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "min"

    invoke-interface {p1, v5, v6, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/preference/CustomSeekBarPreference;->mMinValue:I

    .line 55
    const-string/jumbo v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "defaultValue"

    const/4 v7, -0x1

    invoke-interface {p1, v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/preference/CustomSeekBarPreference;->mDefaultValue:I

    .line 56
    const-string/jumbo v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "unitsLeft"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v5, v6, v7}, Landroid/preference/CustomSeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 57
    const-string/jumbo v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "units"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v5, v6, v7}, Landroid/preference/CustomSeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "units":Ljava/lang/String;
    const-string/jumbo v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "unitsRight"

    invoke-direct {p0, p1, v5, v6, v4}, Landroid/preference/CustomSeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 60
    const/4 v5, 0x4

    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 61
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/preference/CustomSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 64
    :cond_0
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/preference/CustomSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 70
    :cond_1
    :try_start_0
    const-string/jumbo v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "interval"

    invoke-interface {p1, v5, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "newInterval":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/preference/CustomSeekBarPreference;->mInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v2    # "newInterval":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/preference/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Invalid interval value"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 119
    :try_start_0
    iget-object v3, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 120
    .local v2, "oldContainer":Landroid/view/ViewParent;
    const v3, 0x1020410

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 122
    .local v1, "newContainer":Landroid/view/ViewGroup;
    if-eq v2, v1, :cond_1

    .line 124
    if-eqz v2, :cond_0

    .line 125
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "oldContainer":Landroid/view/ViewParent;
    iget-object v3, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 128
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 129
    iget-object v3, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    .line 130
    const/4 v5, -0x2

    .line 129
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "newContainer":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/CustomSeekBarPreference;->updateView(Landroid/view/View;)V

    .line 114
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/preference/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error binding view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 102
    .local v2, "layout":Landroid/widget/RelativeLayout;
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/CustomSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 103
    .local v3, "mInflater":Landroid/view/LayoutInflater;
    const v4, 0x10900db

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v2, v0

    .line 104
    .local v2, "layout":Landroid/widget/RelativeLayout;
    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/preference/CustomSeekBarPreference;->mTitle:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v2    # "layout":Landroid/widget/RelativeLayout;
    .end local v3    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    return-object v2

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/preference/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error creating seek bar preference"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 89
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 90
    invoke-virtual {p0, v2}, Landroid/preference/CustomSeekBarPreference;->setShouldDisableView(Z)V

    .line 91
    iget-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v3, p0, Landroid/preference/CustomSeekBarPreference;->mTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 88
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 92
    goto :goto_0

    :cond_3
    move v1, v2

    .line 94
    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 196
    const/16 v1, 0x32

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 197
    .local v0, "defaultValue":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 164
    iget v1, p0, Landroid/preference/CustomSeekBarPreference;->mMinValue:I

    add-int v0, p2, v1

    .line 165
    .local v0, "newValue":I
    iget v1, p0, Landroid/preference/CustomSeekBarPreference;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 166
    iget v0, p0, Landroid/preference/CustomSeekBarPreference;->mMaxValue:I

    .line 173
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/CustomSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 174
    iget v1, p0, Landroid/preference/CustomSeekBarPreference;->mCurrentValue:I

    iget v2, p0, Landroid/preference/CustomSeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    return-void

    .line 167
    :cond_1
    iget v1, p0, Landroid/preference/CustomSeekBarPreference;->mMinValue:I

    if-ge v0, v1, :cond_2

    .line 168
    iget v0, p0, Landroid/preference/CustomSeekBarPreference;->mMinValue:I

    goto :goto_0

    .line 169
    :cond_2
    iget v1, p0, Landroid/preference/CustomSeekBarPreference;->mInterval:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/preference/CustomSeekBarPreference;->mInterval:I

    rem-int v1, v0, v1

    if-eqz v1, :cond_0

    .line 170
    int-to-float v1, v0

    iget v2, p0, Landroid/preference/CustomSeekBarPreference;->mInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/preference/CustomSeekBarPreference;->mInterval:I

    mul-int v0, v1, v2

    goto :goto_0

    .line 178
    :cond_3
    iput v0, p0, Landroid/preference/CustomSeekBarPreference;->mCurrentValue:I

    .line 179
    iget v1, p0, Landroid/preference/CustomSeekBarPreference;->mCurrentValue:I

    iget v2, p0, Landroid/preference/CustomSeekBarPreference;->mDefaultValue:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Landroid/preference/CustomSeekBarPreference;->mDefaultValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 180
    iget-object v1, p0, Landroid/preference/CustomSeekBarPreference;->mStatusText:Landroid/widget/TextView;

    const v2, 0x1040019

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 183
    :goto_1
    invoke-virtual {p0, v0}, Landroid/preference/CustomSeekBarPreference;->persistInt(I)Z

    .line 163
    return-void

    .line 182
    :cond_4
    iget-object v1, p0, Landroid/preference/CustomSeekBarPreference;->mStatusText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 6
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget v3, p0, Landroid/preference/CustomSeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, v3}, Landroid/preference/CustomSeekBarPreference;->getPersistedInt(I)I

    move-result v3

    iput v3, p0, Landroid/preference/CustomSeekBarPreference;->mCurrentValue:I

    .line 201
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v2, 0x0

    .line 208
    .local v2, "temp":I
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 213
    :goto_1
    invoke-virtual {p0, v2}, Landroid/preference/CustomSeekBarPreference;->persistInt(I)Z

    .line 214
    iput v2, p0, Landroid/preference/CustomSeekBarPreference;->mCurrentValue:I

    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/preference/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid default value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 187
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/preference/CustomSeekBarPreference;->notifyChanged()V

    .line 190
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 225
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 223
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 219
    iput p1, p0, Landroid/preference/CustomSeekBarPreference;->mCurrentValue:I

    .line 218
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v2, v0

    .line 147
    .local v2, "layout":Landroid/widget/RelativeLayout;
    const v5, 0x102040e

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mStatusText:Landroid/widget/TextView;

    .line 148
    iget-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mStatusText:Landroid/widget/TextView;

    iget v6, p0, Landroid/preference/CustomSeekBarPreference;->mCurrentValue:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mStatusText:Landroid/widget/TextView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 150
    iget-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Landroid/preference/CustomSeekBarPreference;->mCurrentValue:I

    iget v7, p0, Landroid/preference/CustomSeekBarPreference;->mMinValue:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 152
    const v5, 0x102040d

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 153
    .local v4, "unitsRight":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v5, 0x102040f

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    .local v3, "unitsLeft":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/preference/CustomSeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v2    # "layout":Landroid/widget/RelativeLayout;
    .end local v3    # "unitsLeft":Landroid/widget/TextView;
    .end local v4    # "unitsRight":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/preference/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error updating seek bar preference"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
