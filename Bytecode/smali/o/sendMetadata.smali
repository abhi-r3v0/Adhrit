.class public final Lo/sendMetadata;
.super Lo/verifySession;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendMetadata$onNavigationEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lo/verifySession;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lo/verifySession;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lo/verifySession;->onNavigationEvent(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 104
    invoke-direct {p0, p1, p2}, Lo/verifySession;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    sget-object v0, Lo/getQueueItem;->onMessageChannelReady:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 107
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .line 108
    invoke-virtual {p0}, Lo/verifySession;->onTransact()I

    move-result v0

    const-string v1, "fadingMode"

    const/4 v2, 0x0

    .line 107
    invoke-static {p1, p2, v1, v2, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 109
    invoke-virtual {p0, p2}, Lo/verifySession;->onNavigationEvent(I)V

    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onMessageChannelReady(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 127
    :cond_0
    invoke-static {p1, p2}, Lo/equals;->onPostMessage(Landroid/view/View;F)V

    .line 128
    sget-object p2, Lo/equals;->extraCallback:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 133
    new-instance p3, Lo/sendMetadata$onNavigationEvent;

    invoke-direct {p3, p1}, Lo/sendMetadata$onNavigationEvent;-><init>(Landroid/view/View;)V

    .line 134
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    new-instance p3, Lo/sendMetadata$3;

    invoke-direct {p3, p0, p1}, Lo/sendMetadata$3;-><init>(Lo/sendMetadata;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-object p2
.end method


# virtual methods
.method public final extraCallback(Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
    .locals 0

    .line 165
    invoke-static {p2}, Lo/equals;->onPostMessage(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 2173
    iget-object p1, p3, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string p3, "android:fade:transitionAlpha"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 2175
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 p3, 0x0

    .line 167
    invoke-direct {p0, p2, p1, p3}, Lo/sendMetadata;->onMessageChannelReady(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Lo/verifySession;->extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 116
    iget-object v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    iget-object p1, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    .line 117
    invoke-static {p1}, Lo/equals;->onMessageChannelReady(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    .line 116
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
    .locals 1

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 1173
    iget-object p3, p3, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string p4, "android:fade:transitionAlpha"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    if-eqz p3, :cond_0

    .line 1175
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    .line 159
    :goto_1
    invoke-direct {p0, p2, p1, p4}, Lo/sendMetadata;->onMessageChannelReady(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
