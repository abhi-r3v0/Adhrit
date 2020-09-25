.class public final Lo/onLayoutCompleted;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/getRowCountForAccessibility$ICustomTabsCallback;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialLiveData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/interstitial/InterstitialManager$InterstitialData;",
        "()V",
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
.field public static final onTransact:Lo/onLayoutCompleted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/onLayoutCompleted;

    invoke-direct {v0}, Lo/onLayoutCompleted;-><init>()V

    sput-object v0, Lo/onLayoutCompleted;->onTransact:Lo/onLayoutCompleted;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method
