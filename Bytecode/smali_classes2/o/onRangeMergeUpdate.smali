.class public final Lo/onRangeMergeUpdate;
.super Lo/iteratorFrom;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/iteratorFrom;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "pick_first"

    return-object v0
.end method

.method public final extraCallback(Lo/getMinKey$onMessageChannelReady;)Lo/getMinKey;
    .locals 1

    .line 50
    new-instance v0, Lo/onAuthStatus;

    invoke-direct {v0, p1}, Lo/onAuthStatus;-><init>(Lo/getMinKey$onMessageChannelReady;)V

    return-object v0
.end method

.method public final onPostMessage()Lo/reverseIteratorFrom$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/reverseIteratorFrom$onPostMessage;"
        }
    .end annotation

    const-string v0, "no service config"

    .line 56
    invoke-static {v0}, Lo/reverseIteratorFrom$onPostMessage;->onPostMessage(Ljava/lang/Object;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object v0

    return-object v0
.end method
