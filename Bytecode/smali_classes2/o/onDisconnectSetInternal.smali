.class final Lo/onDisconnectSetInternal;
.super Ljava/lang/Object;
.source ""


# instance fields
.field extraCallback:I

.field final onMessageChannelReady:Lo/fullLimitUpdateChild;

.field private final onPostMessage:Lo/sendSensitive$5;


# direct methods
.method public constructor <init>(Lo/fullLimitUpdateChild;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lo/onDisconnectSetInternal$4;

    invoke-direct {v0, p0, p1}, Lo/onDisconnectSetInternal$4;-><init>(Lo/onDisconnectSetInternal;Lo/toLog;)V

    .line 65
    new-instance p1, Lo/onDisconnectSetInternal$5;

    invoke-direct {p1}, Lo/onDisconnectSetInternal$5;-><init>()V

    .line 77
    new-instance v1, Lo/sendSensitive$5;

    invoke-direct {v1, v0, p1}, Lo/sendSensitive$5;-><init>(Lo/toLog;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lo/onDisconnectSetInternal;->onPostMessage:Lo/sendSensitive$5;

    .line 78
    invoke-static {v1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    iput-object p1, p0, Lo/onDisconnectSetInternal;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lo/onDisconnectSetInternal;->extraCallback:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/onDisconnectSetInternal;->extraCallback:I

    .line 84
    iget-object p1, p0, Lo/onDisconnectSetInternal;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result p1

    if-ltz p1, :cond_5

    const/16 v0, 0x400

    if-gt p1, v0, :cond_4

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1101
    iget-object v2, p0, Lo/onDisconnectSetInternal;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v2}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v2

    .line 1102
    iget-object v3, p0, Lo/onDisconnectSetInternal;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lo/matches;->asBinder()Lo/matches;

    move-result-object v2

    .line 2101
    iget-object v3, p0, Lo/onDisconnectSetInternal;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    .line 2102
    iget-object v4, p0, Lo/onDisconnectSetInternal;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    int-to-long v5, v3

    invoke-interface {v4, v5, v6}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v3

    .line 92
    invoke-virtual {v2}, Lo/matches;->onTransact()I

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    new-instance v4, Lo/setPersistenceCacheSizeBytes;

    invoke-direct {v4, v2, v3}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Lo/matches;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "name.size == 0"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2109
    :cond_1
    iget p1, p0, Lo/onDisconnectSetInternal;->extraCallback:I

    if-lez p1, :cond_3

    .line 2110
    iget-object p1, p0, Lo/onDisconnectSetInternal;->onPostMessage:Lo/sendSensitive$5;

    invoke-virtual {p1}, Lo/sendSensitive$5;->onNavigationEvent()Z

    .line 2111
    iget p1, p0, Lo/onDisconnectSetInternal;->extraCallback:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "compressedLimit > 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/onDisconnectSetInternal;->extraCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-object v0

    .line 86
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "numberOfPairs > 1024: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "numberOfPairs < 0: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
