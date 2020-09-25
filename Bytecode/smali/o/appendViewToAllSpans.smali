.class public Lo/appendViewToAllSpans;
.super Lo/onChildrenLoaded;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/appendViewToAllSpans$onNavigationEvent;,
        Lo/appendViewToAllSpans$ICustomTabsCallback;,
        Lo/appendViewToAllSpans$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001:\u0003./0B\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010%\u001a\u00020&J\u0008\u0010\'\u001a\u00020&H\u0002J\"\u0010(\u001a\u00020&2\u0012\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100+0*2\u0006\u0010,\u001a\u00020-R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010!\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001e\u001a\u0004\u0008\"\u0010\u001cR\u000e\u0010$\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/dreamplug/widget/MessageSnackBar;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "getAttrs",
        "()Landroid/util/AttributeSet;",
        "cta",
        "Landroid/widget/TextView;",
        "value",
        "Lcom/dreamplug/widget/MessageSnackBar$Data;",
        "data",
        "getData",
        "()Lcom/dreamplug/widget/MessageSnackBar$Data;",
        "setData",
        "(Lcom/dreamplug/widget/MessageSnackBar$Data;)V",
        "getDefStyleAttr",
        "()I",
        "dp24",
        "hideAnimation",
        "Landroid/view/animation/Animation;",
        "getHideAnimation",
        "()Landroid/view/animation/Animation;",
        "hideAnimation$delegate",
        "Lkotlin/Lazy;",
        "hideRunnable",
        "Ljava/lang/Runnable;",
        "showAnimation",
        "getShowAnimation",
        "showAnimation$delegate",
        "textView",
        "hide",
        "",
        "show",
        "subscribeToStream",
        "stream",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/utils/Event;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Data",
        "SnackBarListener",
        "SnackBarViewModel",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final asBinder:Lo/isSameListener;

.field private final asInterface:Lo/isSameListener;

.field onMessageChannelReady:Lo/appendViewToAllSpans$onNavigationEvent;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onRelationshipValidationResult:Ljava/lang/Runnable;

