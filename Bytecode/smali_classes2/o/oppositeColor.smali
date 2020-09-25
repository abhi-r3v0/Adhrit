.class final Lo/oppositeColor;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final onPostMessage:Ljava/util/logging/Logger;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/serializeObject$onMessageChannelReady$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/Object;

.field final onMessageChannelReady:Lo/buildAncestorWhereClause;

.field private onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lo/saveTrackedQueryKeys;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/oppositeColor;->onPostMessage:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lo/buildAncestorWhereClause;IJLjava/lang/String;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/oppositeColor;->extraCallback:Ljava/lang/Object;

    if-eqz p5, :cond_2

    if-eqz p1, :cond_1

    .line 65
    check-cast p1, Lo/buildAncestorWhereClause;

    iput-object p1, p0, Lo/oppositeColor;->onMessageChannelReady:Lo/buildAncestorWhereClause;

    if-lez p2, :cond_0

    .line 67
    new-instance p1, Lo/oppositeColor$2;

    invoke-direct {p1, p0, p2}, Lo/oppositeColor$2;-><init>(Lo/oppositeColor;I)V

    iput-object p1, p0, Lo/oppositeColor;->ICustomTabsCallback:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lo/oppositeColor;->ICustomTabsCallback:Ljava/util/Collection;

    .line 83
    :goto_0
    new-instance p1, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;

    invoke-direct {p1}, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " created"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3581
    iput-object p2, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 84
    sget-object p2, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onPostMessage:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    .line 3591
    iput-object p2, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->extraCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    .line 4586
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Long;

    .line 90
    invoke-virtual {p1}, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onPostMessage()Lo/serializeObject$onMessageChannelReady$onPostMessage;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lo/oppositeColor;->onNavigationEvent(Lo/serializeObject$onMessageChannelReady$onPostMessage;)V

    return-void

    .line 2910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "logId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "description"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/oppositeColor;)I
    .locals 2

    .line 39
    iget v0, p0, Lo/oppositeColor;->onNavigationEvent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/oppositeColor;->onNavigationEvent:I

    return v0
.end method

.method static onNavigationEvent(Lo/buildAncestorWhereClause;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3

    .line 124
    sget-object v0, Lo/oppositeColor;->onPostMessage:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/logging/LogRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 127
    sget-object p0, Lo/oppositeColor;->onPostMessage:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 128
    sget-object p0, Lo/oppositeColor;->onPostMessage:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    const-string p0, "log"

    .line 130
    invoke-virtual {v0, p0}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 131
    sget-object p0, Lo/oppositeColor;->onPostMessage:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/serializeObject$onMessageChannelReady$onPostMessage;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/oppositeColor;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lo/oppositeColor;->ICustomTabsCallback:Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lo/oppositeColor;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method final onMessageChannelReady()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lo/oppositeColor;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lo/oppositeColor;->ICustomTabsCallback:Ljava/util/Collection;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0

    throw v1
.end method

.method final onNavigationEvent(Lo/serializeObject$onMessageChannelReady$onPostMessage;)V
    .locals 2

    .line 95
    sget-object v0, Lo/oppositeColor$3;->onNavigationEvent:[I

    iget-object v1, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 103
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 105
    :goto_0
    invoke-virtual {p0, p1}, Lo/oppositeColor;->ICustomTabsCallback(Lo/serializeObject$onMessageChannelReady$onPostMessage;)V

    .line 106
    iget-object v1, p0, Lo/oppositeColor;->onMessageChannelReady:Lo/buildAncestorWhereClause;

    iget-object p1, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lo/oppositeColor;->onNavigationEvent(Lo/buildAncestorWhereClause;Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method
