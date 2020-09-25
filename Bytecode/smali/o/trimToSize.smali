.class public final Lo/trimToSize;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/trimToSize$extraCallback;,
        Lo/trimToSize$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002JB\u0010\u000f\u001a\u00020\u00102:\u0010\u0003\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0012\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00100\u0011J\"\u0010\u0018\u001a\u00020\u00102\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0012\u0004\u0012\u00020\u00100\u0011R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/DownloadListeners;",
        "",
        "()V",
        "downloadFailedListener",
        "Lcom/dreamplug/androidapp/utils/DownloadListeners$DownloadFailedListener;",
        "getDownloadFailedListener",
        "()Lcom/dreamplug/androidapp/utils/DownloadListeners$DownloadFailedListener;",
        "setDownloadFailedListener",
        "(Lcom/dreamplug/androidapp/utils/DownloadListeners$DownloadFailedListener;)V",
        "downloadFinishListener",
        "Lcom/dreamplug/androidapp/utils/DownloadListeners$DownloadFinishListener;",
        "getDownloadFinishListener",
        "()Lcom/dreamplug/androidapp/utils/DownloadListeners$DownloadFinishListener;",
        "setDownloadFinishListener",
        "(Lcom/dreamplug/androidapp/utils/DownloadListeners$DownloadFinishListener;)V",
        "onDownloadFailed",
        "",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "id",
        "",
        "throwable",
        "onDownloadFinished",
        "",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        "DownloadFailedListener",
        "DownloadFinishListener",
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
.field public extraCallback:Lo/trimToSize$extraCallback;

.field public onPostMessage:Lo/trimToSize$onNavigationEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
