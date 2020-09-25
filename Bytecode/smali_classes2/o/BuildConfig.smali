.class final Lo/BuildConfig;
.super Lo/handleResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BuildConfig$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final asInterface:J

.field private final extraCallback:[B

.field private final onMessageChannelReady:Ljava/lang/Integer;

.field private final onNavigationEvent:J

.field private final onPostMessage:J

.field private final onTransact:Lo/onResponse;


# direct methods
.method synthetic constructor <init>(JLjava/lang/Integer;J[BLjava/lang/String;JLo/onResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/handleResponse;-><init>()V

    .line 2
    iput-wide p1, p0, Lo/BuildConfig;->onNavigationEvent:J

    .line 3
    iput-object p3, p0, Lo/BuildConfig;->onMessageChannelReady:Ljava/lang/Integer;

    .line 4
    iput-wide p4, p0, Lo/BuildConfig;->onPostMessage:J

    .line 5
    iput-object p6, p0, Lo/BuildConfig;->extraCallback:[B

    .line 6
    iput-object p7, p0, Lo/BuildConfig;->ICustomTabsCallback:Ljava/lang/String;

    .line 7
    iput-wide p8, p0, Lo/BuildConfig;->asInterface:J

    .line 8
    iput-object p10, p0, Lo/BuildConfig;->onTransact:Lo/onResponse;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lo/BuildConfig;->extraCallback:[B

    return-object v0
.end method

.method public final asBinder()Lo/onResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/BuildConfig;->onTransact:Lo/onResponse;

    return-object v0
.end method

.method public final asInterface()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo/BuildConfig;->asInterface:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lo/handleResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2
    check-cast p1, Lo/handleResponse;

    .line 3
    iget-wide v3, p0, Lo/BuildConfig;->onNavigationEvent:J

    invoke-virtual {p1}, Lo/handleResponse;->extraCallback()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/BuildConfig;->onMessageChannelReady:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 4
    move-object v1, p1

    check-cast v1, Lo/BuildConfig;

    .line 5
    iget-object v1, v1, Lo/BuildConfig;->onMessageChannelReady:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_0

    .line 6
    :cond_1
    move-object v3, p1

    check-cast v3, Lo/BuildConfig;

    .line 7
    iget-object v3, v3, Lo/BuildConfig;->onMessageChannelReady:Ljava/lang/Integer;

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-wide v3, p0, Lo/BuildConfig;->onPostMessage:J

    .line 9
    invoke-virtual {p1}, Lo/handleResponse;->onNavigationEvent()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/BuildConfig;->extraCallback:[B

    .line 10
    instance-of v3, p1, Lo/BuildConfig;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lo/BuildConfig;

    iget-object v3, v3, Lo/BuildConfig;->extraCallback:[B

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lo/handleResponse;->ICustomTabsCallback()[B

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/BuildConfig;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 11
    move-object v1, p1

    check-cast v1, Lo/BuildConfig;

    .line 12
    iget-object v1, v1, Lo/BuildConfig;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_2

    .line 13
    :cond_3
    move-object v3, p1

    check-cast v3, Lo/BuildConfig;

    .line 14
    iget-object v3, v3, Lo/BuildConfig;->ICustomTabsCallback:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-wide v3, p0, Lo/BuildConfig;->asInterface:J

    .line 16
    invoke-virtual {p1}, Lo/handleResponse;->asInterface()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/BuildConfig;->onTransact:Lo/onResponse;

    if-nez v1, :cond_4

    .line 17
    check-cast p1, Lo/BuildConfig;

    .line 18
    iget-object p1, p1, Lo/BuildConfig;->onTransact:Lo/onResponse;

    if-nez p1, :cond_5

    goto :goto_3

    .line 19
    :cond_4
    check-cast p1, Lo/BuildConfig;

    .line 20
    iget-object p1, p1, Lo/BuildConfig;->onTransact:Lo/onResponse;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public final extraCallback()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo/BuildConfig;->onNavigationEvent:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-wide v0, p0, Lo/BuildConfig;->onNavigationEvent:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-object v3, p0, Lo/BuildConfig;->onMessageChannelReady:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 3
    iget-wide v5, p0, Lo/BuildConfig;->onPostMessage:J

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    long-to-int v3, v5

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 4
    iget-object v3, p0, Lo/BuildConfig;->extraCallback:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 5
    iget-object v3, p0, Lo/BuildConfig;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 6
    iget-wide v5, p0, Lo/BuildConfig;->asInterface:J

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 7
    iget-object v0, p0, Lo/BuildConfig;->onTransact:Lo/onResponse;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    xor-int v0, v1, v4

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/BuildConfig;->onMessageChannelReady:Ljava/lang/Integer;

    return-object v0
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo/BuildConfig;->onPostMessage:J

    return-wide v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/BuildConfig;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEvent{eventTimeMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/BuildConfig;->onNavigationEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BuildConfig;->onMessageChannelReady:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/BuildConfig;->onPostMessage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BuildConfig;->extraCallback:[B

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtensionJsonProto3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BuildConfig;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timezoneOffsetSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/BuildConfig;->asInterface:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkConnectionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BuildConfig;->onTransact:Lo/onResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
