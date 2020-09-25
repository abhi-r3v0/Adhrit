.class final Lo/setHint$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zzo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:J

.field onMessageChannelReady:Lo/cH$onTransact;

.field onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/cH$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic onPostMessage:Lo/setHint;


# direct methods
.method private constructor <init>(Lo/setHint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setHint$ICustomTabsCallback;->onPostMessage:Lo/setHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/setHint;Lo/setHintTextAppearance;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/setHint$ICustomTabsCallback;-><init>(Lo/setHint;)V

    return-void
.end method

.method private static extraCallback(Lo/cH$ICustomTabsCallback;)J
    .locals 4

    .line 29
    invoke-virtual {p0}, Lo/cH$ICustomTabsCallback;->onMessageChannelReady()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final extraCallback(Lo/cH$onTransact;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    return-void
.end method

.method public final onPostMessage(JLo/cH$ICustomTabsCallback;)Z
    .locals 7

    .line 5
    invoke-static {p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 8
    :cond_0
    iget-object v0, p0, Lo/setHint$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setHint$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    .line 10
    :cond_1
    iget-object v0, p0, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0}, Lo/setHint$ICustomTabsCallback;->extraCallback(Lo/cH$ICustomTabsCallback;)J

    move-result-wide v2

    invoke-static {p3}, Lo/setHint$ICustomTabsCallback;->extraCallback(Lo/cH$ICustomTabsCallback;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    .line 12
    :cond_2
    iget-wide v2, p0, Lo/setHint$ICustomTabsCallback;->extraCallback:J

    invoke-virtual {p3}, Lo/fa;->MediaBrowserCompat$CustomActionCallback()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 14
    sget-object v0, Lo/zziq;->onTransact:Lo/setStatusBarForegroundColor;

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v4}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_3

    return v1

    .line 19
    :cond_3
    iput-wide v2, p0, Lo/setHint$ICustomTabsCallback;->extraCallback:J

    .line 20
    iget-object v0, p0, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p3, p0, Lo/setHint$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 23
    sget-object p2, Lo/zziq;->ICustomTabsCallback$Stub:Lo/setStatusBarForegroundColor;

    .line 24
    invoke-virtual {p2, v4}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 25
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt p1, p2, :cond_4

    return v1

    :cond_4
    return p3
.end method
