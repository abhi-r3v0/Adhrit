.class public final Lo/onStopLoading;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/addcard/AddVerifyViewModel;",
        "",
        "()V",
        "cardAddVerifyResult",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/androidapp/core/Event;",
        "",
        "getCardAddVerifyResult",
        "()Landroidx/lifecycle/MutableLiveData;",
        "updateCardAddVerifyResult",
        "",
        "result",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/onStopLoading;

.field private static final onPostMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/getThumbTintList<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lo/onStopLoading;

    invoke-direct {v0}, Lo/onStopLoading;-><init>()V

    sput-object v0, Lo/onStopLoading;->onNavigationEvent:Lo/onStopLoading;

    .line 8
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/onStopLoading;->onPostMessage:Lo/setActive;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lo/getThumbTintList<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 8
    sget-object v0, Lo/onStopLoading;->onPostMessage:Lo/setActive;

    return-object v0
.end method

.method public static onNavigationEvent(Z)V
    .locals 2

    .line 11
    sget-object v0, Lo/onStopLoading;->onPostMessage:Lo/setActive;

    new-instance v1, Lo/getThumbTintList;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v1, p0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
