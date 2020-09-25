.class public abstract Lo/resetPreviouslyActiveTrackedQueries;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public getAttributes()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 280
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-object v0
.end method

.method public abstract halfClose()V
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract request(I)V
.end method

.method public abstract sendMessage(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation
.end method

.method public setMessageCompression(Z)V
    .locals 0

    return-void
.end method

.method public abstract start(Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/getPredecessorKey;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent<",
            "TRespT;>;",
            "Lo/getPredecessorKey;",
            ")V"
        }
    .end annotation
.end method
