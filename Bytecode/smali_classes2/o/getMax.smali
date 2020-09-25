.class public final Lo/getMax;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getHashes;
.implements Lo/interrupt$onNavigationEvent;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMax$onPostMessage;,
        Lo/getMax$onNavigationEvent;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/getMax$onNavigationEvent;

.field final extraCallback:Lo/interrupt;

.field final onNavigationEvent:Lo/interrupt$onNavigationEvent;

.field final onPostMessage:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/interrupt$onNavigationEvent;Lo/getMax$onNavigationEvent;Lo/interrupt;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/getMax;->onPostMessage:Ljava/util/Queue;

    .line 50
    check-cast p1, Lo/interrupt$onNavigationEvent;

    iput-object p1, p0, Lo/getMax;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    .line 51
    check-cast p2, Lo/getMax$onNavigationEvent;

    iput-object p2, p0, Lo/getMax;->ICustomTabsCallback:Lo/getMax$onNavigationEvent;

    .line 3131
    iput-object p0, p3, Lo/interrupt;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    .line 53
    iput-object p3, p0, Lo/getMax;->extraCallback:Lo/interrupt;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 110
    iget-object v0, p0, Lo/getMax;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    new-instance v1, Lo/getMax$onPostMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lo/getMax$onPostMessage;-><init>(Lo/getMax;Ljava/lang/Runnable;B)V

    invoke-interface {v0, v1}, Lo/interrupt$onNavigationEvent;->onPostMessage(Lo/sendAuthHelper$onMessageChannelReady;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/getExecutorService;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/getMax;->extraCallback:Lo/interrupt;

    invoke-virtual {v0, p1}, Lo/interrupt;->ICustomTabsCallback(Lo/getExecutorService;)V

    return-void
.end method

.method public final b_(I)V
    .locals 2

    .line 135
    iget-object v0, p0, Lo/getMax;->ICustomTabsCallback:Lo/getMax$onNavigationEvent;

    new-instance v1, Lo/getMax$2;

    invoke-direct {v1, p0, p1}, Lo/getMax$2;-><init>(Lo/getMax;I)V

    invoke-interface {v0, v1}, Lo/getMax$onNavigationEvent;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final close()V
    .locals 4

    .line 122
    iget-object v0, p0, Lo/getMax;->extraCallback:Lo/interrupt;

    const/4 v1, 0x1

    .line 4204
    iput-boolean v1, v0, Lo/interrupt;->asBinder:Z

    .line 123
    iget-object v0, p0, Lo/getMax;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    new-instance v1, Lo/getMax$onPostMessage;

    new-instance v2, Lo/getMax$1;

    invoke-direct {v2, p0}, Lo/getMax$1;-><init>(Lo/getMax;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lo/getMax$onPostMessage;-><init>(Lo/getMax;Ljava/lang/Runnable;B)V

    invoke-interface {v0, v1}, Lo/interrupt$onNavigationEvent;->onPostMessage(Lo/sendAuthHelper$onMessageChannelReady;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Throwable;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lo/getMax;->ICustomTabsCallback:Lo/getMax$onNavigationEvent;

    new-instance v1, Lo/getMax$6;

    invoke-direct {v1, p0, p1}, Lo/getMax$6;-><init>(Lo/getMax;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lo/getMax$onNavigationEvent;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/onServerInfoUpdate;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lo/getMax;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    new-instance v1, Lo/getMax$onPostMessage;

    new-instance v2, Lo/getMax$3;

    invoke-direct {v2, p0, p1}, Lo/getMax$3;-><init>(Lo/getMax;Lo/onServerInfoUpdate;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lo/getMax$onPostMessage;-><init>(Lo/getMax;Ljava/lang/Runnable;B)V

    invoke-interface {v0, v1}, Lo/interrupt$onNavigationEvent;->onPostMessage(Lo/sendAuthHelper$onMessageChannelReady;)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 2

    .line 154
    iget-object v0, p0, Lo/getMax;->ICustomTabsCallback:Lo/getMax$onNavigationEvent;

    new-instance v1, Lo/getMax$4;

    invoke-direct {v1, p0, p1}, Lo/getMax$4;-><init>(Lo/getMax;Z)V

    invoke-interface {v0, v1}, Lo/getMax$onNavigationEvent;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lo/getMax;->extraCallback:Lo/interrupt;

    .line 3136
    iput p1, v0, Lo/interrupt;->extraCallback:I

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 3

    .line 73
    iget-object v0, p0, Lo/getMax;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    new-instance v1, Lo/getMax$onPostMessage;

    new-instance v2, Lo/getMax$5;

    invoke-direct {v2, p0, p1}, Lo/getMax$5;-><init>(Lo/getMax;I)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lo/getMax$onPostMessage;-><init>(Lo/getMax;Ljava/lang/Runnable;B)V

    invoke-interface {v0, v1}, Lo/interrupt$onNavigationEvent;->onPostMessage(Lo/sendAuthHelper$onMessageChannelReady;)V

    return-void
.end method

.method public final onPostMessage(Lo/partKey;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lo/getMax;->extraCallback:Lo/interrupt;

    .line 3141
    iget-object v1, v0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 3142
    check-cast p1, Lo/partKey;

    iput-object p1, v0, Lo/interrupt;->ICustomTabsCallback:Lo/partKey;

    return-void

    .line 3910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t pass an empty decompressor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3511
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already set full stream decompressor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/sendAuthHelper$onMessageChannelReady;)V
    .locals 2

    .line 147
    :goto_0
    invoke-interface {p1}, Lo/sendAuthHelper$onMessageChannelReady;->onNavigationEvent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lo/getMax;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 4

    .line 6034
    iget-object v0, p0, Lo/getMax;->extraCallback:Lo/interrupt;

    .line 6236
    iget-object v1, v0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 6245
    iget-object v1, v0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-eqz v1, :cond_2

    .line 6246
    iget-object v1, v0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    .line 7191
    iget-boolean v2, v1, Lo/getExecutorService;->onTransact:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 7192
    iget-boolean v2, v1, Lo/getExecutorService;->ICustomTabsCallback$Stub$Proxy:Z

    goto :goto_1

    .line 7511
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GzipInflatingBuffer is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6248
    :cond_2
    iget-object v1, v0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    .line 8063
    iget v1, v1, Lo/buildPennant;->onPostMessage:I

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 6191
    invoke-virtual {v0}, Lo/interrupt;->close()V

    return-void

    .line 6193
    :cond_4
    iput-boolean v3, v0, Lo/interrupt;->onRelationshipValidationResult:Z

    :cond_5
    return-void
.end method
