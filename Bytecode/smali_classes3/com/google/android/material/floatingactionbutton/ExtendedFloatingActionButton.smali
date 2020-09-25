.class public final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lo/throwAbtExceptionIfAnalyticsIsNull;
.source ""

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$extraCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback$Stub$Proxy:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final getInterfaceDescriptor:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final warmup:I


# instance fields
.field final ICustomTabsCallback:Landroid/graphics/Rect;

.field final ICustomTabsCallback$Stub:Lo/getAdditionalUserInfo;

.field private final ICustomTabsService:Lo/getTrimPathOffset;

.field asBinder:Z

.field final asInterface:Lo/getAdditionalUserInfo;

.field private final newSession:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:I

.field final onRelationshipValidationResult:Lo/getAdditionalUserInfo;

.field final onTransact:Lo/getAdditionalUserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    sput v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->warmup:I

    .line 597
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback$Stub$Proxy:Landroid/util/Property;

    .line 616
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getInterfaceDescriptor:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 137
    sget v0, Lo/toStringMap$extraCallback;->extendedFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lo/throwAbtExceptionIfAnalyticsIsNull;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onPostMessage:I

    .line 82
    new-instance v1, Lo/getTrimPathOffset;

    invoke-direct {v1}, Lo/getTrimPathOffset;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsService:Lo/getTrimPathOffset;

    .line 85
    new-instance v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;

    invoke-direct {v2, p0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;)V

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asInterface:Lo/getAdditionalUserInfo;

    .line 86
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsService:Lo/getTrimPathOffset;

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onTransact:Lo/getAdditionalUserInfo;

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asBinder:Z

    .line 144
    new-instance v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v2, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->newSession:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 145
    sget-object v2, Lo/toStringMap$newSession;->ExtendedFloatingActionButton:[I

    sget v9, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->warmup:I

    new-array v8, v0, [I

    .line 1081
    invoke-static {p1, p2, p3, v9}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move v6, p3

    move v7, v9

    .line 1084
    invoke-static/range {v3 .. v8}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 1087
    invoke-virtual {p1, p2, v2, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 149
    sget v3, Lo/toStringMap$newSession;->ExtendedFloatingActionButton_showMotionSpec:I

    .line 1175
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1176
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1178
    invoke-static {p1, v3}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    .line 152
    :goto_0
    sget v4, Lo/toStringMap$newSession;->ExtendedFloatingActionButton_hideMotionSpec:I

    .line 2175
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2176
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_1

    .line 2178
    invoke-static {p1, v4}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 155
    :goto_1
    sget v6, Lo/toStringMap$newSession;->ExtendedFloatingActionButton_extendMotionSpec:I

    .line 3175
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3176
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_2

    .line 3178
    invoke-static {p1, v6}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v5

    .line 158
    :goto_2
    sget v7, Lo/toStringMap$newSession;->ExtendedFloatingActionButton_shrinkMotionSpec:I

    .line 4175
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4176
    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_3

    .line 4178
    invoke-static {p1, v7}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object v5

    .line 162
    :cond_3
    new-instance v7, Lo/getTrimPathOffset;

    invoke-direct {v7}, Lo/getTrimPathOffset;-><init>()V

    .line 163
    new-instance v8, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;

    new-instance v9, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;

    invoke-direct {v9, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    invoke-direct {v8, p0, v7, v9, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;Z)V

    iput-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onRelationshipValidationResult:Lo/getAdditionalUserInfo;

    .line 178
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;

    new-instance v8, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;

    invoke-direct {v8, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    invoke-direct {v1, p0, v7, v8, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;Z)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback$Stub:Lo/getAdditionalUserInfo;

    .line 193
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asInterface:Lo/getAdditionalUserInfo;

    invoke-interface {v1, v3}, Lo/getAdditionalUserInfo;->ICustomTabsCallback(Lo/getExperimentsToRemove;)V

    .line 194
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onTransact:Lo/getAdditionalUserInfo;

    invoke-interface {v1, v4}, Lo/getAdditionalUserInfo;->ICustomTabsCallback(Lo/getExperimentsToRemove;)V

    .line 195
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onRelationshipValidationResult:Lo/getAdditionalUserInfo;

    invoke-interface {v1, v6}, Lo/getAdditionalUserInfo;->ICustomTabsCallback(Lo/getExperimentsToRemove;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback$Stub:Lo/getAdditionalUserInfo;

    invoke-interface {v1, v5}, Lo/getAdditionalUserInfo;->ICustomTabsCallback(Lo/getExperimentsToRemove;)V

    .line 197
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    sget v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->warmup:I

    sget-object v2, Lo/useAppLanguage;->extraCallback:Lo/signOut;

    .line 200
    invoke-static {p1, p2, p3, v1, v2}, Lo/useAppLanguage;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;

    move-result-object p1

    .line 4429
    new-instance p2, Lo/useAppLanguage;

    invoke-direct {p2, p1, v0}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 203
    invoke-virtual {p0, p2}, Lo/throwAbtExceptionIfAnalyticsIsNull;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getAdditionalUserInfo;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;)V
    .locals 1

    .line 5524
    invoke-interface {p1}, Lo/getAdditionalUserInfo;->asBinder()Z

    move-result p2

    if-nez p2, :cond_3

    .line 5590
    invoke-static {p0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 5530
    invoke-interface {p1}, Lo/getAdditionalUserInfo;->ICustomTabsCallback$Stub()V

    return-void

    .line 5535
    :cond_1
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    .line 5536
    invoke-interface {p1}, Lo/getAdditionalUserInfo;->extraCallback()Landroid/animation/AnimatorSet;

    move-result-object p0

    .line 5537
    new-instance p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;-><init>(Lo/getAdditionalUserInfo;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;)V

    invoke-virtual {p0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5562
    invoke-interface {p1}, Lo/getAdditionalUserInfo;->onPostMessage()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 5563
    invoke-virtual {p0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 5566
    :cond_2
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 208
    invoke-super {p0}, Lo/throwAbtExceptionIfAnalyticsIsNull;->onAttachedToWindow()V

    .line 210
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asBinder:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4585
    iget-object v0, p0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asBinder:Z

    .line 212
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback$Stub:Lo/getAdditionalUserInfo;

    invoke-interface {v0}, Lo/getAdditionalUserInfo;->ICustomTabsCallback$Stub()V

    :cond_0
    return-void
.end method

.method public final onPostMessage()Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->newSession:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    return-object v0
.end method

.method public final setExtendMotionSpec(Lo/getExperimentsToRemove;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onRelationshipValidationResult:Lo/getAdditionalUserInfo;

    invoke-interface {v0, p1}, Lo/getAdditionalUserInfo;->ICustomTabsCallback(Lo/getExperimentsToRemove;)V

    return-void
.end method

.method public final setExtendMotionSpecResource(I)V
    .locals 1

    .line 493
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Lo/getExperimentsToRemove;)V

    return-void
.end method

.method public final setExtended(Z)V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asBinder:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onRelationshipValidationResult:Lo/getAdditionalUserInfo;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback$Stub:Lo/getAdditionalUserInfo;

    .line 232
    :goto_0
    invoke-interface {p1}, Lo/getAdditionalUserInfo;->asBinder()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 236
    :cond_2
    invoke-interface {p1}, Lo/getAdditionalUserInfo;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final setHideMotionSpec(Lo/getExperimentsToRemove;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onTransact:Lo/getAdditionalUserInfo;

    invoke-interface {v0, p1}, Lo/getAdditionalUserInfo;->ICustomTabsCallback(Lo/getExperimentsToRemove;)V

    return-void
.end method

.method public final setHideMotionSpecResource(I)V
    .locals 1

    .line 469
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Lo/getExperimentsToRemove;)V

    return-void
.end method

.method public final setShowMotionSpec(Lo/getExperimentsToRemove;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asInterface:Lo/getAdditionalUserInfo;

    invoke-interface {v0, p1}, Lo/getAdditionalUserInfo;->ICustomTabsCallback(Lo/getExperimentsToRemove;)V

    return-void
.end method

.method public final setShowMotionSpecResource(I)V
    .locals 1

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Lo/getExperimentsToRemove;)V

    return-void
.end method

.method public final setShrinkMotionSpec(Lo/getExperimentsToRemove;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback$Stub:Lo/getAdditionalUserInfo;

    invoke-interface {v0, p1}, Lo/getAdditionalUserInfo;->ICustomTabsCallback(Lo/getExperimentsToRemove;)V

    return-void
.end method

.method public final setShrinkMotionSpecResource(I)V
    .locals 1

    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Lo/getExperimentsToRemove;)V

    return-void
.end method
