.class public final Lo/ac$onPostMessage;
.super Lo/ag$2$onPostMessage$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Long;

.field public onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ag$2$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lo/ag$2$onPostMessage$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/ag$2$onPostMessage$ICustomTabsCallback;
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/ac$onPostMessage;->onNavigationEvent:Ljava/lang/Long;

    return-object p0
.end method

.method public final onNavigationEvent(J)Lo/ag$2$onPostMessage$ICustomTabsCallback;
    .locals 0

    .line 83
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/ac$onPostMessage;->ICustomTabsCallback:Ljava/lang/Long;

    return-object p0
.end method

.method public final onPostMessage(Ljava/util/Set;)Lo/ag$2$onPostMessage$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/ag$2$onMessageChannelReady;",
            ">;)",
            "Lo/ag$2$onPostMessage$ICustomTabsCallback;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 96
    iput-object p1, p0, Lo/ac$onPostMessage;->onMessageChannelReady:Ljava/util/Set;

    return-object p0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null flags"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()Lo/ag$2$onPostMessage;
    .locals 9

    .line 102
    iget-object v0, p0, Lo/ac$onPostMessage;->ICustomTabsCallback:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delta"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    iget-object v0, p0, Lo/ac$onPostMessage;->onNavigationEvent:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " maxAllowedDelay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_1
    iget-object v0, p0, Lo/ac$onPostMessage;->onMessageChannelReady:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    new-instance v0, Lo/ac;

    iget-object v1, p0, Lo/ac$onPostMessage;->ICustomTabsCallback:Ljava/lang/Long;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lo/ac$onPostMessage;->onNavigationEvent:Ljava/lang/Long;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lo/ac$onPostMessage;->onMessageChannelReady:Ljava/util/Set;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lo/ac;-><init>(JJLjava/util/Set;B)V

    return-object v0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
