.class public final Lo/setQueryComplete;
.super Lo/isOverwrite;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/DisposeOnCancel;",
        "Lkotlinx/coroutines/CancelHandler;",
        "handle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "(Lkotlinx/coroutines/DisposableHandle;)V",
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
.field private final onNavigationEvent:Lo/setQueryInactive;


# direct methods
.method public constructor <init>(Lo/setQueryInactive;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Lo/isOverwrite;-><init>()V

    iput-object p1, p0, Lo/setQueryComplete;->onNavigationEvent:Lo/setQueryInactive;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Throwable;)V
    .locals 0

    .line 299
    iget-object p1, p0, Lo/setQueryComplete;->onNavigationEvent:Lo/setQueryInactive;

    invoke-interface {p1}, Lo/setQueryInactive;->onNavigationEvent()V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1299
    iget-object p1, p0, Lo/setQueryComplete;->onNavigationEvent:Lo/setQueryInactive;

    invoke-interface {p1}, Lo/setQueryInactive;->onNavigationEvent()V

    .line 298
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisposeOnCancel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setQueryComplete;->onNavigationEvent:Lo/setQueryInactive;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
