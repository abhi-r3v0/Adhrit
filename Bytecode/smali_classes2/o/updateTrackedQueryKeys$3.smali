.class final Lo/updateTrackedQueryKeys$3;
.super Lo/resetPreviouslyActiveTrackedQueries;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateTrackedQueryKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/resetPreviouslyActiveTrackedQueries<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lo/resetPreviouslyActiveTrackedQueries;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final halfClose()V
    .locals 0

    return-void
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final request(I)V
    .locals 0

    return-void
.end method

.method public final sendMessage(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final start(Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/getPredecessorKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/getPredecessorKey;",
            ")V"
        }
    .end annotation

    return-void
.end method
