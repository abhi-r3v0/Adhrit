.class public abstract Lo/updateLastUse;
.super Lo/setQueryActiveFlag;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lo/assertValidTrackedQuery;",
        ">",
        "Lo/setQueryActiveFlag<",
        "TJ;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008 \u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/coroutines/JobCancellingNode;",
        "J",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/JobNode;",
        "job",
        "(Lkotlinx/coroutines/Job;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/assertValidTrackedQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .line 1455
    invoke-direct {p0, p1}, Lo/setQueryActiveFlag;-><init>(Lo/assertValidTrackedQuery;)V

    return-void
.end method
