.class public Lo/appendViewToAllSpans$extraCallback;
.super Lo/setQueue;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/appendViewToAllSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/widget/MessageSnackBar$SnackBarViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "liveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/widget/MessageSnackBar$Data;",
        "getLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onPostMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/throwIfInMutationOperation<",
            "Lo/appendViewToAllSpans$onNavigationEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 145
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/appendViewToAllSpans$extraCallback;->onPostMessage:Lo/setActive;

    return-void
.end method
