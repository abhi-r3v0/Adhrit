.class public abstract Lo/getMaxEntry;
.super Lo/getLeft;
.source ""

# interfaces
.implements Lo/colorFlip;
.implements Lo/onDisconnectMerge$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMaxEntry$ICustomTabsCallback;,
        Lo/getMaxEntry$onPostMessage;,
        Lo/getMaxEntry$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/util/logging/Logger;


# instance fields
.field private final ICustomTabsCallback:Lo/putInternal;

.field private volatile ICustomTabsCallback$Stub:Z

.field private asInterface:Lo/getPredecessorKey;

.field private final extraCallback:Lo/isPersistenceEnabled;

.field private onNavigationEvent:Z

.field public onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lo/getMaxEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/getMaxEntry;->onMessageChannelReady:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lo/restoreState;Lo/restoreAuth;Lo/putInternal;Lo/getPredecessorKey;Lo/deleteTrackedQuery;Z)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lo/getLeft;-><init>()V

    if-eqz p4, :cond_2

    if-eqz p3, :cond_1

    .line 120
    check-cast p3, Lo/putInternal;

    iput-object p3, p0, Lo/getMaxEntry;->ICustomTabsCallback:Lo/putInternal;

    .line 121
    invoke-static {p5}, Lo/getAuthTokenProvider;->onMessageChannelReady(Lo/deleteTrackedQuery;)Z

    move-result p3

    iput-boolean p3, p0, Lo/getMaxEntry;->onPostMessage:Z

    .line 122
    iput-boolean p6, p0, Lo/getMaxEntry;->onNavigationEvent:Z

    if-nez p6, :cond_0

    .line 124
    new-instance p3, Lo/onDisconnectMerge;

    invoke-direct {p3, p0, p1, p2}, Lo/onDisconnectMerge;-><init>(Lo/onDisconnectMerge$ICustomTabsCallback;Lo/restoreState;Lo/restoreAuth;)V

    iput-object p3, p0, Lo/getMaxEntry;->extraCallback:Lo/isPersistenceEnabled;

    .line 125
    iput-object p4, p0, Lo/getMaxEntry;->asInterface:Lo/getPredecessorKey;

    return-void

    .line 127
    :cond_0
    new-instance p1, Lo/getMaxEntry$ICustomTabsCallback;

    invoke-direct {p1, p0, p4, p2}, Lo/getMaxEntry$ICustomTabsCallback;-><init>(Lo/getMaxEntry;Lo/getPredecessorKey;Lo/restoreAuth;)V

    iput-object p1, p0, Lo/getMaxEntry;->extraCallback:Lo/isPersistenceEnabled;

    return-void

    .line 2910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "transportTracer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "headers"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback$Stub()Ljava/util/logging/Logger;
    .locals 1

    .line 51
    sget-object v0, Lo/getMaxEntry;->onMessageChannelReady:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected abstract ICustomTabsCallback()Lo/getMaxEntry$onPostMessage;
.end method

.method public final ICustomTabsCallback(I)V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lo/getMaxEntry;->onNavigationEvent()Lo/getMaxEntry$onMessageChannelReady;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/getMaxEntry$onMessageChannelReady;->extraCallback(I)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lo/getMaxEntry;->V_()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    .line 225
    sget-object v1, Lo/removeNested;->extraCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 9065
    iget-object v0, v0, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote_addr"

    .line 225
    invoke-virtual {p1, v1, v0}, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/assertValidTrackedQuery$onPostMessage;

    return-void
.end method

