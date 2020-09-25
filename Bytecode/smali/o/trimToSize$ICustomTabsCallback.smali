.class public final Lo/trimToSize$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/trimToSize$extraCallback;


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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/androidapp/utils/DownloadListeners$onDownloadFailed$1",
        "Lcom/dreamplug/androidapp/utils/DownloadListeners$DownloadFailedListener;",
        "onFailed",
        "",
        "id",
        "",
        "throwable",
        "",
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
.field private synthetic extraCallback:Lo/nextTransactionOrder;


# direct methods
.method public constructor <init>(Lo/nextTransactionOrder;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lo/trimToSize$ICustomTabsCallback;->extraCallback:Lo/nextTransactionOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/trimToSize$ICustomTabsCallback;->extraCallback:Lo/nextTransactionOrder;

    invoke-interface {v0, p1, p2}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
