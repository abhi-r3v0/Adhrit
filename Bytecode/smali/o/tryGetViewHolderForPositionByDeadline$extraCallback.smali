.class public final Lo/tryGetViewHolderForPositionByDeadline$extraCallback;
.super Lo/tryGetViewHolderForPositionByDeadline$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tryGetViewHolderForPositionByDeadline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/tryGetViewHolderForPositionByDeadline$onPostMessage;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B!\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/AuthQueue$CallData;",
        "T",
        "Lcom/dreamplug/network/internals/AuthQueue$CallDataParent;",
        "call",
        "Lretrofit2/Call;",
        "callback",
        "Lretrofit2/Callback;",
        "(Lretrofit2/Call;Lretrofit2/Callback;)V",
        "enqueue",
        "",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final extraCallback:Lo/hasIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/hasIndex<",
            "TT;>;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/fromQueryDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromQueryDefinition<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/fromQueryDefinition;Lo/hasIndex;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fromQueryDefinition<",
            "TT;>;",
            "Lo/hasIndex<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lo/tryGetViewHolderForPositionByDeadline$onPostMessage;-><init>()V

    iput-object p1, p0, Lo/tryGetViewHolderForPositionByDeadline$extraCallback;->onNavigationEvent:Lo/fromQueryDefinition;

    iput-object p2, p0, Lo/tryGetViewHolderForPositionByDeadline$extraCallback;->extraCallback:Lo/hasIndex;

    return-void
.end method
