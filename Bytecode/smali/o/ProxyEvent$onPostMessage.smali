.class final Lo/ProxyEvent$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ProxyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/ProxyEvent$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:J

.field public extraCallback:Ljava/lang/Object;

.field public onNavigationEvent:I

.field public final onPostMessage:Lo/GoogleReferrer$1;


# direct methods
.method public constructor <init>(Lo/GoogleReferrer$1;)V
    .locals 0

    .line 1862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    iput-object p1, p0, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1854
    check-cast p1, Lo/ProxyEvent$onPostMessage;

    invoke-virtual {p0, p1}, Lo/ProxyEvent$onPostMessage;->onMessageChannelReady(Lo/ProxyEvent$onPostMessage;)I

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Lo/ProxyEvent$onPostMessage;)I
    .locals 4

    .line 1874
    iget-object v0, p0, Lo/ProxyEvent$onPostMessage;->extraCallback:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lo/ProxyEvent$onPostMessage;->extraCallback:Ljava/lang/Object;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v0, v3, :cond_3

    .line 1876
    iget-object p1, p0, Lo/ProxyEvent$onPostMessage;->extraCallback:Ljava/lang/Object;

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    return v1

    .line 1878
    :cond_3
    iget-object v0, p0, Lo/ProxyEvent$onPostMessage;->extraCallback:Ljava/lang/Object;

    if-nez v0, :cond_4

    return v2

    .line 1883
    :cond_4
    iget v0, p0, Lo/ProxyEvent$onPostMessage;->onNavigationEvent:I

    iget v1, p1, Lo/ProxyEvent$onPostMessage;->onNavigationEvent:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    .line 1887
    :cond_5
    iget-wide v0, p0, Lo/ProxyEvent$onPostMessage;->ICustomTabsCallback:J

    iget-wide v2, p1, Lo/ProxyEvent$onPostMessage;->ICustomTabsCallback:J

    invoke-static {v0, v1, v2, v3}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJ)I

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(IJLjava/lang/Object;)V
    .locals 0

    .line 1867
    iput p1, p0, Lo/ProxyEvent$onPostMessage;->onNavigationEvent:I

    .line 1868
    iput-wide p2, p0, Lo/ProxyEvent$onPostMessage;->ICustomTabsCallback:J

    .line 1869
    iput-object p4, p0, Lo/ProxyEvent$onPostMessage;->extraCallback:Ljava/lang/Object;

    return-void
.end method