.method public final extraCallback(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lo/getMaxEntry;->extraCallback:Lo/isPersistenceEnabled;

    invoke-interface {v0, p1}, Lo/isPersistenceEnabled;->onNavigationEvent(I)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 219
    invoke-super {p0}, Lo/getLeft;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/getMaxEntry;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onMessageChannelReady()Lo/isPersistenceEnabled;
    .locals 1

    .line 179
    iget-object v0, p0, Lo/getMaxEntry;->extraCallback:Lo/isPersistenceEnabled;

    return-object v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lo/getMaxEntry;->ICustomTabsCallback()Lo/getMaxEntry$onPostMessage;

    move-result-object v0

    .line 3155
    iget-object v0, v0, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    invoke-interface {v0, p1}, Lo/getHashes;->onNavigationEvent(I)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/emptyMap;)V
    .locals 3

    .line 7516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 213
    iput-boolean v2, p0, Lo/getMaxEntry;->ICustomTabsCallback$Stub:Z

    .line 214
    invoke-virtual {p0}, Lo/getMaxEntry;->onNavigationEvent()Lo/getMaxEntry$onMessageChannelReady;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/getMaxEntry$onMessageChannelReady;->onNavigationEvent(Lo/emptyMap;)V

    return-void

    .line 8142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Should not cancel with OK status"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/sendPut;ZZI)V
    .locals 1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lo/getMaxEntry;->onNavigationEvent()Lo/getMaxEntry$onMessageChannelReady;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lo/getMaxEntry$onMessageChannelReady;->extraCallback(Lo/sendPut;ZZI)V

    return-void

    .line 6142
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null frame before EOS"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract onNavigationEvent()Lo/getMaxEntry$onMessageChannelReady;
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lo/getMaxEntry;->ICustomTabsCallback()Lo/getMaxEntry$onPostMessage;

    move-result-object v0

    .line 3264
    iput-boolean p1, v0, Lo/getMaxEntry$onPostMessage;->onNavigationEvent:Z

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lo/getMaxEntry;->ICustomTabsCallback()Lo/getMaxEntry$onPostMessage;

    move-result-object v0

    .line 6305
    iget-boolean v0, v0, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lo/getMaxEntry;->ICustomTabsCallback()Lo/getMaxEntry$onPostMessage;

    move-result-object v0

    const/4 v1, 0x1

    .line 7301
    iput-boolean v1, v0, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady:Z

    .line 206
    invoke-virtual {p0}, Lo/getMaxEntry;->asInterface()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/loadNestedQuery;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lo/getMaxEntry;->ICustomTabsCallback()Lo/getMaxEntry$onPostMessage;

    move-result-object v0

    .line 4268
    iget-object v1, v0, Lo/getMaxEntry$onPostMessage;->onPostMessage:Lo/rotateRight;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 4270
    check-cast p1, Lo/loadNestedQuery;

    iput-object p1, v0, Lo/getMaxEntry$onPostMessage;->ICustomTabsCallback:Lo/loadNestedQuery;

    return-void

    .line 4910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "decompressorRegistry"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4511
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already called start"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/rotateRight;)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lo/getMaxEntry;->ICustomTabsCallback()Lo/getMaxEntry$onPostMessage;

    move-result-object v0

    .line 5275
    iget-object v1, v0, Lo/getMaxEntry$onPostMessage;->onPostMessage:Lo/rotateRight;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 5276
    check-cast p1, Lo/rotateRight;

    iput-object p1, v0, Lo/getMaxEntry$onPostMessage;->onPostMessage:Lo/rotateRight;

    .line 165
    iget-boolean p1, p0, Lo/getMaxEntry;->onNavigationEvent:Z

    if-nez p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lo/getMaxEntry;->onNavigationEvent()Lo/getMaxEntry$onMessageChannelReady;

    move-result-object p1

    iget-object v0, p0, Lo/getMaxEntry;->asInterface:Lo/getPredecessorKey;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lo/getMaxEntry$onMessageChannelReady;->extraCallback(Lo/getPredecessorKey;[B)V

    .line 167
    iput-object v1, p0, Lo/getMaxEntry;->asInterface:Lo/getPredecessorKey;

    :cond_1
    return-void

    .line 5910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5511
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already called setListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/saveNode;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lo/getMaxEntry;->asInterface:Lo/getPredecessorKey;

    sget-object v1, Lo/getAuthTokenProvider;->extraCallback:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    .line 134
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lo/saveNode;->extraCallback(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 135
    iget-object p1, p0, Lo/getMaxEntry;->asInterface:Lo/getPredecessorKey;

    sget-object v2, Lo/getAuthTokenProvider;->extraCallback:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic onRelationshipValidationResult()Lo/getLeft$onPostMessage;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/getMaxEntry;->ICustomTabsCallback()Lo/getMaxEntry$onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact()Lo/putInternal;
    .locals 1

    .line 229
    iget-object v0, p0, Lo/getMaxEntry;->ICustomTabsCallback:Lo/putInternal;

    return-object v0
.end method
