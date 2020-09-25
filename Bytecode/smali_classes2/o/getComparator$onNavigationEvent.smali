.class final Lo/getComparator$onNavigationEvent;
.super Lo/reverseIteratorFrom$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getComparator;


# direct methods
.method private constructor <init>(Lo/getComparator;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lo/getComparator$onNavigationEvent;->ICustomTabsCallback:Lo/getComparator;

    invoke-direct {p0}, Lo/reverseIteratorFrom$extraCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getComparator;B)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lo/getComparator$onNavigationEvent;-><init>(Lo/getComparator;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lo/getComparator$onNavigationEvent;->ICustomTabsCallback:Lo/getComparator;

    invoke-virtual {v0}, Lo/getComparator;->extraCallback()Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getSuccessorKey;

    invoke-virtual {v0}, Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/net/URI;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;
    .locals 2

    .line 152
    iget-object v0, p0, Lo/getComparator$onNavigationEvent;->ICustomTabsCallback:Lo/getComparator;

    invoke-virtual {v0}, Lo/getComparator;->extraCallback()Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getSuccessorKey;

    .line 154
    invoke-virtual {v1, p1, p2}, Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent(Ljava/net/URI;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
