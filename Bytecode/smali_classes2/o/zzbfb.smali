.class public final Lo/zzbfb;
.super Lo/pathToString;
.source ""


# instance fields
.field private extraCallback:J

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/pathToString;-><init>(Lo/setCheckedIcon;)V

    .line 2
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    .line 3
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;J)V
    .locals 3

    .line 11
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 12
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iput-wide p2, p0, Lo/zzbfb;->extraCallback:J

    .line 15
    :cond_0
    iget-object v0, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 17
    iget-object p2, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_2

    .line 19
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Too many ads visible"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    iget-object v0, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final extraCallback(Ljava/lang/String;JLo/setCloseIconEndPadding;)V
    .locals 3

    if-nez p4, :cond_0

    .line 70
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Not logging ad unit exposure. No active activity"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 75
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Not logging ad unit exposure. Less than 1000 ms. exposure"

    invoke-virtual {p1, p3, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 77
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_ai"

    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_xt"

    .line 79
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 80
    invoke-static {p4, v0, p1}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;Landroid/os/Bundle;Z)V

    .line 81
    invoke-virtual {p0}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object p1

    const-string p2, "am"

    const-string p3, "_xu"

    invoke-virtual {p1, p2, p3, v0}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/zzbfb;Ljava/lang/String;J)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lo/zzbfb;->onPostMessage(Ljava/lang/String;J)V

    return-void
.end method

.method private final onMessageChannelReady(JLo/setCloseIconEndPadding;)V
    .locals 3

    if-nez p3, :cond_0

    .line 57
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Not logging ad exposure. No active activity"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 60
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 61
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p3

    .line 62
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Not logging ad exposure. Less than 1000 ms. exposure"

    invoke-virtual {p3, p2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_xt"

    .line 65
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 66
    invoke-static {p3, v0, p1}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;Landroid/os/Bundle;Z)V

    .line 67
    invoke-virtual {p0}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object p1

    const-string p2, "am"

    const-string p3, "_xa"

    invoke-virtual {p1, p2, p3, v0}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final onNavigationEvent(J)V
    .locals 4

    .line 94
    iget-object v0, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iput-wide p1, p0, Lo/zzbfb;->extraCallback:J

    :cond_1
    return-void
.end method

.method private final onPostMessage(Ljava/lang/String;J)V
    .locals 6

    .line 30
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 31
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {p0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Lo/setChipEndPadding;->extraCallback(Z)Lo/setCloseIconEndPadding;

    move-result-object v1

    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_3

    .line 39
    iget-object v0, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "First ad unit exposure time was never set"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    .line 44
    iget-object v0, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-direct {p0, p1, v2, v3, v1}, Lo/zzbfb;->extraCallback(Ljava/lang/String;JLo/setCloseIconEndPadding;)V

    .line 46
    :goto_0
    iget-object p1, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    iget-wide v2, p0, Lo/zzbfb;->extraCallback:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 48
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "First ad exposure time was never set"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_1
    sub-long/2addr p2, v2

    .line 49
    invoke-direct {p0, p2, p3, v1}, Lo/zzbfb;->onMessageChannelReady(JLo/setCloseIconEndPadding;)V

    .line 50
    iput-wide v4, p0, Lo/zzbfb;->extraCallback:J

    :cond_2
    return-void

    .line 52
    :cond_3
    iget-object p2, p0, Lo/zzbfb;->onNavigationEvent:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 54
    :cond_4
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Call to endAdUnitExposure for unknown ad unit id"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/zzbfb;J)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lo/zzbfb;->onNavigationEvent(J)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/zzbfb;Ljava/lang/String;J)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lo/zzbfb;->ICustomTabsCallback(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 102
    invoke-super {p0}, Lo/pathToString;->ICustomTabsCallback()V

    return-void
.end method

.method public final ICustomTabsCallback(J)V
    .locals 5

    .line 83
    invoke-virtual {p0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lo/setChipEndPadding;->extraCallback(Z)Lo/setCloseIconEndPadding;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    iget-object v3, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p1, v3

    .line 88
    invoke-direct {p0, v2, v3, v4, v0}, Lo/zzbfb;->extraCallback(Ljava/lang/String;JLo/setCloseIconEndPadding;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lo/zzbfb;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-wide v1, p0, Lo/zzbfb;->extraCallback:J

    sub-long v1, p1, v1

    invoke-direct {p0, v1, v2, v0}, Lo/zzbfb;->onMessageChannelReady(JLo/setCloseIconEndPadding;)V

    .line 92
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/zzbfb;->onNavigationEvent(J)V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub()Lo/setChipSpacingResource;
    .locals 1

    .line 106
    invoke-super {p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 111
    invoke-super {p0}, Lo/pathToString;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 113
    invoke-super {p0}, Lo/pathToString;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic asBinder()Lo/AppBarLayout$Behavior;
    .locals 1

    .line 108
    invoke-super {p0}, Lo/pathToString;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic asInterface()Lo/setForegroundGravity;
    .locals 1

    .line 109
    invoke-super {p0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 101
    invoke-super {p0}, Lo/pathToString;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 117
    invoke-super {p0}, Lo/pathToString;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 110
    invoke-super {p0}, Lo/pathToString;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 116
    invoke-super {p0}, Lo/pathToString;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 114
    invoke-super {p0}, Lo/pathToString;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 100
    invoke-super {p0}, Lo/pathToString;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;J)V
    .locals 2

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/zzim;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/zzim;-><init>(Lo/zzbfb;Ljava/lang/String;J)V

    .line 28
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Ad unit id must be a non-empty string"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onNavigationEvent()Lo/zzbfb;
    .locals 1

    .line 103
    invoke-super {p0}, Lo/pathToString;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;J)V
    .locals 2

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/getConditionalUserProperties;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/getConditionalUserProperties;-><init>(Lo/zzbfb;Ljava/lang/String;J)V

    .line 9
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Ad unit id must be a non-empty string"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onPostMessage()Lo/setChipIconSize;
    .locals 1

    .line 104
    invoke-super {p0}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onRelationshipValidationResult()Lo/setExpanded;
    .locals 1

    .line 105
    invoke-super {p0}, Lo/pathToString;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onTransact()Lo/setChipEndPadding;
    .locals 1

    .line 107
    invoke-super {p0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 115
    invoke-super {p0}, Lo/pathToString;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 118
    invoke-super {p0}, Lo/pathToString;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 119
    invoke-super {p0}, Lo/pathToString;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 112
    invoke-super {p0}, Lo/pathToString;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
