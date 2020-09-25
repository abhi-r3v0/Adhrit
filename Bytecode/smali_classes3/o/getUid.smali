.class public Lo/getUid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getUid$ICustomTabsCallback;,
        Lo/getUid$onPostMessage;,
        Lo/getUid$extraCallback;,
        Lo/getUid$ICustomTabsCallback$Stub;,
        Lo/getUid$onRelationshipValidationResult;,
        Lo/getUid$onMessageChannelReady;,
        Lo/getUid$onNavigationEvent;
    }
.end annotation


# static fields
.field static final ICustomTabsService$Stub$Proxy:[I

.field static final IPostMessageService:[I

.field static final IPostMessageService$Stub:[I

.field static final IPostMessageService$Stub$Proxy:[I

.field static final cancel:[I

.field static final onNavigationEvent:Landroid/animation/TimeInterpolator;

.field static final validateRelationship:[I


# instance fields
.field private final AudioAttributesCompatParcelizer:Landroid/graphics/RectF;

.field ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

.field public ICustomTabsCallback$Stub:Z

.field public ICustomTabsCallback$Stub$Proxy:Lo/getExperimentsToRemove;

.field public ICustomTabsService:Lo/getExperimentsToRemove;

.field public ICustomTabsService$Stub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/getUid$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final INotificationSideChannel:Landroid/graphics/Matrix;

.field private final INotificationSideChannel$Default:Lo/signInWithEmailLink;

.field private INotificationSideChannel$Stub:Lo/getExperimentsToRemove;

.field private INotificationSideChannel$Stub$Proxy:F

.field private final RemoteActionCompatParcelizer:Landroid/graphics/RectF;

.field public asBinder:F

.field public asInterface:F

.field public final cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public extraCallback:Lo/setFirebaseUIVersion;

.field public extraCommand:F

.field private getDefaultImpl:Lo/getExperimentsToRemove;

.field public getInterfaceDescriptor:F

.field public mayLaunchUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field newSession:Landroid/animation/Animator;

.field final notify:Lo/setTenantId;

.field public onMessageChannelReady:Lo/getCurrentUser;

.field onPostMessage:Lo/useAppLanguage;

.field onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

.field public onTransact:Z

.field public postMessage:I

.field requestPostMessageChannel:I

.field public setDefaultImpl:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public updateVisuals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public warmup:I

.field private final write:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    sget-object v0, Lo/preferLastSpan$ICustomTabsCallback$Stub;->extraCallback:Landroid/animation/TimeInterpolator;

    sput-object v0, Lo/getUid;->onNavigationEvent:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 128
    fill-array-data v1, :array_0

    sput-object v1, Lo/getUid;->validateRelationship:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 131
    fill-array-data v1, :array_1

    sput-object v1, Lo/getUid;->IPostMessageService$Stub:[I

    new-array v1, v0, [I

    .line 134
    fill-array-data v1, :array_2

    sput-object v1, Lo/getUid;->ICustomTabsService$Stub$Proxy:[I

    new-array v0, v0, [I

    .line 137
    fill-array-data v0, :array_3

    sput-object v0, Lo/getUid;->IPostMessageService:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 140
    sput-object v0, Lo/getUid;->cancel:[I

    new-array v0, v2, [I

    .line 141
    sput-object v0, Lo/getUid;->IPostMessageService$Stub$Proxy:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lo/setTenantId;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lo/getUid;->ICustomTabsCallback$Stub:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lo/getUid;->extraCommand:F

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lo/getUid;->requestPostMessageChannel:I

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/getUid;->write:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/getUid;->AudioAttributesCompatParcelizer:Landroid/graphics/RectF;

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/getUid;->RemoteActionCompatParcelizer:Landroid/graphics/RectF;

    .line 149
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/getUid;->INotificationSideChannel:Landroid/graphics/Matrix;

    .line 156
    iput-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 157
    iput-object p2, p0, Lo/getUid;->notify:Lo/setTenantId;

    .line 159
    new-instance p1, Lo/signInWithEmailLink;

    invoke-direct {p1}, Lo/signInWithEmailLink;-><init>()V

    iput-object p1, p0, Lo/getUid;->INotificationSideChannel$Default:Lo/signInWithEmailLink;

    .line 162
    sget-object p2, Lo/getUid;->validateRelationship:[I

    new-instance v0, Lo/getUid$onPostMessage;

    invoke-direct {v0, p0}, Lo/getUid$onPostMessage;-><init>(Lo/getUid;)V

    .line 164
    invoke-static {v0}, Lo/getUid;->extraCallback(Lo/getUid$onRelationshipValidationResult;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1062
    new-instance v1, Lo/signInWithEmailLink$onNavigationEvent;

    invoke-direct {v1, p2, v0}, Lo/signInWithEmailLink$onNavigationEvent;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 1063
    iget-object p2, p1, Lo/signInWithEmailLink;->onPostMessage:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1064
    iget-object p1, p1, Lo/signInWithEmailLink;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object p1, p0, Lo/getUid;->INotificationSideChannel$Default:Lo/signInWithEmailLink;

    sget-object p2, Lo/getUid;->IPostMessageService$Stub:[I

    new-instance v0, Lo/getUid$extraCallback;

    invoke-direct {v0, p0}, Lo/getUid$extraCallback;-><init>(Lo/getUid;)V

    .line 167
    invoke-static {v0}, Lo/getUid;->extraCallback(Lo/getUid$onRelationshipValidationResult;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2062
    new-instance v1, Lo/signInWithEmailLink$onNavigationEvent;

    invoke-direct {v1, p2, v0}, Lo/signInWithEmailLink$onNavigationEvent;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 2063
    iget-object p2, p1, Lo/signInWithEmailLink;->onPostMessage:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2064
    iget-object p1, p1, Lo/signInWithEmailLink;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object p1, p0, Lo/getUid;->INotificationSideChannel$Default:Lo/signInWithEmailLink;

    sget-object p2, Lo/getUid;->ICustomTabsService$Stub$Proxy:[I

    new-instance v0, Lo/getUid$extraCallback;

    invoke-direct {v0, p0}, Lo/getUid$extraCallback;-><init>(Lo/getUid;)V

    .line 170
    invoke-static {v0}, Lo/getUid;->extraCallback(Lo/getUid$onRelationshipValidationResult;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3062
    new-instance v1, Lo/signInWithEmailLink$onNavigationEvent;

    invoke-direct {v1, p2, v0}, Lo/signInWithEmailLink$onNavigationEvent;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 3063
    iget-object p2, p1, Lo/signInWithEmailLink;->onPostMessage:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3064
    iget-object p1, p1, Lo/signInWithEmailLink;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p1, p0, Lo/getUid;->INotificationSideChannel$Default:Lo/signInWithEmailLink;

    sget-object p2, Lo/getUid;->IPostMessageService:[I

    new-instance v0, Lo/getUid$extraCallback;

    invoke-direct {v0, p0}, Lo/getUid$extraCallback;-><init>(Lo/getUid;)V

    .line 173
    invoke-static {v0}, Lo/getUid;->extraCallback(Lo/getUid$onRelationshipValidationResult;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4062
    new-instance v1, Lo/signInWithEmailLink$onNavigationEvent;

    invoke-direct {v1, p2, v0}, Lo/signInWithEmailLink$onNavigationEvent;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 4063
    iget-object p2, p1, Lo/signInWithEmailLink;->onPostMessage:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4064
    iget-object p1, p1, Lo/signInWithEmailLink;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object p1, p0, Lo/getUid;->INotificationSideChannel$Default:Lo/signInWithEmailLink;

    sget-object p2, Lo/getUid;->cancel:[I

    new-instance v0, Lo/getUid$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0}, Lo/getUid$ICustomTabsCallback$Stub;-><init>(Lo/getUid;)V

    .line 176
    invoke-static {v0}, Lo/getUid;->extraCallback(Lo/getUid$onRelationshipValidationResult;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5062
    new-instance v1, Lo/signInWithEmailLink$onNavigationEvent;

    invoke-direct {v1, p2, v0}, Lo/signInWithEmailLink$onNavigationEvent;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 5063
    iget-object p2, p1, Lo/signInWithEmailLink;->onPostMessage:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5064
    iget-object p1, p1, Lo/signInWithEmailLink;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p1, p0, Lo/getUid;->INotificationSideChannel$Default:Lo/signInWithEmailLink;

    sget-object p2, Lo/getUid;->IPostMessageService$Stub$Proxy:[I

    new-instance v0, Lo/getUid$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getUid$ICustomTabsCallback;-><init>(Lo/getUid;)V

    .line 179
    invoke-static {v0}, Lo/getUid;->extraCallback(Lo/getUid$onRelationshipValidationResult;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6062
    new-instance v1, Lo/signInWithEmailLink$onNavigationEvent;

    invoke-direct {v1, p2, v0}, Lo/signInWithEmailLink$onNavigationEvent;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 6063
    iget-object p2, p1, Lo/signInWithEmailLink;->onPostMessage:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6064
    iget-object p1, p1, Lo/signInWithEmailLink;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result p1

    iput p1, p0, Lo/getUid;->INotificationSideChannel$Stub$Proxy:F

    return-void
.end method

.method private ICustomTabsCallback$Stub$Proxy()Lo/getExperimentsToRemove;
    .locals 2

    .line 543
    iget-object v0, p0, Lo/getUid;->INotificationSideChannel$Stub:Lo/getExperimentsToRemove;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 545
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/toStringMap$ICustomTabsCallback;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object v0

    iput-object v0, p0, Lo/getUid;->INotificationSideChannel$Stub:Lo/getExperimentsToRemove;

    .line 548
    :cond_0
    iget-object v0, p0, Lo/getUid;->INotificationSideChannel$Stub:Lo/getExperimentsToRemove;

    if-eqz v0, :cond_1

    check-cast v0, Lo/getExperimentsToRemove;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 16064
    throw v0
.end method

.method private static extraCallback(Lo/getUid$onRelationshipValidationResult;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 769
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 770
    sget-object v1, Lo/getUid;->onNavigationEvent:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 771
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 772
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 774
    fill-array-data p0, :array_0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private newSession()Lo/getExperimentsToRemove;
    .locals 2

    .line 552
    iget-object v0, p0, Lo/getUid;->getDefaultImpl:Lo/getExperimentsToRemove;

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 554
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/toStringMap$ICustomTabsCallback;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object v0

    iput-object v0, p0, Lo/getUid;->getDefaultImpl:Lo/getExperimentsToRemove;

    .line 557
    :cond_0
    iget-object v0, p0, Lo/getUid;->getDefaultImpl:Lo/getExperimentsToRemove;

    if-eqz v0, :cond_1

    check-cast v0, Lo/getExperimentsToRemove;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 17064
    throw v0
.end method

.method private onMessageChannelReady(Landroid/graphics/Rect;)V
    .locals 7

    .line 682
    iget-object v0, p0, Lo/getUid;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p0}, Lo/getUid;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lo/getUid;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 686
    iget-object p1, p0, Lo/getUid;->notify:Lo/setTenantId;

    invoke-interface {p1, v0}, Lo/setTenantId;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 688
    :cond_0
    iget-object p1, p0, Lo/getUid;->notify:Lo/setTenantId;

    iget-object v0, p0, Lo/getUid;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lo/setTenantId;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 19081
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Didn\'t initialize content background"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(Lo/getExperimentsToRemove;FFF)Landroid/animation/AnimatorSet;
    .locals 7

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    iget-object v1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    .line 566
    invoke-virtual {p1, v1}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 567
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object p2, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    .line 570
    invoke-virtual {p1, v1}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v2

    invoke-virtual {v2, p2}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 17608
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ne v2, v4, :cond_0

    .line 17612
    new-instance v2, Lo/getUid$4;

    invoke-direct {v2}, Lo/getUid$4;-><init>()V

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 572
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object p2, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    aput p3, v6, v5

    invoke-static {p2, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 575
    invoke-virtual {p1, v1}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 18608
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p3, v4, :cond_1

    .line 18612
    new-instance p3, Lo/getUid$4;

    invoke-direct {p3}, Lo/getUid$4;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 577
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object p2, p0, Lo/getUid;->INotificationSideChannel:Landroid/graphics/Matrix;

    invoke-virtual {p0, p4, p2}, Lo/getUid;->ICustomTabsCallback(FLandroid/graphics/Matrix;)V

    .line 580
    iget-object p2, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lo/replaceAllExperiments;

    invoke-direct {p3}, Lo/replaceAllExperiments;-><init>()V

    new-instance p4, Lo/getUid$3;

    invoke-direct {p4, p0}, Lo/getUid$3;-><init>(Lo/getUid;)V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lo/getUid;->INotificationSideChannel:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    .line 581
    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    .line 595
    invoke-virtual {p1, p3}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 596
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 599
    invoke-static {p1, v0}, Lo/preferLastSpan$asBinder;->onPostMessage(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 647
    iget-object v0, p0, Lo/getUid;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getUid$onNavigationEvent;

    .line 649
    invoke-interface {v1}, Lo/getUid$onNavigationEvent;->onPostMessage()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(FLandroid/graphics/Matrix;)V
    .locals 5

    .line 293
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 295
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget v1, p0, Lo/getUid;->postMessage:I

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lo/getUid;->AudioAttributesCompatParcelizer:Landroid/graphics/RectF;

    .line 299
    iget-object v2, p0, Lo/getUid;->RemoteActionCompatParcelizer:Landroid/graphics/RectF;

    .line 300
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 301
    iget v0, p0, Lo/getUid;->postMessage:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 302
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 305
    iget v0, p0, Lo/getUid;->postMessage:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lo/getUid;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 233
    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback$Stub()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ICustomTabsService()Z
    .locals 4

    .line 748
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 750
    iget v0, p0, Lo/getUid;->requestPostMessageChannel:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    return v1

    .line 753
    :cond_1
    iget v0, p0, Lo/getUid;->requestPostMessageChannel:I

    if-eq v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method asBinder()Lo/setFirebaseUIVersion;
    .locals 2

    .line 743
    iget-object v0, p0, Lo/getUid;->onPostMessage:Lo/useAppLanguage;

    if-eqz v0, :cond_0

    check-cast v0, Lo/useAppLanguage;

    .line 744
    new-instance v1, Lo/setFirebaseUIVersion;

    invoke-direct {v1, v0}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 20064
    throw v0
.end method

.method public final asInterface()V
    .locals 5

    .line 664
    iget-object v0, p0, Lo/getUid;->write:Landroid/graphics/Rect;

    .line 665
    invoke-virtual {p0, v0}, Lo/getUid;->onNavigationEvent(Landroid/graphics/Rect;)V

    .line 666
    invoke-direct {p0, v0}, Lo/getUid;->onMessageChannelReady(Landroid/graphics/Rect;)V

    .line 667
    iget-object v1, p0, Lo/getUid;->notify:Lo/setTenantId;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Lo/setTenantId;->onPostMessage(IIII)V

    return-void
.end method

.method public extraCallback()V
    .locals 2

    .line 381
    iget-object v0, p0, Lo/getUid;->INotificationSideChannel$Default:Lo/signInWithEmailLink;

    .line 12110
    iget-object v1, v0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 12111
    iget-object v1, v0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    const/4 v1, 0x0

    .line 12112
    iput-object v1, v0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/useAppLanguage;)V
    .locals 2

    .line 310
    iput-object p1, p0, Lo/getUid;->onPostMessage:Lo/useAppLanguage;

    .line 311
    iget-object v0, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lo/getUid;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lo/FirebaseAuthException;

    if-eqz v1, :cond_1

    .line 316
    check-cast v0, Lo/FirebaseAuthException;

    invoke-interface {v0, p1}, Lo/FirebaseAuthException;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lo/getUid;->onMessageChannelReady:Lo/getCurrentUser;

    if-eqz v0, :cond_2

    .line 8181
    iput-object p1, v0, Lo/getCurrentUser;->asInterface:Lo/useAppLanguage;

    .line 8182
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method getInterfaceDescriptor()V
    .locals 3

    .line 850
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 853
    iget v0, p0, Lo/getUid;->INotificationSideChannel$Stub$Proxy:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 855
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 865
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_2

    .line 866
    iget v1, p0, Lo/getUid;->INotificationSideChannel$Stub$Proxy:F

    float-to-int v1, v1

    .line 20771
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    if-eq v2, v1, :cond_2

    .line 20772
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput v1, v2, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    .line 20773
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onNavigationEvent()V

    :cond_2
    return-void
.end method

.method public onMessageChannelReady(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lo/getUid;->asBinder()Lo/setFirebaseUIVersion;

    move-result-object p4

    iput-object p4, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    .line 192
    invoke-virtual {p4, p1}, Lo/setFirebaseUIVersion;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 194
    iget-object p1, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {p1, p2}, Lo/setFirebaseUIVersion;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_0
    iget-object p1, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    invoke-virtual {p1}, Lo/setFirebaseUIVersion;->ICustomTabsCallback()V

    .line 198
    iget-object p1, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    iget-object p2, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 6585
    iget-object p4, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v0, Lo/getUsername;

    invoke-direct {v0, p2}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v0, p4, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 6586
    invoke-virtual {p1}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 201
    new-instance p1, Lo/checkActionCode;

    iget-object p2, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    .line 7255
    iget-object p2, p2, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object p2, p2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 202
    invoke-direct {p1, p2}, Lo/checkActionCode;-><init>(Lo/useAppLanguage;)V

    .line 203
    invoke-static {p3}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/checkActionCode;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 204
    iput-object p1, p0, Lo/getUid;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    .line 206
    iget-object p4, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz p4, :cond_1

    .line 207
    check-cast p4, Landroid/graphics/drawable/Drawable;

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 209
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lo/getUid;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 8064
    throw p1
.end method

.method public final onMessageChannelReady(Lo/getUid$onMessageChannelReady;Z)V
    .locals 2

    .line 417
    invoke-virtual {p0}, Lo/getUid;->warmup()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lo/getUid;->newSession:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 12846
    :cond_1
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 427
    iget-object v0, p0, Lo/getUid;->ICustomTabsCallback$Stub$Proxy:Lo/getExperimentsToRemove;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 429
    :cond_3
    invoke-direct {p0}, Lo/getUid;->newSession()Lo/getExperimentsToRemove;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    .line 428
    invoke-direct {p0, v0, v1, v1, v1}, Lo/getUid;->onNavigationEvent(Lo/getExperimentsToRemove;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 433
    new-instance v1, Lo/getUid$5;

    invoke-direct {v1, p0, p2, p1}, Lo/getUid$5;-><init>(Lo/getUid;ZLo/getUid$onMessageChannelReady;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    iget-object p1, p0, Lo/getUid;->mayLaunchUrl:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 465
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 466
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 469
    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 472
    :cond_5
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p2, :cond_6

    const/16 v1, 0x8

    goto :goto_3

    :cond_6
    const/4 v1, 0x4

    :goto_3
    invoke-virtual {v0, v1, p2}, Lo/updateCurrentUser;->onMessageChannelReady(IZ)V

    if-eqz p1, :cond_7

    .line 474
    invoke-interface {p1}, Lo/getUid$onMessageChannelReady;->onNavigationEvent()V

    :cond_7
    return-void
.end method

.method public onMessageChannelReady([I)V
    .locals 6

    .line 377
    iget-object v0, p0, Lo/getUid;->INotificationSideChannel$Default:Lo/signInWithEmailLink;

    .line 11070
    iget-object v1, v0, Lo/signInWithEmailLink;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 11072
    iget-object v4, v0, Lo/signInWithEmailLink;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/signInWithEmailLink$onNavigationEvent;

    .line 11073
    iget-object v5, v4, Lo/signInWithEmailLink$onNavigationEvent;->extraCallback:[I

    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 11078
    :goto_1
    iget-object p1, v0, Lo/signInWithEmailLink;->extraCallback:Lo/signInWithEmailLink$onNavigationEvent;

    if-eq v4, p1, :cond_3

    .line 11081
    iget-object p1, v0, Lo/signInWithEmailLink;->extraCallback:Lo/signInWithEmailLink$onNavigationEvent;

    if-eqz p1, :cond_2

    .line 11098
    iget-object p1, v0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 11099
    iget-object p1, v0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11100
    iput-object v3, v0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    .line 11085
    :cond_2
    iput-object v4, v0, Lo/signInWithEmailLink;->extraCallback:Lo/signInWithEmailLink$onNavigationEvent;

    if-eqz v4, :cond_3

    .line 12093
    iget-object p1, v4, Lo/signInWithEmailLink$onNavigationEvent;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    iput-object p1, v0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    .line 12094
    iget-object p1, v0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method final onMessageChannelReady()Z
    .locals 2

    .line 348
    iget-boolean v0, p0, Lo/getUid;->onTransact:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 8777
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCallback:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onPostMessage(I)I

    move-result v0

    .line 348
    iget v1, p0, Lo/getUid;->warmup:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 639
    iget-object v0, p0, Lo/getUid;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getUid$onNavigationEvent;

    .line 641
    invoke-interface {v1}, Lo/getUid$onNavigationEvent;->extraCallback()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onNavigationEvent(Landroid/graphics/Rect;)V
    .locals 5

    .line 671
    iget-boolean v0, p0, Lo/getUid;->onTransact:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo/getUid;->warmup:I

    iget-object v1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 18777
    iget v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCallback:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onPostMessage(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 672
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 675
    :goto_0
    iget-boolean v1, p0, Lo/getUid;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/getUid;->onPostMessage()F

    move-result v1

    iget v2, p0, Lo/getUid;->getInterfaceDescriptor:F

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    float-to-double v2, v1

    .line 676
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v1, v1, v3

    float-to-double v3, v1

    .line 677
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 678
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final onNavigationEvent(Lo/getUid$onMessageChannelReady;Z)V
    .locals 3

    .line 480
    invoke-virtual {p0}, Lo/getUid;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lo/getUid;->newSession:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 13846
    :cond_1
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 490
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 493
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 494
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 14285
    iput v1, p0, Lo/getUid;->extraCommand:F

    .line 14287
    iget-object v0, p0, Lo/getUid;->INotificationSideChannel:Landroid/graphics/Matrix;

    .line 14288
    invoke-virtual {p0, v1, v0}, Lo/getUid;->ICustomTabsCallback(FLandroid/graphics/Matrix;)V

    .line 14289
    iget-object v1, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 498
    :cond_3
    iget-object v0, p0, Lo/getUid;->ICustomTabsService:Lo/getExperimentsToRemove;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 500
    :cond_4
    invoke-direct {p0}, Lo/getUid;->ICustomTabsCallback$Stub$Proxy()Lo/getExperimentsToRemove;

    move-result-object v0

    .line 499
    :goto_1
    invoke-direct {p0, v0, v2, v2, v2}, Lo/getUid;->onNavigationEvent(Lo/getExperimentsToRemove;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 504
    new-instance v1, Lo/getUid$1;

    invoke-direct {v1, p0, p2, p1}, Lo/getUid$1;-><init>(Lo/getUid;ZLo/getUid$onMessageChannelReady;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 524
    iget-object p1, p0, Lo/getUid;->updateVisuals:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    .line 525
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 526
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 529
    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 531
    :cond_6
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1, p2}, Lo/updateCurrentUser;->onMessageChannelReady(IZ)V

    .line 532
    iget-object p2, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 533
    iget-object p2, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 534
    iget-object p2, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 15285
    iput v2, p0, Lo/getUid;->extraCommand:F

    .line 15287
    iget-object p2, p0, Lo/getUid;->INotificationSideChannel:Landroid/graphics/Matrix;

    .line 15288
    invoke-virtual {p0, v2, p2}, Lo/getUid;->ICustomTabsCallback(FLandroid/graphics/Matrix;)V

    .line 15289
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_7

    .line 537
    invoke-interface {p1}, Lo/getUid$onMessageChannelReady;->onPostMessage()V

    :cond_7
    return-void
.end method

.method onPostMessage()F
    .locals 1

    .line 246
    iget v0, p0, Lo/getUid;->asBinder:F

    return v0
.end method

.method final onPostMessage(F)V
    .locals 2

    .line 371
    iget-object v0, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_0

    .line 10651
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 10652
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 10653
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public onPostMessage(FFF)V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lo/getUid;->asInterface()V

    .line 9371
    iget-object p2, p0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-eqz p2, :cond_0

    .line 9651
    iget-object p3, p2, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget p3, p3, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float p3, p3, p1

    if-eqz p3, :cond_0

    .line 9652
    iget-object p3, p2, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, p3, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 9653
    invoke-virtual {p2}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 22719
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result v0

    .line 22720
    iget v1, p0, Lo/getUid;->INotificationSideChannel$Stub$Proxy:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 22721
    iput v0, p0, Lo/getUid;->INotificationSideChannel$Stub$Proxy:F

    .line 22722
    invoke-virtual {p0}, Lo/getUid;->getInterfaceDescriptor()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRelationshipValidationResult()V
    .locals 0

    return-void
.end method

.method onTransact()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final warmup()Z
    .locals 4

    .line 758
    iget-object v0, p0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 760
    iget v0, p0, Lo/getUid;->requestPostMessageChannel:I

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 763
    :cond_1
    iget v0, p0, Lo/getUid;->requestPostMessageChannel:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method
