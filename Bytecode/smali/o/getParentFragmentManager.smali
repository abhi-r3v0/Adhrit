.class public final Lo/getParentFragmentManager;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/payment/PaymentsStatus;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
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
.field public static final onTransact:Lo/getParentFragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lo/getParentFragmentManager;

    invoke-direct {v0}, Lo/getParentFragmentManager;-><init>()V

    sput-object v0, Lo/getParentFragmentManager;->onTransact:Lo/getParentFragmentManager;

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method