.field private final onTransact:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, v0, v1}, Lo/appendViewToAllSpans;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lo/appendViewToAllSpans;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lo/onChildrenLoaded;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 33
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "Resources.getSystem()"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 5010
    invoke-static {p3, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 34
    iput p2, p0, Lo/appendViewToAllSpans;->onTransact:I

    .line 54
    new-instance p2, Lo/appendViewToAllSpans$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/appendViewToAllSpans$onMessageChannelReady;-><init>(Lo/appendViewToAllSpans;)V

    check-cast p2, Ljava/lang/Runnable;

    iput-object p2, p0, Lo/appendViewToAllSpans;->onRelationshipValidationResult:Ljava/lang/Runnable;

    .line 58
    new-instance p2, Lo/appendViewToAllSpans$onTransact;

    invoke-direct {p2, p0, p1}, Lo/appendViewToAllSpans$onTransact;-><init>(Lo/appendViewToAllSpans;Landroid/content/Context;)V

    check-cast p2, Lo/getServerTime;

    const-string p3, "initializer"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p2}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 58
    iput-object v0, p0, Lo/appendViewToAllSpans;->asBinder:Lo/isSameListener;

    .line 73
    new-instance p2, Lo/appendViewToAllSpans$onPostMessage;

    invoke-direct {p2, p0, p1}, Lo/appendViewToAllSpans$onPostMessage;-><init>(Lo/appendViewToAllSpans;Landroid/content/Context;)V

    check-cast p2, Lo/getServerTime;

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance p3, Lo/fromChildMerge;

    invoke-direct {p3, p2}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p3, Lo/isSameListener;

    .line 73
    iput-object p3, p0, Lo/appendViewToAllSpans;->asInterface:Lo/isSameListener;

    .line 94
    iget-object p2, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    sget p3, Lo/preferLastSpan$ICustomTabsCallback;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    .line 95
    iget-object p2, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    sget p3, Lo/preferLastSpan$onPostMessage;->gilroy_light:I

    invoke-static {p1, p3}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    iget-object p2, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    sget p3, Lo/preferLastSpan$onMessageChannelReady;->white:I

    invoke-static {p1, p3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object p2, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    sget p3, Lo/preferLastSpan$onMessageChannelReady;->white:I

    invoke-static {p1, p3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object p2, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    sget p3, Lo/preferLastSpan$onPostMessage;->gilroy_medium:I

    invoke-static {p1, p3}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    iget-object p1, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    sget p2, Lo/preferLastSpan$ICustomTabsCallback;->cta:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 100
    iget-object p1, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    iget p2, p0, Lo/appendViewToAllSpans;->onTransact:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    iget-object p1, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    iget-object p1, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/appendViewToAllSpans$1;

    invoke-direct {p2, p0}, Lo/appendViewToAllSpans$1;-><init>(Lo/appendViewToAllSpans;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 108
    iget-object p1, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    iget-object p1, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    new-instance p1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 112
    move-object p2, p0

    check-cast p2, Lo/onChildrenLoaded;

    invoke-virtual {p1, p2}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 113
    iget-object v0, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 114
    iget-object v0, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 115
    iget-object v0, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x4

    const/4 v4, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 116
    iget-object v0, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v0, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v2, 0x7

    const/4 v4, 0x6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 117
    iget-object v0, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 6714
    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback:I

    .line 118
    iget-object v0, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 6727
    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    iput p3, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onPostMessage:I

    .line 119
    iget-object v0, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 7497
    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService$Stub:F

    .line 120
    iget-object v0, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lo/appendViewToAllSpans;->onTransact:I

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v2, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 122
    iget-object v0, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 123
    iget-object v0, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x7

    const/4 v4, 0x7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 124
    iget-object v0, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x4

    const/4 v4, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 125
    iget-object v0, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 7714
    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    iput p3, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->ICustomTabsCallback:I

    .line 127
    invoke-virtual {p1, p2}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/appendViewToAllSpans;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lo/appendViewToAllSpans;->onRelationshipValidationResult:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/appendViewToAllSpans;->onMessageChannelReady:Lo/appendViewToAllSpans$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 4134
    iget-object v0, v0, Lo/appendViewToAllSpans$onNavigationEvent;->onMessageChannelReady:Lo/appendViewToAllSpans$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 4141
    iget-object v0, v0, Lo/appendViewToAllSpans$ICustomTabsCallback;->extraCallback:Lo/getServerTime;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 5000
    :cond_0
    iget-object v0, p0, Lo/appendViewToAllSpans;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final setData(Lo/appendViewToAllSpans$onNavigationEvent;)V
    .locals 2

    .line 37
    iput-object p1, p0, Lo/appendViewToAllSpans;->onMessageChannelReady:Lo/appendViewToAllSpans$onNavigationEvent;

    .line 39
    iget-object v0, p0, Lo/appendViewToAllSpans;->ICustomTabsCallback:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2132
    iget-object p1, p1, Lo/appendViewToAllSpans$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 39
    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lo/appendViewToAllSpans;->onNavigationEvent:Landroid/widget/TextView;

    iget-object v0, p0, Lo/appendViewToAllSpans;->onMessageChannelReady:Lo/appendViewToAllSpans$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 2133
    iget-object v1, v0, Lo/appendViewToAllSpans$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 40
    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lo/appendViewToAllSpans;->onMessageChannelReady:Lo/appendViewToAllSpans$onNavigationEvent;

    if-eqz v0, :cond_2

    .line 2136
    iget v0, v0, Lo/appendViewToAllSpans$onNavigationEvent;->extraCallback:I

    goto :goto_1

    .line 41
    :cond_2
    sget v0, Lo/preferLastSpan$onMessageChannelReady;->error_red:I

    :goto_1
    invoke-static {p1, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3084
    iget-object p1, p0, Lo/appendViewToAllSpans;->onRelationshipValidationResult:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4000
    iget-object p1, p0, Lo/appendViewToAllSpans;->asBinder:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/animation/Animation;

    .line 3085
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
