.class public Landroid/graphics/drawable/StopMotionVectorDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "StopMotionVectorDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Landroid/graphics/drawable/StopMotionVectorDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/StopMotionVectorDrawable;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StopMotionVectorDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method private getAnimatorSetViaReflection()V
    .locals 7

    .prologue
    .line 90
    :try_start_0
    const-class v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const-string/jumbo v6, "mAnimatorSet"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 91
    .local v1, "_mAnimatorSet":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    const-string/jumbo v5, "android.graphics.drawable.AnimatedVectorDrawable$VectorDrawableAnimatorUI"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 93
    .local v4, "innerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 94
    iget-object v5, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "_inner":Ljava/lang/Object;
    const-string/jumbo v5, "mSet"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 96
    .local v2, "_mSet":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet;

    iput-object v5, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "_inner":Ljava/lang/Object;
    .end local v1    # "_mAnimatorSet":Ljava/lang/reflect/Field;
    .end local v2    # "_mSet":Ljava/lang/reflect/Field;
    .end local v4    # "innerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v5, Landroid/graphics/drawable/StopMotionVectorDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Could not get mAnimatorSet via reflection"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public setCurrentFraction(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 76
    iget-object v3, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 78
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    .line 79
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 80
    .local v0, "animator":Landroid/animation/Animator;
    instance-of v3, v0, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 81
    check-cast v0, Landroid/animation/ValueAnimator;

    .end local v0    # "animator":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v3, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    .line 75
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_2

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .end local p1    # "dr":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 63
    iget-object v0, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Landroid/graphics/drawable/StopMotionVectorDrawable;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 65
    invoke-direct {p0}, Landroid/graphics/drawable/StopMotionVectorDrawable;->getAnimatorSetViaReflection()V

    .line 56
    :cond_1
    return-void

    .line 58
    .restart local p1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Drawable must be an AnimatedVectorDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
