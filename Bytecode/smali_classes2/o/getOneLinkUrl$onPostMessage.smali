.class public final Lo/getOneLinkUrl$onPostMessage;
.super Lo/onErrorResponse$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOneLinkUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Integer;

.field private ICustomTabsCallback$Stub:Lo/FirebaseMessagingServiceListener;

.field private asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/handleResponse;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Ljava/lang/Long;

.field private onMessageChannelReady:Ljava/lang/Long;

.field private onNavigationEvent:Lo/setBrandDomain;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/onErrorResponse$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setBrandDomain;)Lo/onErrorResponse$extraCallback;
    .locals 0

    .line 2
    iput-object p1, p0, Lo/getOneLinkUrl$onPostMessage;->onNavigationEvent:Lo/setBrandDomain;

    return-object p0
.end method

.method final extraCallback(Ljava/lang/Integer;)Lo/onErrorResponse$extraCallback;
    .locals 0

    .line 3
    iput-object p1, p0, Lo/getOneLinkUrl$onPostMessage;->ICustomTabsCallback:Ljava/lang/Integer;

    return-object p0
.end method

.method public final extraCallback(Ljava/util/List;)Lo/onErrorResponse$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/handleResponse;",
            ">;)",
            "Lo/onErrorResponse$extraCallback;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lo/getOneLinkUrl$onPostMessage;->asInterface:Ljava/util/List;

    return-object p0
.end method

.method public final extraCallback(Lo/FirebaseMessagingServiceListener;)Lo/onErrorResponse$extraCallback;
    .locals 0

    .line 6
    iput-object p1, p0, Lo/getOneLinkUrl$onPostMessage;->ICustomTabsCallback$Stub:Lo/FirebaseMessagingServiceListener;

    return-object p0
.end method

.method final onMessageChannelReady(Ljava/lang/String;)Lo/onErrorResponse$extraCallback;
    .locals 0

    .line 4
    iput-object p1, p0, Lo/getOneLinkUrl$onPostMessage;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final onNavigationEvent(J)Lo/onErrorResponse$extraCallback;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/getOneLinkUrl$onPostMessage;->onMessageChannelReady:Ljava/lang/Long;

    return-object p0
.end method

.method public final onNavigationEvent()Lo/onErrorResponse;
    .locals 12

    .line 7
    iget-object v0, p0, Lo/getOneLinkUrl$onPostMessage;->extraCallback:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestTimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lo/getOneLinkUrl$onPostMessage;->onMessageChannelReady:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestUptimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lo/getOneLinkUrl;

    iget-object v1, p0, Lo/getOneLinkUrl$onPostMessage;->extraCallback:Ljava/lang/Long;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lo/getOneLinkUrl$onPostMessage;->onMessageChannelReady:Ljava/lang/Long;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lo/getOneLinkUrl$onPostMessage;->onNavigationEvent:Lo/setBrandDomain;

    iget-object v8, p0, Lo/getOneLinkUrl$onPostMessage;->ICustomTabsCallback:Ljava/lang/Integer;

    iget-object v9, p0, Lo/getOneLinkUrl$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v10, p0, Lo/getOneLinkUrl$onPostMessage;->asInterface:Ljava/util/List;

    iget-object v11, p0, Lo/getOneLinkUrl$onPostMessage;->ICustomTabsCallback$Stub:Lo/FirebaseMessagingServiceListener;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lo/getOneLinkUrl;-><init>(JJLo/setBrandDomain;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lo/FirebaseMessagingServiceListener;)V

    return-object v0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(J)Lo/onErrorResponse$extraCallback;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/getOneLinkUrl$onPostMessage;->extraCallback:Ljava/lang/Long;

    return-object p0
.end method
