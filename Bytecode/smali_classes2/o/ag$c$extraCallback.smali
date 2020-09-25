.class final Lo/ag$c$extraCallback;
.super Lo/aj$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ag$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Long;

.field private extraCallback:Ljava/lang/Integer;

.field private onMessageChannelReady:Ljava/lang/Long;

.field private onNavigationEvent:Ljava/lang/Integer;

.field private onPostMessage:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lo/aj$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Lo/aj$ICustomTabsCallback;
    .locals 2

    const-wide/32 v0, 0x240c8400

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/ag$c$extraCallback;->ICustomTabsCallback:Ljava/lang/Long;

    return-object p0
.end method

.method final ICustomTabsCallback$Stub()Lo/aj;
    .locals 11

    .line 135
    iget-object v0, p0, Lo/ag$c$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " maxStorageSizeInBytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_0
    iget-object v0, p0, Lo/ag$c$extraCallback;->onPostMessage:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadBatchSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_1
    iget-object v0, p0, Lo/ag$c$extraCallback;->extraCallback:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " criticalSectionEnterTimeoutMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_2
    iget-object v0, p0, Lo/ag$c$extraCallback;->ICustomTabsCallback:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventCleanUpAge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    :cond_3
    iget-object v0, p0, Lo/ag$c$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " maxBlobByteSizePerRow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    new-instance v0, Lo/ag$c;

    iget-object v1, p0, Lo/ag$c$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lo/ag$c$extraCallback;->onPostMessage:Ljava/lang/Integer;

    .line 155
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v1, p0, Lo/ag$c$extraCallback;->extraCallback:Ljava/lang/Integer;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v1, p0, Lo/ag$c$extraCallback;->ICustomTabsCallback:Ljava/lang/Long;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Lo/ag$c$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lo/ag$c;-><init>(JIIJIB)V

    return-object v0

    .line 151
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final extraCallback()Lo/aj$ICustomTabsCallback;
    .locals 1

    const/16 v0, 0x2710

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/ag$c$extraCallback;->extraCallback:Ljava/lang/Integer;

    return-object p0
.end method

.method final onMessageChannelReady()Lo/aj$ICustomTabsCallback;
    .locals 1

    const v0, 0x14000

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/ag$c$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    return-object p0
.end method

.method final onNavigationEvent()Lo/aj$ICustomTabsCallback;
    .locals 1

    const/16 v0, 0xc8

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/ag$c$extraCallback;->onPostMessage:Ljava/lang/Integer;

    return-object p0
.end method

.method final onPostMessage()Lo/aj$ICustomTabsCallback;
    .locals 2

    const-wide/32 v0, 0xa00000

    .line 109
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/ag$c$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    return-object p0
.end method
