.class final Lo/reverseIteratorFrom$extraCallback$4;
.super Lo/reverseIteratorFrom$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent(Ljava/net/URI;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/reverseIteratorFrom$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/reverseIteratorFrom$onMessageChannelReady;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lo/reverseIteratorFrom$extraCallback$4;->onNavigationEvent:Lo/reverseIteratorFrom$onMessageChannelReady;

    invoke-direct {p0}, Lo/reverseIteratorFrom$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/unionWith;
    .locals 1

    .line 248
    iget-object v0, p0, Lo/reverseIteratorFrom$extraCallback$4;->onNavigationEvent:Lo/reverseIteratorFrom$onMessageChannelReady;

    .line 1465
    iget-object v0, v0, Lo/reverseIteratorFrom$onMessageChannelReady;->onPostMessage:Lo/unionWith;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/util/Map;)Lo/reverseIteratorFrom$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lo/reverseIteratorFrom$onPostMessage;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lo/reverseIteratorFrom$extraCallback$4;->onNavigationEvent:Lo/reverseIteratorFrom$onMessageChannelReady;

    .line 1493
    iget-object v0, v0, Lo/reverseIteratorFrom$onMessageChannelReady;->extraCallback:Lo/reverseIteratorFrom$onRelationshipValidationResult;

    .line 253
    invoke-virtual {v0, p1}, Lo/reverseIteratorFrom$onRelationshipValidationResult;->onPostMessage(Ljava/util/Map;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 238
    iget-object v0, p0, Lo/reverseIteratorFrom$extraCallback$4;->onNavigationEvent:Lo/reverseIteratorFrom$onMessageChannelReady;

    .line 1445
    iget v0, v0, Lo/reverseIteratorFrom$onMessageChannelReady;->ICustomTabsCallback:I

    return v0
.end method

.method public final onPostMessage()Lo/addToArray;
    .locals 1

    .line 243
    iget-object v0, p0, Lo/reverseIteratorFrom$extraCallback$4;->onNavigationEvent:Lo/reverseIteratorFrom$onMessageChannelReady;

    .line 1455
    iget-object v0, v0, Lo/reverseIteratorFrom$onMessageChannelReady;->onNavigationEvent:Lo/addToArray;

    return-object v0
.end method
