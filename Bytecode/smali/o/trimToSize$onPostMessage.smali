.class public final Lo/trimToSize$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/trimToSize$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trimToSize;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/androidapp/utils/DownloadListeners$onDownloadFinished$1",
        "Lcom/dreamplug/androidapp/utils/DownloadListeners$DownloadFinishListener;",
        "onDownloaded",
        "",
        "isCompletelyDownloaded",
        "",
        "imageInfo",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/nextTransactionOrder;


# direct methods
.method public constructor <init>(Lo/nextTransactionOrder;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lo/trimToSize$onPostMessage;->onPostMessage:Lo/nextTransactionOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(ZLo/AFHelper;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lo/trimToSize$onPostMessage;->onPostMessage:Lo/nextTransactionOrder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
