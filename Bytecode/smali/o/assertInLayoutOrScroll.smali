.class public final Lo/assertInLayoutOrScroll;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatusRepo;",
        "",
        "()V",
        "storePaymentStatusLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus;",
        "getStorePaymentStatusLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
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
.field private static final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/getThumbTintList<",
            "Lo/addFocusables;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/assertInLayoutOrScroll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lo/assertInLayoutOrScroll;

    invoke-direct {v0}, Lo/assertInLayoutOrScroll;-><init>()V

    sput-object v0, Lo/assertInLayoutOrScroll;->onPostMessage:Lo/assertInLayoutOrScroll;

    .line 7
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/assertInLayoutOrScroll;->onNavigationEvent:Lo/setActive;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lo/getThumbTintList<",
            "Lo/addFocusables;",
            ">;>;"
        }
    .end annotation

    .line 7
    sget-object v0, Lo/assertInLayoutOrScroll;->onNavigationEvent:Lo/setActive;

    return-object v0
.end method
