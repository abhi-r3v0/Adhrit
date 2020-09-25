.class public final Lo/getDecoratedHint$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getChildBoundsWithinSearchView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDecoratedHint;->onMessageChannelReady()Lo/getChildBoundsWithinSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/datadog/android/core/internal/domain/NoOpPersistenceStrategy$getReader$1",
        "Lcom/datadog/android/core/internal/data/Reader;",
        "dropAllBatches",
        "",
        "dropBatch",
        "batchId",
        "",
        "readNextBatch",
        "Lcom/datadog/android/core/internal/domain/Batch;",
        "releaseBatch",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "batchId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage()Lo/postUpdateFocusedState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "batchId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
