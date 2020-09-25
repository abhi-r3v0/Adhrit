.class public final Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source ""

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$extraCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    }
.end annotation


# static fields
.field private static final onTransact:I


# instance fields
.field ICustomTabsCallback:Z

.field ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:I

.field asBinder:I

.field asInterface:Landroid/animation/AnimatorListenerAdapter;

.field extraCallback:I

.field private getInterfaceDescriptor:Landroid/animation/Animator;

.field private newSession:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field final onMessageChannelReady:Lo/setFirebaseUIVersion;

.field onNavigationEvent:Landroid/animation/Animator;

.field onPostMessage:I

.field onRelationshipValidationResult:Lo/validateRunningExperiments;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/validateRunningExperiments<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_BottomAppBar:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onTransact:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 215
    sget v0, Lo/toStringMap$extraCallback;->bottomAppBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 219
    sget v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onTransact:I

    invoke-static {p1, p2, p3, v0}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    new-instance p1, Lo/setFirebaseUIVersion;

    invoke-direct {p1}, Lo/setFirebaseUIVersion;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    const/4 p1, 0x0

    .line 149
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback:I

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub:Z

    .line 174
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$3;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->asInterface:Landroid/animation/AnimatorListenerAdapter;

    .line 184
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onRelationshipValidationResult:Lo/validateRunningExperiments;

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    sget-object v7, Lo/toStringMap$newSession;->BottomAppBar:[I

    sget v8, Lcom/google/android/material/bottomappbar/BottomAppBar;->onTransact:I

    new-array v6, p1, [I

    .line 2081
    invoke-static {v0, p2, p3, v8}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v0

    move-object v2, p2

    move-object v3, v7

    move v4, p3

    move v5, v8

    .line 2084
    invoke-static/range {v1 .. v6}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 2087
    invoke-virtual {v0, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 227
    sget p3, Lo/toStringMap$newSession;->BottomAppBar_backgroundTint:I

    .line 228
    invoke-static {v0, p2, p3}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 230
    sget v1, Lo/toStringMap$newSession;->BottomAppBar_elevation:I

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 231
    sget v2, Lo/toStringMap$newSession;->BottomAppBar_fabCradleMargin:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    .line 232
    sget v3, Lo/toStringMap$newSession;->BottomAppBar_fabCradleRoundedCornerRadius:I

    .line 233
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    .line 234
    sget v4, Lo/toStringMap$newSession;->BottomAppBar_fabCradleVerticalOffset:I

    .line 235
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    int-to-float v4, v4

    .line 236
    sget v5, Lo/toStringMap$newSession;->BottomAppBar_fabAlignmentMode:I

    .line 237
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    .line 238
    sget v5, Lo/toStringMap$newSession;->BottomAppBar_fabAnimationMode:I

    .line 239
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub$Proxy:I

    .line 240
    sget v5, Lo/toStringMap$newSession;->BottomAppBar_hideOnScroll:I

    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback:Z

    .line 242
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v5, Lo/toStringMap$onMessageChannelReady;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->warmup:I

    .line 247
    new-instance p2, Lo/convertMapsToExperimentInfos;

    invoke-direct {p2, v2, v3, v4}, Lo/convertMapsToExperimentInfos;-><init>(FFF)V

    .line 2435
    new-instance v2, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v2}, Lo/useAppLanguage$ICustomTabsCallback;-><init>()V

    .line 3390
    iput-object p2, v2, Lo/useAppLanguage$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getTenantId;

    .line 3429
    new-instance p2, Lo/useAppLanguage;

    invoke-direct {p2, v2, p1}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 251
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-virtual {p1, p2}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 252
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 3529
    iget-object p2, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget p2, p2, Lo/setFirebaseUIVersion$extraCallback;->requestPostMessageChannel:I

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    .line 3530
    iget-object p2, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput v2, p2, Lo/setFirebaseUIVersion$extraCallback;->requestPostMessageChannel:I

    .line 3531
    invoke-virtual {p1}, Lo/setFirebaseUIVersion;->onNavigationEvent()V

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 3884
    iget-object v2, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p2, v2, Lo/setFirebaseUIVersion$extraCallback;->IPostMessageService:Landroid/graphics/Paint$Style;

    .line 3885
    invoke-virtual {p1}, Lo/setFirebaseUIVersion;->onNavigationEvent()V

    .line 254
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 4585
    iget-object p2, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v2, Lo/getUsername;

    invoke-direct {v2, v0}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v2, p2, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 4586
    invoke-virtual {p1}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    int-to-float p1, v1

    .line 255
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setElevation(F)V

    .line 256
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-static {p1, p3}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 257
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 259
    new-instance p1, Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$2;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 5140
    new-instance p2, Lo/signInAnonymously$extraCallback;

    .line 5142
    invoke-static {p0}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result p3

    .line 5143
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 5144
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub$Proxy(Landroid/view/View;)I

    move-result v1

    .line 5145
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-direct {p2, p3, v0, v1, v2}, Lo/signInAnonymously$extraCallback;-><init>(IIII)V

    .line 5148
    new-instance p3, Lo/signInAnonymously$3;

    invoke-direct {p3, p1, p2}, Lo/signInAnonymously$3;-><init>(Lo/signInAnonymously$onNavigationEvent;Lo/signInAnonymously$extraCallback;)V

    invoke-static {p0, p3}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/ArrayCreatingInputMerger$extraCallback;)V

    .line 5162
    invoke-static {p0}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5164
    invoke-static {p0}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    return-void

    .line 5167
    :cond_1
    new-instance p1, Lo/signInAnonymously$4;

    invoke-direct {p1}, Lo/signInAnonymously$4;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method private ICustomTabsCallback()Z
    .locals 2

    .line 22511
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onNavigationEvent()Landroid/view/View;

    move-result-object v0

    .line 22512
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 23434
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v1, :cond_1

    .line 23435
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 23437
    :cond_1
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 22732
    invoke-virtual {v0}, Lo/getUid;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 4

    .line 25776
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 26255
    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 26712
    iget-object v0, v0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 25777
    check-cast v0, Lo/convertMapsToExperimentInfos;

    .line 27679
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback(I)F

    move-result v1

    .line 28173
    iput v1, v0, Lo/convertMapsToExperimentInfos;->onPostMessage:F

    .line 783
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onNavigationEvent()Landroid/view/View;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 28616
    :goto_0
    iget-object v3, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v3, v3, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    .line 28617
    iget-object v3, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput v2, v3, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    const/4 v2, 0x1

    .line 28618
    iput-boolean v2, v1, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 28619
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    if-eqz v0, :cond_2

    .line 28776
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 29255
    iget-object v1, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 29712
    iget-object v1, v1, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 28777
    check-cast v1, Lo/convertMapsToExperimentInfos;

    .line 30192
    iget v1, v1, Lo/convertMapsToExperimentInfos;->onMessageChannelReady:F

    neg-float v1, v1

    .line 786
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 30679
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback(I)F

    move-result v1

    .line 787
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    return-void
.end method

.method private extraCallback()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    .line 684
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 685
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 686
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 687
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private extraCallback(IZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 621
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v5, "alpha"

    .line 628
    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 631
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getTranslationX()F

    move-result v6

    .line 632
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 635
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_1

    new-array v3, v1, [F

    const/4 v6, 0x0

    aput v6, v3, v4

    .line 637
    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 639
    new-instance v5, Lcom/google/android/material/bottomappbar/BottomAppBar$9;

    invoke-direct {v5, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$9;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 656
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0x96

    .line 657
    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v3, p2, v4

    aput-object v2, p2, v1

    .line 658
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 659
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 660
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    .line 663
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic onMessageChannelReady(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onNavigationEvent()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private onMessageChannelReady()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .line 511
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onNavigationEvent()Landroid/view/View;

    move-result-object v0

    .line 512
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback(I)F
    .locals 3

    .line 672
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v1, :cond_2

    .line 674
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->warmup:I

    sub-int/2addr p1, v2

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    mul-int p1, p1, v1

    int-to-float p1, p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .line 852
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 854
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-static {p0, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/view/View;Lo/setFirebaseUIVersion;)V

    .line 858
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 758
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    .line 23748
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onNavigationEvent:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 23749
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 23751
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->getInterfaceDescriptor:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    .line 23752
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 767
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub()V

    .line 23792
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    .line 23794
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    .line 23795
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 24709
    invoke-virtual {p0, p1, p2, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p2

    int-to-float p2, p2

    .line 24708
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setTranslationX(F)V

    return-void

    .line 23798
    :cond_3
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    iget-boolean p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub:Z

    .line 25709
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p2

    int-to-float p2, p2

    .line 25708
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setTranslationX(F)V

    :cond_4
    return-void
.end method

.method final onNavigationEvent()Landroid/view/View;
    .locals 4

    .line 517
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 522
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 523
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 524
    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v3, :cond_1

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method onPostMessage(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 8

    .line 722
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 726
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 727
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 729
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v6, :cond_2

    .line 730
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iget v6, v6, Lo/onPostMessage$onNavigationEvent;->gravity:I

    const v7, 0x800007

    and-int/2addr v6, v7

    const v7, 0x800003

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_4

    if-eqz v0, :cond_3

    .line 736
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_4

    .line 737
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 741
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_5
    sub-int/2addr v3, p1

    if-ne p2, v2, :cond_7

    if-eqz p3, :cond_7

    return v3

    :cond_7
    return v1
.end method

.method public final synthetic onPostMessage()Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
    .locals 1

    .line 30844
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->newSession:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 30845
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->newSession:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 30847
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->newSession:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object v0
.end method

.method onPostMessage(IZ)V
    .locals 3

    .line 579
    invoke-static {p0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onNavigationEvent:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 587
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 590
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 595
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback(IZLjava/util/List;)V

    .line 597
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 598
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 599
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onNavigationEvent:Landroid/animation/Animator;

    .line 600
    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$10;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$10;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onNavigationEvent:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 996
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;

    if-nez v0, :cond_0

    .line 997
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1000
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;

    .line 1001
    invoke-virtual {p1}, Lo/pause;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1002
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;->ICustomTabsCallback:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    .line 1003
    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;->onNavigationEvent:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 987
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 988
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;-><init>(Landroid/os/Parcelable;)V

    .line 989
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;->ICustomTabsCallback:I

    .line 990
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub:Z

    iput-boolean v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;->onNavigationEvent:Z

    return-object v1
.end method

.method public final setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setCradleVerticalOffset(F)V
    .locals 1

    .line 16776
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 17255
    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 17712
    iget-object v0, v0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 16777
    check-cast v0, Lo/convertMapsToExperimentInfos;

    .line 18192
    iget v0, v0, Lo/convertMapsToExperimentInfos;->onMessageChannelReady:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 18776
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 19255
    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 19712
    iget-object v0, v0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 18777
    check-cast v0, Lo/convertMapsToExperimentInfos;

    .line 20201
    iput p1, v0, Lo/convertMapsToExperimentInfos;->onMessageChannelReady:F

    .line 375
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 376
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub()V

    :cond_0
    return-void
.end method

.method public final setElevation(F)V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 20651
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 20652
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 20653
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 20783
    iget-object p1, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget p1, p1, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    .line 413
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 21076
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    int-to-double v1, v1

    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v0, v0, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    int-to-double v3, v0

    .line 21078
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-int v0, v1

    sub-int/2addr p1, v0

    .line 21844
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->newSession:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_1

    .line 21845
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->newSession:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 21847
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->newSession:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 22074
    iput p1, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->extraCallback:I

    .line 22076
    iget p1, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onNavigationEvent:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 22077
    iget p1, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ICustomTabsCallback:I

    iget v0, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->extraCallback:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method public final setFabAlignmentMode(I)V
    .locals 5

    .line 5475
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    if-eq v0, p1, :cond_6

    invoke-static {p0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5479
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->getInterfaceDescriptor:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 5480
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 5483
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5485
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 5573
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback(I)F

    move-result v4

    aput v4, v2, v3

    const-string v3, "translationX"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 5574
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5575
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6546
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7434
    iget-object v3, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v3, :cond_3

    .line 7435
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 7437
    :cond_3
    iget-object v3, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 6728
    invoke-virtual {v3}, Lo/getUid;->warmup()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 7443
    :cond_4
    iget v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback:I

    .line 6554
    new-instance v3, Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    .line 7612
    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;Z)V

    .line 5491
    :cond_5
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5492
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 5493
    iput-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->getInterfaceDescriptor:Landroid/animation/Animator;

    .line 5494
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5506
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->getInterfaceDescriptor:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 294
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage(IZ)V

    .line 295
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    return-void
.end method

.method public final setFabAnimationMode(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub$Proxy:I

    return-void
.end method

.method public final setFabCradleMargin(F)V
    .locals 1

    .line 8776
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 9255
    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 9712
    iget-object v0, v0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 8777
    check-cast v0, Lo/convertMapsToExperimentInfos;

    .line 10205
    iget v0, v0, Lo/convertMapsToExperimentInfos;->onNavigationEvent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 10776
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 11255
    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 11712
    iget-object v0, v0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 10777
    check-cast v0, Lo/convertMapsToExperimentInfos;

    .line 12209
    iput p1, v0, Lo/convertMapsToExperimentInfos;->onNavigationEvent:F

    .line 340
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setFabCradleRoundedCornerRadius(F)V
    .locals 1

    .line 12776
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 13255
    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 13712
    iget-object v0, v0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 12777
    check-cast v0, Lo/convertMapsToExperimentInfos;

    .line 14213
    iget v0, v0, Lo/convertMapsToExperimentInfos;->extraCallback:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 14776
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 15255
    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 15712
    iget-object v0, v0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 14777
    check-cast v0, Lo/convertMapsToExperimentInfos;

    .line 16217
    iput p1, v0, Lo/convertMapsToExperimentInfos;->extraCallback:F

    .line 354
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setHideOnScroll(Z)V
    .locals 0

    .line 395
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback:Z

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
