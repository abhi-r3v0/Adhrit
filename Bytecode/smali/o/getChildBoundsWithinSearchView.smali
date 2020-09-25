.class public interface abstract Lo/getChildBoundsWithinSearchView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/data/Reader;",
        "",
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


# virtual methods
.method public abstract extraCallback(Ljava/lang/String;)V
.end method

.method public abstract onPostMessage()Lo/postUpdateFocusedState;
.end method

.method public abstract onPostMessage(Ljava/lang/String;)V
.end method
