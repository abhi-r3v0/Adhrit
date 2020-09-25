.class public Lo/AbtRegistrar;
.super Landroidx/cardview/widget/CardView;
.source ""

# interfaces
.implements Landroid/widget/Checkable;
.implements Lo/FirebaseAuthException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AbtRegistrar$extraCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[I

.field private static final extraCallback:I

.field private static final onMessageChannelReady:[I

.field private static final onPostMessage:[I


# instance fields
.field private ICustomTabsCallback$Stub:Lo/AbtRegistrar$extraCallback;

.field private asBinder:Z

.field private asInterface:Z

.field private final onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

.field private onRelationshipValidationResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 90
    sput-object v1, Lo/AbtRegistrar;->ICustomTabsCallback:[I

    new-array v1, v0, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    .line 91
    sput-object v1, Lo/AbtRegistrar;->onMessageChannelReady:[I

    new-array v0, v0, [I

    .line 92
    sget v1, Lo/toStringMap$extraCallback;->state_dragged:I

    aput v1, v0, v3

    sput-object v0, Lo/AbtRegistrar;->onPostMessage:[I

    .line 94
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_CardView:I

    sput v0, Lo/AbtRegistrar;->extraCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lo/AbtRegistrar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 114
    sget v0, Lo/toStringMap$extraCallback;->materialCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/AbtRegistrar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 118
    sget v0, Lo/AbtRegistrar;->extraCallback:I

    invoke-static {p1, p2, p3, v0}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lo/AbtRegistrar;->onRelationshipValidationResult:Z

    .line 106
    iput-boolean p1, p0, Lo/AbtRegistrar;->asBinder:Z

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lo/AbtRegistrar;->asInterface:Z

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    sget-object v7, Lo/toStringMap$newSession;->MaterialCardView:[I

    sget v8, Lo/AbtRegistrar;->extraCallback:I

    new-array v6, p1, [I

    .line 1081
    invoke-static {v0, p2, p3, v8}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v0

    move-object v2, p2

    move-object v3, v7

    move v4, p3

    move v5, v8

    .line 1084
    invoke-static/range {v1 .. v6}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 1087
    invoke-virtual {v0, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    new-instance v1, Lo/setAnalyticsCollectionEnabled;

    sget v2, Lo/AbtRegistrar;->extraCallback:I

    invoke-direct {v1, p0, p2, p3, v2}, Lo/setAnalyticsCollectionEnabled;-><init>(Lo/AbtRegistrar;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 129
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 1243
    iget-object p3, v1, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 1288
    iget-object v1, p3, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v1, p2, :cond_0

    .line 1289
    iget-object v1, p3, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p2, v1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 1290
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p2

    invoke-virtual {p3, p2}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 130
    :cond_0
    iget-object p2, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 131
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result p3

    .line 132
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v1

    .line 133
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v2

    .line 134
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v3

    .line 2251
    iget-object v4, p2, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {v4, p3, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2252
    invoke-virtual {p2}, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent()V

    .line 137
    iget-object p2, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 3152
    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 3153
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lo/toStringMap$newSession;->MaterialCardView_strokeColor:I

    .line 3152
    invoke-static {p3, v0, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p2, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    .line 3156
    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_1

    const/4 p3, -0x1

    .line 3157
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p2, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    .line 3160
    :cond_1
    sget p3, Lo/toStringMap$newSession;->MaterialCardView_strokeWidth:I

    invoke-virtual {v0, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p2, Lo/setAnalyticsCollectionEnabled;->onRelationshipValidationResult:I

    .line 3161
    sget p3, Lo/toStringMap$newSession;->MaterialCardView_android_checkable:I

    invoke-virtual {v0, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p2, Lo/setAnalyticsCollectionEnabled;->updateVisuals:Z

    .line 3162
    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    iget-boolean v1, p2, Lo/setAnalyticsCollectionEnabled;->updateVisuals:Z

    invoke-virtual {p3, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 3163
    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 3164
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lo/toStringMap$newSession;->MaterialCardView_checkedIconTint:I

    .line 3163
    invoke-static {p3, v0, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 3165
    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 3167
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lo/toStringMap$newSession;->MaterialCardView_checkedIcon:I

    .line 3166
    invoke-static {p3, v0, v1}, Lo/fetchSignInMethodsForEmail;->onNavigationEvent(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 3165
    invoke-virtual {p2, p3}, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 3169
    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 3171
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lo/toStringMap$newSession;->MaterialCardView_rippleColor:I

    .line 3170
    invoke-static {p3, v0, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p2, Lo/setAnalyticsCollectionEnabled;->onTransact:Landroid/content/res/ColorStateList;

    .line 3172
    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->onTransact:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_2

    .line 3173
    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    sget v1, Lo/toStringMap$extraCallback;->colorControlHighlight:I

    .line 4085
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    .line 4084
    invoke-static {v2, v1, p3}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result p3

    .line 3174
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p2, Lo/setAnalyticsCollectionEnabled;->onTransact:Landroid/content/res/ColorStateList;

    .line 3178
    :cond_2
    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 3180
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lo/toStringMap$newSession;->MaterialCardView_cardForegroundColor:I

    .line 3179
    invoke-static {p3, v0, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 3184
    iget-object v1, p2, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    if-nez p3, :cond_3

    .line 3185
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 4288
    :cond_3
    iget-object p1, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object p1, p1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq p1, p3, :cond_4

    .line 4289
    iget-object p1, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p3, p1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 4290
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 3187
    :cond_4
    invoke-virtual {p2}, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback$Stub()V

    .line 4303
    iget-object p1, p2, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {p3}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result p3

    .line 4651
    iget-object v1, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v1, v1, p3

    if-eqz v1, :cond_5

    .line 4652
    iget-object v1, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p3, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 4653
    invoke-virtual {p1}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 5315
    :cond_5
    iget-object p1, p2, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    iget p3, p2, Lo/setAnalyticsCollectionEnabled;->onRelationshipValidationResult:I

    int-to-float p3, p3

    iget-object v1, p2, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p3, v1}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(FLandroid/content/res/ColorStateList;)V

    .line 3191
    iget-object p1, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {p2, p3}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 5348
    invoke-super {p1, p3}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3192
    iget-object p1, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 3193
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget-object p1, p2, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    :goto_0
    iput-object p1, p2, Lo/setAnalyticsCollectionEnabled;->asInterface:Landroid/graphics/drawable/Drawable;

    .line 3194
    iget-object p1, p2, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    iget-object p3, p2, Lo/setAnalyticsCollectionEnabled;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/AbtRegistrar;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method final R_()F
    .locals 1

    .line 15077
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result v0

    return v0
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 287
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 24247
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 24301
    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 271
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 21257
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    .line 271
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 256
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 18257
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    .line 256
    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 266
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 20257
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    .line 266
    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 261
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 19257
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    .line 261
    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 217
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 14283
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onRelationshipValidationResult()F

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lo/AbtRegistrar;->onRelationshipValidationResult:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 298
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onAttachedToWindow()V

    .line 300
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 26239
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 300
    invoke-static {p0, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/view/View;Lo/setFirebaseUIVersion;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    .line 415
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 30388
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    if-eqz v0, :cond_0

    .line 31348
    iget-boolean v0, v0, Lo/setAnalyticsCollectionEnabled;->updateVisuals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 417
    sget-object v0, Lo/AbtRegistrar;->ICustomTabsCallback:[I

    invoke-static {p1, v0}, Lo/AbtRegistrar;->mergeDrawableStates([I[I)[I

    .line 420
    :cond_1
    invoke-virtual {p0}, Lo/AbtRegistrar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    sget-object v0, Lo/AbtRegistrar;->onMessageChannelReady:[I

    invoke-static {p1, v0}, Lo/AbtRegistrar;->mergeDrawableStates([I[I)[I

    .line 31378
    :cond_2
    iget-boolean v0, p0, Lo/AbtRegistrar;->asBinder:Z

    if-eqz v0, :cond_3

    .line 425
    sget-object v0, Lo/AbtRegistrar;->onPostMessage:[I

    invoke-static {p1, v0}, Lo/AbtRegistrar;->mergeDrawableStates([I[I)[I

    :cond_3
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 153
    const-class v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lo/AbtRegistrar;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 144
    const-class v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 5388
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    if-eqz v0, :cond_0

    .line 6348
    iget-boolean v0, v0, Lo/setAnalyticsCollectionEnabled;->updateVisuals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 147
    invoke-virtual {p0}, Lo/AbtRegistrar;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .line 159
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    .line 160
    iget-object p1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 6393
    iget-object v1, p1, Lo/setAnalyticsCollectionEnabled;->newSession:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    .line 6394
    iget v1, p1, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent:I

    sub-int/2addr p2, v1

    iget v1, p1, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback$Stub:I

    sub-int/2addr p2, v1

    .line 6395
    iget v1, p1, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent:I

    sub-int/2addr v0, v1

    iget v1, p1, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback$Stub:I

    sub-int v7, v0, v1

    .line 6396
    iget v0, p1, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent:I

    .line 6397
    iget-object v1, p1, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-static {v1}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v6, p2

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p2

    move v6, v0

    .line 6404
    :goto_0
    iget-object v2, p1, Lo/setAnalyticsCollectionEnabled;->newSession:Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    iget v5, p1, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent:I

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_1
    return-void
.end method

.method final onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method final onPostMessage(IIII)V
    .locals 0

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 331
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 336
    iget-boolean v0, p0, Lo/AbtRegistrar;->asInterface:Z

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 27198
    iget-boolean v0, v0, Lo/setAnalyticsCollectionEnabled;->postMessage:Z

    if-nez v0, :cond_0

    const-string v0, "MaterialCardView"

    const-string v1, "Setting a custom background is not supported."

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    const/4 v1, 0x1

    .line 27202
    iput-boolean v1, v0, Lo/setAnalyticsCollectionEnabled;->postMessage:Z

    .line 341
    :cond_0
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2

    .line 276
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 22243
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 22288
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 22289
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p1, v1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 22290
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 23243
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 23288
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 23289
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p1, v1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 23290
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    .line 305
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 306
    iget-object p1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 26303
    iget-object v0, p1, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    iget-object p1, p1, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result p1

    .line 26651
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 26652
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 26653
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 398
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 28344
    iput-boolean p1, v0, Lo/setAnalyticsCollectionEnabled;->updateVisuals:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 358
    iget-boolean v0, p0, Lo/AbtRegistrar;->onRelationshipValidationResult:Z

    if-eq v0, p1, :cond_0

    .line 359
    invoke-virtual {p0}, Lo/AbtRegistrar;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {v0, p1}, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    .line 495
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 527
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 33357
    iput-object p1, v0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 33358
    iget-object v1, v0, Lo/setAnalyticsCollectionEnabled;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 33359
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->asBinder:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 3

    .line 292
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 293
    iget-object p1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 25261
    iget-object v0, p1, Lo/setAnalyticsCollectionEnabled;->asInterface:Landroid/graphics/drawable/Drawable;

    .line 25262
    iget-object v1, p1, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 25263
    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    :goto_0
    iput-object v1, p1, Lo/setAnalyticsCollectionEnabled;->asInterface:Landroid/graphics/drawable/Drawable;

    .line 25264
    iget-object v1, p1, Lo/setAnalyticsCollectionEnabled;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    .line 25265
    iget-object v0, p1, Lo/setAnalyticsCollectionEnabled;->asInterface:Landroid/graphics/drawable/Drawable;

    .line 25448
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v1, p1, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    .line 25449
    invoke-virtual {v1}, Lo/AbtRegistrar;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_1

    .line 25450
    iget-object p1, p1, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {p1}, Lo/AbtRegistrar;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 25452
    :cond_1
    iget-object v1, p1, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {p1, v0}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/AbtRegistrar;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 2

    .line 247
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 18251
    iget-object v1, v0, Lo/setAnalyticsCollectionEnabled;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 18252
    invoke-virtual {v0}, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent()V

    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lo/AbtRegistrar;->asBinder:Z

    if-eq v0, p1, :cond_1

    .line 370
    iput-boolean p1, p0, Lo/AbtRegistrar;->asBinder:Z

    .line 371
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 27547
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-le p1, v0, :cond_0

    .line 27548
    iget-object p1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {p1}, Lo/setAnalyticsCollectionEnabled;->extraCallback()V

    .line 373
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    .line 311
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 312
    iget-object p1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {p1}, Lo/setAnalyticsCollectionEnabled;->onPostMessage()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lo/AbtRegistrar$extraCallback;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lo/AbtRegistrar;->ICustomTabsCallback$Stub:Lo/AbtRegistrar$extraCallback;

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    .line 324
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 325
    iget-object p1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {p1}, Lo/setAnalyticsCollectionEnabled;->onPostMessage()V

    .line 326
    iget-object p1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {p1}, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent()V

    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 231
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 15287
    iget-object v1, v0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    .line 15616
    iget-object v2, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    const/4 v3, 0x1

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 15617
    iget-object v2, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    .line 15618
    iput-boolean v3, v1, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 15619
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15288
    :cond_0
    iget-object v1, v0, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    if-eqz v1, :cond_1

    .line 15289
    iget-object v1, v0, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 16616
    iget-object v2, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_1

    .line 16617
    iget-object v2, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    .line 16618
    iput-boolean v3, v1, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 16619
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15292
    :cond_1
    iget-object v1, v0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsService:Lo/setFirebaseUIVersion;

    if-eqz v1, :cond_2

    .line 15293
    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsService:Lo/setFirebaseUIVersion;

    .line 17616
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    .line 17617
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    .line 17618
    iput-boolean v3, v0, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 17619
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setRadius(F)V
    .locals 4

    .line 211
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 212
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 10270
    iget-object v1, v0, Lo/setAnalyticsCollectionEnabled;->getInterfaceDescriptor:Lo/useAppLanguage;

    .line 11738
    new-instance v2, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v2, v1}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    .line 12140
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 12154
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 12168
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 12182
    new-instance v1, Lo/startActivityForSignInWithProvider;

    invoke-direct {v1, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v1, v2, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 12429
    new-instance p1, Lo/useAppLanguage;

    const/4 v1, 0x0

    invoke-direct {p1, v2, v1}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 10270
    invoke-virtual {v0, p1}, Lo/setAnalyticsCollectionEnabled;->onPostMessage(Lo/useAppLanguage;)V

    .line 10271
    iget-object p1, v0, Lo/setAnalyticsCollectionEnabled;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10272
    invoke-virtual {v0}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_2

    .line 12520
    iget-object p1, v0, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback:Lo/AbtRegistrar;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 13508
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_0

    iget-object p1, v0, Lo/setAnalyticsCollectionEnabled;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {p1}, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    .line 10274
    :cond_2
    invoke-virtual {v0}, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent()V

    .line 10277
    :cond_3
    invoke-virtual {v0}, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10278
    invoke-virtual {v0}, Lo/setAnalyticsCollectionEnabled;->onPostMessage()V

    :cond_4
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 32352
    iput-object p1, v0, Lo/setAnalyticsCollectionEnabled;->onTransact:Landroid/content/res/ColorStateList;

    .line 32353
    invoke-virtual {v0}, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .line 461
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lo/postMessage;->onPostMessage(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 33352
    iput-object p1, v0, Lo/setAnalyticsCollectionEnabled;->onTransact:Landroid/content/res/ColorStateList;

    .line 33353
    invoke-virtual {v0}, Lo/setAnalyticsCollectionEnabled;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public setShapeAppearanceModel(Lo/useAppLanguage;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {v0, p1}, Lo/setAnalyticsCollectionEnabled;->onPostMessage(Lo/useAppLanguage;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    .line 169
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 7206
    iget-object v1, v0, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 7210
    iput-object p1, v0, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    .line 7315
    iget-object p1, v0, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    iget v1, v0, Lo/setAnalyticsCollectionEnabled;->onRelationshipValidationResult:I

    int-to-float v1, v1

    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1, v0}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(FLandroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 8206
    iget-object v1, v0, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 8210
    iput-object p1, v0, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    .line 8315
    iget-object p1, v0, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    iget v1, v0, Lo/setAnalyticsCollectionEnabled;->onRelationshipValidationResult:I

    int-to-float v1, v1

    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1, v0}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(FLandroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    .line 9225
    iget v1, v0, Lo/setAnalyticsCollectionEnabled;->onRelationshipValidationResult:I

    if-eq p1, v1, :cond_0

    .line 9228
    iput p1, v0, Lo/setAnalyticsCollectionEnabled;->onRelationshipValidationResult:I

    .line 9315
    iget-object p1, v0, Lo/setAnalyticsCollectionEnabled;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    iget v1, v0, Lo/setAnalyticsCollectionEnabled;->onRelationshipValidationResult:I

    int-to-float v1, v1

    iget-object v0, v0, Lo/setAnalyticsCollectionEnabled;->warmup:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1, v0}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(FLandroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    .line 317
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 318
    iget-object p1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {p1}, Lo/setAnalyticsCollectionEnabled;->onPostMessage()V

    .line 319
    iget-object p1, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {p1}, Lo/setAnalyticsCollectionEnabled;->onNavigationEvent()V

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 28388
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 29348
    iget-boolean v0, v0, Lo/setAnalyticsCollectionEnabled;->updateVisuals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-boolean v0, p0, Lo/AbtRegistrar;->onRelationshipValidationResult:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lo/AbtRegistrar;->onRelationshipValidationResult:Z

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 29547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_1

    .line 29548
    iget-object v0, p0, Lo/AbtRegistrar;->onNavigationEvent:Lo/setAnalyticsCollectionEnabled;

    invoke-virtual {v0}, Lo/setAnalyticsCollectionEnabled;->extraCallback()V

    :cond_1
    return-void
.end method
