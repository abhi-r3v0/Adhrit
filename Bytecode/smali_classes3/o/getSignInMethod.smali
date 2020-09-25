.class public final Lo/getSignInMethod;
.super Lo/getUid;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSignInMethod$onPostMessage;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lo/setTenantId;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lo/getUid;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lo/setTenantId;)V

    return-void
.end method

.method private onNavigationEvent(FF)Landroid/animation/Animator;
    .locals 7

    .line 156
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 157
    iget-object v1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const-string p1, "elevation"

    invoke-static {v1, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    aput p2, v2, v4

    .line 159
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0x64

    .line 160
    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 158
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 161
    sget-object p1, Lo/getSignInMethod;->onNavigationEvent:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/getUid;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lo/getUid;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 91
    invoke-static {p1}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lo/getUid;->ICustomTabsCallback(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method final ICustomTabsCallback$Stub()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final asBinder()Lo/setFirebaseUIVersion;
    .locals 2

    .line 231
    iget-object v0, p0, Lo/getUid;->onPostMessage:Lo/useAppLanguage;

    if-eqz v0, :cond_0

    check-cast v0, Lo/useAppLanguage;

    .line 232
    new-instance v1, Lo/getSignInMethod$onPostMessage;

    invoke-direct {v1, v0}, Lo/getSignInMethod$onPostMessage;-><init>(Lo/useAppLanguage;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 8064
    throw v0
.end method

.method final extraCallback()V
    .locals 0

    return-void
.end method

.method final getInterfaceDescriptor()V
    .locals 0

    return-void
.end method

.method final onMessageChannelReady(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 6

    .line 1231
    iget-object v0, p0, Lo/getUid;->onPostMessage:Lo/useAppLanguage;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast v0, Lo/useAppLanguage;

    .line 1232
    new-instance v2, Lo/getSignInMethod$onPostMessage;

    invoke-direct {v2, v0}, Lo/getSignInMethod$onPostMessage;-><init>(Lo/useAppLanguage;)V

    .line 63
    iput-object v2, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    .line 64
    iget-object v0, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {v0, p2}, Lo/setFirebaseUIVersion;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 68
    :cond_0
    iget-object p2, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2585
    iget-object v2, p2, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v3, Lo/getUsername;

    invoke-direct {v3, v0}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 2586
    invoke-virtual {p2}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    if-lez p4, :cond_5

    .line 3216
    iget-object p2, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 3217
    new-instance v0, Lo/getCurrentUser;

    iget-object v2, p0, Lo/getUid;->onPostMessage:Lo/useAppLanguage;

    if-eqz v2, :cond_4

    check-cast v2, Lo/useAppLanguage;

    invoke-direct {v0, v2}, Lo/getCurrentUser;-><init>(Lo/useAppLanguage;)V

    .line 3218
    sget v2, Lo/toStringMap$onPostMessage;->design_fab_stroke_top_outer_color:I

    .line 3219
    invoke-static {p2, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lo/toStringMap$onPostMessage;->design_fab_stroke_top_inner_color:I

    .line 3220
    invoke-static {p2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    sget v4, Lo/toStringMap$onPostMessage;->design_fab_stroke_end_inner_color:I

    .line 3221
    invoke-static {p2, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lo/toStringMap$onPostMessage;->design_fab_stroke_end_outer_color:I

    .line 3222
    invoke-static {p2, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p2

    .line 4116
    iput v2, v0, Lo/getCurrentUser;->ICustomTabsCallback:I

    .line 4117
    iput v3, v0, Lo/getCurrentUser;->onMessageChannelReady:I

    .line 4118
    iput v4, v0, Lo/getCurrentUser;->onNavigationEvent:I

    .line 4119
    iput p2, v0, Lo/getCurrentUser;->ICustomTabsCallback$Stub:I

    int-to-float p2, p4

    .line 5088
    iget p4, v0, Lo/getCurrentUser;->onPostMessage:F

    const/4 v2, 0x1

    cmpl-float p4, p4, p2

    if-eqz p4, :cond_1

    .line 5089
    iput p2, v0, Lo/getCurrentUser;->onPostMessage:F

    .line 5090
    iget-object p4, v0, Lo/getCurrentUser;->extraCallback:Landroid/graphics/Paint;

    const v3, 0x3faaa993    # 1.3333f

    mul-float p2, p2, v3

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5091
    iput-boolean v2, v0, Lo/getCurrentUser;->onTransact:Z

    .line 5092
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 3224
    :cond_1
    invoke-virtual {v0, p1}, Lo/getCurrentUser;->ICustomTabsCallback(Landroid/content/res/ColorStateList;)V

    .line 72
    iput-object v0, p0, Lo/getUid;->onMessageChannelReady:Lo/getCurrentUser;

    .line 73
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x0

    iget-object v0, p0, Lo/getUid;->onMessageChannelReady:Lo/getCurrentUser;

    if-eqz v0, :cond_3

    .line 74
    check-cast v0, Landroid/graphics/drawable/Drawable;

    aput-object v0, p2, p4

    iget-object p4, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz p4, :cond_2

    check-cast p4, Landroid/graphics/drawable/Drawable;

    aput-object p4, p2, v2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7064
    :cond_2
    throw v1

    .line 6064
    :cond_3
    throw v1

    .line 4064
    :cond_4
    throw v1

    .line 76
    :cond_5
    iput-object v1, p0, Lo/getUid;->onMessageChannelReady:Lo/getCurrentUser;

    .line 77
    iget-object p1, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    .line 80
    :goto_0
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    .line 82
    invoke-static {p3}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-direct {p2, p3, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lo/getUid;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object p1, p0, Lo/getUid;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lo/getUid;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    return-void

    .line 2064
    :cond_6
    throw v1
.end method

.method final onMessageChannelReady([I)V
    .locals 2

    .line 182
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_4

    .line 183
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 184
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lo/getUid;->asBinder:F

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    .line 185
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v0, p0, Lo/getUid;->getInterfaceDescriptor:F

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    return-void

    .line 187
    :cond_0
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    return-void

    .line 188
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v0, p0, Lo/getUid;->asInterface:F

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    return-void

    .line 193
    :cond_3
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    .line 194
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    :cond_4
    return-void
.end method

.method final onNavigationEvent(Landroid/graphics/Rect;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lo/getUid;->notify:Lo/setTenantId;

    invoke-interface {v0}, Lo/setTenantId;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-super {p0, p1}, Lo/getUid;->onNavigationEvent(Landroid/graphics/Rect;)V

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lo/getSignInMethod;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget v0, p0, Lo/getUid;->warmup:I

    iget-object v1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 8777
    iget v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCallback:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onPostMessage(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 240
    div-int/lit8 v0, v0, 0x2

    .line 241
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final onPostMessage()F
    .locals 1

    .line 167
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getElevation()F

    move-result v0

    return v0
.end method

.method final onPostMessage(FFF)V
    .locals 8

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-ne v0, v3, :cond_0

    .line 106
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_0

    .line 108
    :cond_0
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 111
    sget-object v3, Lo/getSignInMethod;->validateRelationship:[I

    .line 112
    invoke-direct {p0, p1, p3}, Lo/getSignInMethod;->onNavigationEvent(FF)Landroid/animation/Animator;

    move-result-object p3

    .line 111
    invoke-virtual {v0, v3, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 113
    sget-object p3, Lo/getSignInMethod;->IPostMessageService$Stub:[I

    .line 115
    invoke-direct {p0, p1, p2}, Lo/getSignInMethod;->onNavigationEvent(FF)Landroid/animation/Animator;

    move-result-object v3

    .line 113
    invoke-virtual {v0, p3, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 116
    sget-object p3, Lo/getSignInMethod;->ICustomTabsService$Stub$Proxy:[I

    .line 118
    invoke-direct {p0, p1, p2}, Lo/getSignInMethod;->onNavigationEvent(FF)Landroid/animation/Animator;

    move-result-object v3

    .line 116
    invoke-virtual {v0, p3, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 119
    sget-object p3, Lo/getSignInMethod;->IPostMessageService:[I

    .line 121
    invoke-direct {p0, p1, p2}, Lo/getSignInMethod;->onNavigationEvent(FF)Landroid/animation/Animator;

    move-result-object p2

    .line 119
    invoke-virtual {v0, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 124
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 125
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v3, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-array v4, v1, [F

    aput p1, v4, v2

    const-string p1, "elevation"

    invoke-static {v3, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    const-wide/16 v4, 0x64

    if-lt p1, v3, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-gt p1, v3, :cond_1

    .line 132
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v6, v1, [F

    iget-object v7, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 133
    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getTranslationZ()F

    move-result v7

    aput v7, v6, v2

    invoke-static {p1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 134
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 132
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v6, v1, [F

    const/4 v7, 0x0

    aput v7, v6, v2

    .line 137
    invoke-static {p1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 136
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p1, v2, [Landroid/animation/Animator;

    .line 139
    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 140
    sget-object p1, Lo/getSignInMethod;->onNavigationEvent:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    sget-object p1, Lo/getSignInMethod;->cancel:[I

    invoke-virtual {v0, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 144
    sget-object p1, Lo/getSignInMethod;->IPostMessageService$Stub$Proxy:[I

    invoke-direct {p0, v7, v7}, Lo/getSignInMethod;->onNavigationEvent(FF)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 146
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 7177
    :goto_0
    iget-object p1, p0, Lo/getUid;->notify:Lo/setTenantId;

    invoke-interface {p1}, Lo/setTenantId;->extraCallback()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lo/getSignInMethod;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {p0}, Lo/getSignInMethod;->asInterface()V

    :cond_4
    return-void
.end method

.method final onRelationshipValidationResult()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lo/getSignInMethod;->asInterface()V

    return-void
.end method

.method final onTransact()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lo/getUid;->notify:Lo/setTenantId;

    invoke-interface {v0}, Lo/setTenantId;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/getSignInMethod;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
