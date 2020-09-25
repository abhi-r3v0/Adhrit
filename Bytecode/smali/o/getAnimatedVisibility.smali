.class public final Lo/getAnimatedVisibility;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setForceShowIcon;
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;


# instance fields
.field private final ICustomTabsCallback:Z

.field private asBinder:Z

.field private final extraCallback:Lo/createCheckedTextView;

.field private final onMessageChannelReady:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/graphics/Path;

.field private final onPostMessage:Ljava/lang/String;

.field private onTransact:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/getIconBitmap;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/getAnimatedVisibility;->onNavigationEvent:Landroid/graphics/Path;

    .line 22
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;-><init>()V

    iput-object v0, p0, Lo/getAnimatedVisibility;->onTransact:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    .line 1023
    iget-object v0, p3, Lo/getIconBitmap;->ICustomTabsCallback:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lo/getAnimatedVisibility;->onPostMessage:Ljava/lang/String;

    .line 1035
    iget-boolean v0, p3, Lo/getIconBitmap;->onMessageChannelReady:Z

    .line 26
    iput-boolean v0, p0, Lo/getAnimatedVisibility;->ICustomTabsCallback:Z

    .line 27
    iput-object p1, p0, Lo/getAnimatedVisibility;->extraCallback:Lo/createCheckedTextView;

    .line 2027
    iget-object p1, p3, Lo/getIconBitmap;->onNavigationEvent:Lo/onDetachedFromWindow;

    .line 3019
    new-instance p3, Lo/access$101;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p3, p1}, Lo/access$101;-><init>(Ljava/util/List;)V

    .line 28
    iput-object p3, p0, Lo/getAnimatedVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    if-eqz p3, :cond_0

    .line 3173
    iget-object p1, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    iget-object p1, p0, Lo/getAnimatedVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    .line 4045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 5038
    iput-boolean v0, p0, Lo/getAnimatedVisibility;->asBinder:Z

    .line 5039
    iget-object v0, p0, Lo/getAnimatedVisibility;->extraCallback:Lo/createCheckedTextView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 44
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 45
    instance-of v1, v0, Lo/setupAnimatorToVisibility;

    if-eqz v1, :cond_0

    check-cast v0, Lo/setupAnimatorToVisibility;

    .line 5056
    iget-object v1, v0, Lo/setupAnimatorToVisibility;->onMessageChannelReady:Lo/init$ICustomTabsCallback;

    .line 46
    sget-object v2, Lo/init$ICustomTabsCallback;->onPostMessage:Lo/init$ICustomTabsCallback;

    if-ne v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lo/getAnimatedVisibility;->onTransact:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    .line 6014
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6052
    iget-object v0, v0, Lo/setupAnimatorToVisibility;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()Landroid/graphics/Path;
    .locals 3

    .line 56
    iget-boolean v0, p0, Lo/getAnimatedVisibility;->asBinder:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lo/getAnimatedVisibility;->onNavigationEvent:Landroid/graphics/Path;

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lo/getAnimatedVisibility;->onNavigationEvent:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 62
    iget-boolean v0, p0, Lo/getAnimatedVisibility;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 63
    iput-boolean v1, p0, Lo/getAnimatedVisibility;->asBinder:Z

    .line 64
    iget-object v0, p0, Lo/getAnimatedVisibility;->onNavigationEvent:Landroid/graphics/Path;

    return-object v0

    .line 67
    :cond_1
    iget-object v0, p0, Lo/getAnimatedVisibility;->onNavigationEvent:Landroid/graphics/Path;

    iget-object v2, p0, Lo/getAnimatedVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 68
    iget-object v0, p0, Lo/getAnimatedVisibility;->onNavigationEvent:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 70
    iget-object v0, p0, Lo/getAnimatedVisibility;->onTransact:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    iget-object v2, p0, Lo/getAnimatedVisibility;->onNavigationEvent:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->ICustomTabsCallback(Landroid/graphics/Path;)V

    .line 72
    iput-boolean v1, p0, Lo/getAnimatedVisibility;->asBinder:Z

    .line 73
    iget-object v0, p0, Lo/getAnimatedVisibility;->onNavigationEvent:Landroid/graphics/Path;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/getAnimatedVisibility;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method
