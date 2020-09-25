.class final Lo/setQueryCompleteIfExists$onPostMessage;
.super Lo/setQueryActiveFlag;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setQueryCompleteIfExists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setQueryActiveFlag<",
        "Lo/assertValidTrackedQuery;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$ChildCompletion;",
        "Lkotlinx/coroutines/JobNode;",
        "Lkotlinx/coroutines/Job;",
        "parent",
        "Lkotlinx/coroutines/JobSupport;",
        "state",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "child",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "proposedUpdate",
        "",
        "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V",
        "invoke",
        "",
        "cause",
        "",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final asInterface:Ljava/lang/Object;

.field private final onMessageChannelReady:Lo/setQueryCompleteIfExists;

.field private final onNavigationEvent:Lo/setQueryCompleteIfExists$onMessageChannelReady;

.field private final onPostMessage:Lo/calcNextNodeAfterPost;


# direct methods
.method public constructor <init>(Lo/setQueryCompleteIfExists;Lo/setQueryCompleteIfExists$onMessageChannelReady;Lo/calcNextNodeAfterPost;Ljava/lang/Object;)V
    .locals 1

    .line 1150
    iget-object v0, p3, Lo/calcNextNodeAfterPost;->onNavigationEvent:Lo/calcCompleteChild;

    check-cast v0, Lo/assertValidTrackedQuery;

    invoke-direct {p0, v0}, Lo/setQueryActiveFlag;-><init>(Lo/assertValidTrackedQuery;)V

    iput-object p1, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onMessageChannelReady:Lo/setQueryCompleteIfExists;

    iput-object p2, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onNavigationEvent:Lo/setQueryCompleteIfExists$onMessageChannelReady;

    iput-object p3, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onPostMessage:Lo/calcNextNodeAfterPost;

    iput-object p4, p0, Lo/setQueryCompleteIfExists$onPostMessage;->asInterface:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2152
    iget-object p1, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onMessageChannelReady:Lo/setQueryCompleteIfExists;

    iget-object v0, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onNavigationEvent:Lo/setQueryCompleteIfExists$onMessageChannelReady;

    iget-object v1, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onPostMessage:Lo/calcNextNodeAfterPost;

    iget-object v2, p0, Lo/setQueryCompleteIfExists$onPostMessage;->asInterface:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lo/setQueryCompleteIfExists;->onPostMessage(Lo/setQueryCompleteIfExists;Lo/setQueryCompleteIfExists$onMessageChannelReady;Lo/calcNextNodeAfterPost;Ljava/lang/Object;)V

    .line 1145
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Throwable;)V
    .locals 3

    .line 1152
    iget-object p1, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onMessageChannelReady:Lo/setQueryCompleteIfExists;

    iget-object v0, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onNavigationEvent:Lo/setQueryCompleteIfExists$onMessageChannelReady;

    iget-object v1, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onPostMessage:Lo/calcNextNodeAfterPost;

    iget-object v2, p0, Lo/setQueryCompleteIfExists$onPostMessage;->asInterface:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lo/setQueryCompleteIfExists;->onPostMessage(Lo/setQueryCompleteIfExists;Lo/setQueryCompleteIfExists$onMessageChannelReady;Lo/calcNextNodeAfterPost;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChildCompletion["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setQueryCompleteIfExists$onPostMessage;->onPostMessage:Lo/calcNextNodeAfterPost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setQueryCompleteIfExists$onPostMessage;->asInterface:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
