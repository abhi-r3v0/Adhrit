.class public Lo/setLayoutStateDirection;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setLayoutStateDirection$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 )2\u00020\u0001:\u0001)B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\"\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\"\u001a\u00020#J\"\u0010$\u001a\u00020\u001b2\u0012\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\'0&2\u0006\u0010(\u001a\u00020\u0019R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/dreamplug/widget/ErrorView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "backgroundDrawable",
        "Landroid/graphics/drawable/ShapeDrawable;",
        "value",
        "Lcom/dreamplug/widget/MessageSnackBar$Data;",
        "data",
        "getData",
        "()Lcom/dreamplug/widget/MessageSnackBar$Data;",
        "setData",
        "(Lcom/dreamplug/widget/MessageSnackBar$Data;)V",
        "errorView",
        "Landroid/widget/TextView;",
        "hideAnimator",
        "Landroid/animation/ObjectAnimator;",
        "showAnimator",
        "getLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "hide",
        "",
        "init",
        "show",
        "error",
        "",
        "isTransient",
        "",
        "timeout",
        "",
        "subscribeToStream",
        "stream",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/utils/Event;",
        "lifecycleOwner",
        "Companion",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/animation/ObjectAnimator;

.field private final extraCallback:Landroid/graphics/drawable/ShapeDrawable;

.field private onMessageChannelReady:Landroid/animation/ObjectAnimator;

.field private onNavigationEvent:Landroid/widget/TextView;

