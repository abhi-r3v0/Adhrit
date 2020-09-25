.class public final Lo/onClosed$ICustomTabsCallback;
.super Lo/iteratorFrom;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onClosed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/iteratorFrom;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "round_robin"

    return-object v0
.end method

.method public final extraCallback(Lo/getMinKey$onMessageChannelReady;)Lo/getMinKey;
    .locals 1

    .line 55
    new-instance v0, Lo/onLogMessage;

    invoke-direct {v0, p1}, Lo/onLogMessage;-><init>(Lo/getMinKey$onMessageChannelReady;)V

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

    .line 61
    invoke-static {v0}, Lo/reverseIteratorFrom$onPostMessage;->onPostMessage(Ljava/lang/Object;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object v0

    return-object v0
.end method
