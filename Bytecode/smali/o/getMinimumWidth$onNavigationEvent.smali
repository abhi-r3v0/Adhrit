.class public final Lo/getMinimumWidth$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setProjectId$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinimumWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setProjectId$onNavigationEvent<",
        "Lo/setDatabaseUrl;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0016\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/qr/QrFragment$initialiseDetectorsAndSources$1",
        "Lcom/google/android/gms/vision/Detector$Processor;",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        "receiveDetections",
        "",
        "detections",
        "Lcom/google/android/gms/vision/Detector$Detections;",
        "release",
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
.field private synthetic onPostMessage:Lo/getMinimumWidth;


# direct methods
.method constructor <init>(Lo/getMinimumWidth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lo/getMinimumWidth$onNavigationEvent;->onPostMessage:Lo/getMinimumWidth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/setProjectId$extraCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setProjectId$extraCallback<",
            "Lo/setDatabaseUrl;",
            ">;)V"
        }
    .end annotation

    const-string v0, "detections"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    iget-object p1, p1, Lo/setProjectId$extraCallback;->onPostMessage:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setDatabaseUrl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lo/setDatabaseUrl;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    iget-object v0, p0, Lo/getMinimumWidth$onNavigationEvent;->onPostMessage:Lo/getMinimumWidth;

    invoke-static {v0}, Lo/getMinimumWidth;->onNavigationEvent(Lo/getMinimumWidth;)Lo/onAdapterChanged;

    move-result-object v0

    .line 1010
    iget-object v0, v0, Lo/onAdapterChanged;->extraCallback:Lo/setActive;

    .line 62
    new-instance v1, Lo/getChildRectangleOnScreenScrollAmount;

    invoke-direct {v1, p1}, Lo/getChildRectangleOnScreenScrollAmount;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