.field private onPostMessage:Lo/appendViewToAllSpans$onNavigationEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/setLayoutStateDirection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/setLayoutStateDirection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lo/setLayoutStateDirection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const-string p4, "context"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object p1, p0, Lo/setLayoutStateDirection;->extraCallback:Landroid/graphics/drawable/ShapeDrawable;

    .line 4043
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lo/preferLastSpan$ICustomTabsCallback$Stub;->fabrik_error_view:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4044
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4045
    sget p2, Lo/preferLastSpan$ICustomTabsCallback;->error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.error)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/setLayoutStateDirection;->onNavigationEvent:Landroid/widget/TextView;

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "Resources.getSystem()"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 p3, 0x41400000    # 12.0f

    .line 5010
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 4047
    iget-object p3, p0, Lo/setLayoutStateDirection;->extraCallback:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput p1, v1, p4

    aput p1, v1, p2

    const/4 p2, 0x2

    aput p1, v1, p2

    const/4 p4, 0x3

    aput p1, v1, p4

    const/4 p4, 0x4

    aput p1, v1, p4

    const/4 p4, 0x5

    aput p1, v1, p4

    const/4 p4, 0x6

    aput p1, v1, p4

    const/4 p4, 0x7

    aput p1, v1, p4

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1, p1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    check-cast v0, Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 4049
    iget-object p1, p0, Lo/setLayoutStateDirection;->extraCallback:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const-string p3, "backgroundDrawable.paint"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lo/preferLastSpan$onMessageChannelReady;->rose:I

    invoke-static {p3, p4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4050
    iget-object p1, p0, Lo/setLayoutStateDirection;->onNavigationEvent:Landroid/widget/TextView;

    const-string p3, "errorView"

    if-nez p1, :cond_0

    invoke-static {p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    iget-object p4, p0, Lo/setLayoutStateDirection;->extraCallback:Landroid/graphics/drawable/ShapeDrawable;

    check-cast p4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4051
    iget-object p1, p0, Lo/setLayoutStateDirection;->onNavigationEvent:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    new-array p4, p2, [F

    fill-array-data p4, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p4, "ObjectAnimator.ofFloat(errorView, \"alpha\", 0f, 1f)"

    invoke-static {p1, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setLayoutStateDirection;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_2

    const-string/jumbo p4, "showAnimator"

    .line 4052
    invoke-static {p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4053
    iget-object p1, p0, Lo/setLayoutStateDirection;->onNavigationEvent:Landroid/widget/TextView;

    if-nez p1, :cond_3

    invoke-static {p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "ObjectAnimator.ofFloat(errorView, \"alpha\", 1f, 0f)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setLayoutStateDirection;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_4

    const-string p2, "hideAnimator"

    .line 4054
    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lo/setLayoutStateDirection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/setLayoutStateDirection;)Lo/toLegacyStreamType;
    .locals 1

    .line 5058
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 5059
    :goto_0
    instance-of v0, p0, Lo/toLegacyStreamType;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5060
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.content.ContextWrapper"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5062
    :cond_1
    check-cast p0, Lo/toLegacyStreamType;

    return-object p0
.end method

.method private ICustomTabsCallback(Ljava/lang/String;ZJ)V
    .locals 7

    const-string p3, "error"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p3, p0, Lo/setLayoutStateDirection;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    const-string p4, "hideAnimator"

    if-nez p3, :cond_0

    invoke-static {p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 76
    iget-object p3, p0, Lo/setLayoutStateDirection;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    if-nez p3, :cond_1

    invoke-static {p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 77
    iget-object p3, p0, Lo/setLayoutStateDirection;->onNavigationEvent:Landroid/widget/TextView;

    const-string p4, "errorView"

    if-nez p3, :cond_2

    invoke-static {p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_5

    .line 79
    iget-object p3, p0, Lo/setLayoutStateDirection;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    const-string/jumbo p4, "showAnimator"

    if-nez p3, :cond_3

    invoke-static {p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    new-instance v6, Lo/setLayoutStateDirection$onNavigationEvent;

    const-wide/16 v4, 0x7d0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lo/setLayoutStateDirection$onNavigationEvent;-><init>(Lo/setLayoutStateDirection;Ljava/lang/String;ZJ)V

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p3, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    iget-object p1, p0, Lo/setLayoutStateDirection;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_4

    invoke-static {p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 98
    :cond_5
    iget-object p2, p0, Lo/setLayoutStateDirection;->onNavigationEvent:Landroid/widget/TextView;

    if-nez p2, :cond_6

    invoke-static {p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 74
    invoke-direct {p0, p1, p2, v0, v1}, Lo/setLayoutStateDirection;->ICustomTabsCallback(Ljava/lang/String;ZJ)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/setLayoutStateDirection;)Landroid/widget/TextView;
    .locals 1

    .line 24
    iget-object p0, p0, Lo/setLayoutStateDirection;->onNavigationEvent:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string v0, "errorView"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 3

    .line 103
    iget-object v0, p0, Lo/setLayoutStateDirection;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    const-string/jumbo v1, "showAnimator"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 104
    iget-object v0, p0, Lo/setLayoutStateDirection;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 106
    iget-object v0, p0, Lo/setLayoutStateDirection;->onNavigationEvent:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v1, "errorView"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 107
    iget-object v0, p0, Lo/setLayoutStateDirection;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    const-string v1, "hideAnimator"

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Lo/setLayoutStateDirection$onMessageChannelReady;

    invoke-direct {v2, p0}, Lo/setLayoutStateDirection$onMessageChannelReady;-><init>(Lo/setLayoutStateDirection;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    iget-object v0, p0, Lo/setLayoutStateDirection;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    return-void
.end method

.method public final setData(Lo/appendViewToAllSpans$onNavigationEvent;)V
    .locals 3

    .line 33
    iput-object p1, p0, Lo/setLayoutStateDirection;->onPostMessage:Lo/appendViewToAllSpans$onNavigationEvent;

    .line 34
    iget-object p1, p0, Lo/setLayoutStateDirection;->extraCallback:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const-string v0, "backgroundDrawable.paint"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/setLayoutStateDirection;->onPostMessage:Lo/appendViewToAllSpans$onNavigationEvent;

    if-eqz v1, :cond_0

    .line 1136
    iget v1, v1, Lo/appendViewToAllSpans$onNavigationEvent;->extraCallback:I

    goto :goto_0

    .line 34
    :cond_0
    sget v1, Lo/preferLastSpan$onMessageChannelReady;->rose:I

    :goto_0
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object p1, p0, Lo/setLayoutStateDirection;->onPostMessage:Lo/appendViewToAllSpans$onNavigationEvent;

    if-eqz p1, :cond_1

    .line 2132
    iget-object p1, p1, Lo/appendViewToAllSpans$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const-wide/16 v1, 0x7d0

    .line 3074
    invoke-direct {p0, p1, v0, v1, v2}, Lo/setLayoutStateDirection;->ICustomTabsCallback(Ljava/lang/String;ZJ)V

    :cond_1
    return-void
.end method
