.class final Lo/findRootMostMatchingPath$onNavigationEvent;
.super Lo/isOverwrite;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findRootMostMatchingPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;",
        "Lkotlinx/coroutines/CancelHandler;",
        "receive",
        "Lkotlinx/coroutines/channels/Receive;",
        "(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/Receive;)V",
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
.field private final extraCallback:Lo/rootMostValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/rootMostValue<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/findRootMostMatchingPath;Lo/rootMostValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/rootMostValue<",
            "*>;)V"
        }
    .end annotation

    .line 788
    invoke-direct {p0}, Lo/isOverwrite;-><init>()V

    iput-object p2, p0, Lo/findRootMostMatchingPath$onNavigationEvent;->extraCallback:Lo/rootMostValue;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Throwable;)V
    .locals 0

    .line 790
    iget-object p1, p0, Lo/findRootMostMatchingPath$onNavigationEvent;->extraCallback:Lo/rootMostValue;

    invoke-virtual {p1}, Lo/updateParents;->X_()Z

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1790
    iget-object p1, p0, Lo/findRootMostMatchingPath$onNavigationEvent;->extraCallback:Lo/rootMostValue;

    invoke-virtual {p1}, Lo/updateParents;->X_()Z

    .line 788
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoveReceiveOnCancel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/findRootMostMatchingPath$onNavigationEvent;->extraCallback:Lo/rootMostValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
