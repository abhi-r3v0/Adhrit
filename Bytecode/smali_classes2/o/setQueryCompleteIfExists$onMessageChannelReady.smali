.class final Lo/setQueryCompleteIfExists$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pruneAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setQueryCompleteIfExists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0002\u0018\u00002\u00060\u0018j\u0002`,2\u00020-B!\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00050\rj\u0008\u0012\u0004\u0012\u00020\u0005`\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R(\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00188B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010!\u001a\u00020\u00038F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010 R$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010 \"\u0004\u0008\"\u0010#R\u0013\u0010$\u001a\u00020\u00038F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010 R\u001c\u0010\u0002\u001a\u00020\u00018\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0002\u0010%\u001a\u0004\u0008&\u0010\'R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010\u000c\u00a8\u0006+"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "Lkotlinx/coroutines/NodeList;",
        "list",
        "",
        "isCompleting",
        "",
        "rootCause",
        "<init>",
        "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V",
        "exception",
        "",
        "addExceptionLocked",
        "(Ljava/lang/Throwable;)V",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "allocateList",
        "()Ljava/util/ArrayList;",
        "proposedException",
        "",
        "sealLocked",
        "(Ljava/lang/Throwable;)Ljava/util/List;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "value",
        "getExceptionsHolder",
        "()Ljava/lang/Object;",
        "setExceptionsHolder",
        "(Ljava/lang/Object;)V",
        "exceptionsHolder",
        "isActive",
        "()Z",
        "isCancelling",
        "setCompleting",
        "(Z)V",
        "isSealed",
        "Lkotlinx/coroutines/NodeList;",
        "getList",
        "()Lkotlinx/coroutines/NodeList;",
        "getRootCause",
        "()Ljava/lang/Throwable;",
        "setRootCause",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "Lkotlinx/coroutines/Incomplete;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field volatile _exceptionsHolder:Ljava/lang/Object;

.field volatile _isCompleting:I

.field volatile _rootCause:Ljava/lang/Object;

.field final extraCallback:Lo/pruneOldQueries;


# direct methods
.method public constructor <init>(Lo/pruneOldQueries;Ljava/lang/Throwable;)V
    .locals 0

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->extraCallback:Lo/pruneOldQueries;

    const/4 p1, 0x0

    .line 1076
    iput p1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_isCompleting:I

    .line 1081
    iput-object p2, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1086
    iput-object p1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/pruneOldQueries;
    .locals 1

    .line 1072
    iget-object v0, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->extraCallback:Lo/pruneOldQueries;

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Throwable;)V
    .locals 3

    .line 3083
    iget-object v0, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 3084
    iput-object p1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    .line 3088
    :cond_1
    iget-object v0, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 3089
    iput-object p1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    return-void

    .line 1122
    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    if-ne p1, v0, :cond_3

    return-void

    .line 3135
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1125
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4089
    iput-object v1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    return-void

    .line 1130
    :cond_4
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 1131
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "State is "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 2083
    iget-object v0, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finishing[cancelling="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5083
    iget-object v1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1138
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6078
    iget v1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_isCompleting:I

    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6083
    iget-object v1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6088
    iget-object v1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7072
    iget-object v1, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->extraCallback:Lo/pruneOldQueries;

    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
