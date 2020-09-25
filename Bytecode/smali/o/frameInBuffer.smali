.class public final Lo/frameInBuffer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/frameInBuffer$onPostMessage;
    }
.end annotation


# static fields
.field private static final extraCallback:[Lo/frameInBuffer$onPostMessage;

.field static volatile onMessageChannelReady:[Lo/frameInBuffer$onPostMessage;

.field private static final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/frameInBuffer$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/frameInBuffer$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lo/frameInBuffer$onPostMessage;

    .line 212
    sput-object v0, Lo/frameInBuffer;->extraCallback:[Lo/frameInBuffer$onPostMessage;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/frameInBuffer;->onNavigationEvent:Ljava/util/List;

    .line 215
    sget-object v0, Lo/frameInBuffer;->extraCallback:[Lo/frameInBuffer$onPostMessage;

    sput-object v0, Lo/frameInBuffer;->onMessageChannelReady:[Lo/frameInBuffer$onPostMessage;

    .line 218
    new-instance v0, Lo/frameInBuffer$3;

    invoke-direct {v0}, Lo/frameInBuffer$3;-><init>()V

    sput-object v0, Lo/frameInBuffer;->onPostMessage:Lo/frameInBuffer$onPostMessage;

    return-void
.end method

.method public static varargs extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 113
    sget-object v0, Lo/frameInBuffer;->onPostMessage:Lo/frameInBuffer$onPostMessage;

    invoke-virtual {v0, p0, p1, p2}, Lo/frameInBuffer$onPostMessage;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static onMessageChannelReady(Lo/frameInBuffer$onPostMessage;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 151
    sget-object v0, Lo/frameInBuffer;->onPostMessage:Lo/frameInBuffer$onPostMessage;

    if-eq p0, v0, :cond_0

    .line 154
    sget-object v0, Lo/frameInBuffer;->onNavigationEvent:Ljava/util/List;

    monitor-enter v0

    .line 155
    :try_start_0
    sget-object v1, Lo/frameInBuffer;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object p0, Lo/frameInBuffer;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lo/frameInBuffer$onPostMessage;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lo/frameInBuffer$onPostMessage;

    sput-object p0, Lo/frameInBuffer;->onMessageChannelReady:[Lo/frameInBuffer$onPostMessage;

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot plant Timber into itself."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "tree == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Ljava/lang/String;)Lo/frameInBuffer$onPostMessage;
    .locals 4

    .line 138
    sget-object v0, Lo/frameInBuffer;->onMessageChannelReady:[Lo/frameInBuffer$onPostMessage;

    .line 139
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 140
    iget-object v3, v3, Lo/frameInBuffer$onPostMessage;->extraCallback:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_0
    sget-object p0, Lo/frameInBuffer;->onPostMessage:Lo/frameInBuffer$onPostMessage;

    return-object p0
.end method

.method public static varargs onPostMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 118
    sget-object v0, Lo/frameInBuffer;->onPostMessage:Lo/frameInBuffer$onPostMessage;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p0, p1, p2}, Lo/frameInBuffer$onPostMessage;->onPostMessage(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
