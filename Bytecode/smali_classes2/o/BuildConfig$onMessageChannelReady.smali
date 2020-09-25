.class public final Lo/BuildConfig$onMessageChannelReady;
.super Lo/handleResponse$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BuildConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Long;

.field private extraCallback:[B

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/Long;

.field private onPostMessage:Ljava/lang/Integer;

.field private onRelationshipValidationResult:Ljava/lang/Long;

.field private onTransact:Lo/onResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/handleResponse$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)Lo/handleResponse$onMessageChannelReady;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/BuildConfig$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Long;

    return-object p0
.end method

.method final ICustomTabsCallback(Ljava/lang/String;)Lo/handleResponse$onMessageChannelReady;
    .locals 0

    .line 4
    iput-object p1, p0, Lo/BuildConfig$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method

.method public final ICustomTabsCallback(Lo/onResponse;)Lo/handleResponse$onMessageChannelReady;
    .locals 0

    .line 5
    iput-object p1, p0, Lo/BuildConfig$onMessageChannelReady;->onTransact:Lo/onResponse;

    return-object p0
.end method

.method public final onMessageChannelReady(J)Lo/handleResponse$onMessageChannelReady;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/BuildConfig$onMessageChannelReady;->onRelationshipValidationResult:Ljava/lang/Long;

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/Integer;)Lo/handleResponse$onMessageChannelReady;
    .locals 0

    .line 2
    iput-object p1, p0, Lo/BuildConfig$onMessageChannelReady;->onPostMessage:Ljava/lang/Integer;

    return-object p0
.end method

.method public final onNavigationEvent(J)Lo/handleResponse$onMessageChannelReady;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/BuildConfig$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Long;

    return-object p0
.end method

.method final onPostMessage([B)Lo/handleResponse$onMessageChannelReady;
    .locals 0

    .line 3
    iput-object p1, p0, Lo/BuildConfig$onMessageChannelReady;->extraCallback:[B

    return-object p0
.end method

.method public final onPostMessage()Lo/handleResponse;
    .locals 13

    .line 6
    iget-object v0, p0, Lo/BuildConfig$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventTimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_0
    iget-object v0, p0, Lo/BuildConfig$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventUptimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_1
    iget-object v0, p0, Lo/BuildConfig$onMessageChannelReady;->onRelationshipValidationResult:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timezoneOffsetSeconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Lo/BuildConfig;

    iget-object v1, p0, Lo/BuildConfig$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Long;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lo/BuildConfig$onMessageChannelReady;->onPostMessage:Ljava/lang/Integer;

    iget-object v1, p0, Lo/BuildConfig$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Long;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lo/BuildConfig$onMessageChannelReady;->extraCallback:[B

    iget-object v9, p0, Lo/BuildConfig$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p0, Lo/BuildConfig$onMessageChannelReady;->onRelationshipValidationResult:Ljava/lang/Long;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    iget-object v12, p0, Lo/BuildConfig$onMessageChannelReady;->onTransact:Lo/onResponse;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lo/BuildConfig;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLo/onResponse;)V

    return-object v0

    .line 17
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
