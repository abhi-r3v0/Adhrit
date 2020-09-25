.class public final Lo/ensureRange;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/currentHashLength;


# instance fields
.field private extraCallback:Ljava/lang/String;

.field private onNavigationEvent:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/startChild;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Lo/isDefinedOn;


# direct methods
.method public constructor <init>(Lo/isDefinedOn;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isDefinedOn;",
            "Ljava/util/Queue<",
            "Lo/startChild;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/ensureRange;->onPostMessage:Lo/isDefinedOn;

    .line 17
    invoke-virtual {p1}, Lo/isDefinedOn;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ensureRange;->extraCallback:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lo/ensureRange;->onNavigationEvent:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/ensureRange;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 99
    sget-object p1, Lo/shouldSplit;->onMessageChannelReady:Lo/shouldSplit;

    .line 1031
    new-instance p1, Lo/startChild;

    invoke-direct {p1}, Lo/startChild;-><init>()V

    .line 1034
    iget-object v0, p0, Lo/ensureRange;->onPostMessage:Lo/isDefinedOn;

    .line 1047
    iput-object v0, p1, Lo/startChild;->ICustomTabsCallback:Lo/isDefinedOn;

    .line 1041
    iget-object v0, p0, Lo/ensureRange;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 267
    sget-object p1, Lo/shouldSplit;->ICustomTabsCallback:Lo/shouldSplit;

    .line 2031
    new-instance p1, Lo/startChild;

    invoke-direct {p1}, Lo/startChild;-><init>()V

    .line 2034
    iget-object p2, p0, Lo/ensureRange;->onPostMessage:Lo/isDefinedOn;

    .line 2047
    iput-object p2, p1, Lo/startChild;->ICustomTabsCallback:Lo/isDefinedOn;

    .line 2041
    iget-object p2, p0, Lo/ensureRange;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
