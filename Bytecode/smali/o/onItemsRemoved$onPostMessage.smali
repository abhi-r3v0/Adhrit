.class public final Lo/onItemsRemoved$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onItemsRemoved;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/onItemsRemoved$onPostMessage$1;",
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
        "\u0000\t\n\u0000\n\u0002\u0008\u0003*\u0001\u0001\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "com/dreamplug/fabrik/ui/lending/DisbursalLottieFragment$loopAnimationListener$2$1",
        "invoke",
        "()Lcom/dreamplug/fabrik/ui/lending/DisbursalLottieFragment$loopAnimationListener$2$1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onPostMessage:Lo/onItemsRemoved;


# direct methods
.method constructor <init>(Lo/onItemsRemoved;)V
    .locals 0

    iput-object p1, p0, Lo/onItemsRemoved$onPostMessage;->onPostMessage:Lo/onItemsRemoved;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1200
    new-instance v0, Lo/onItemsRemoved$onPostMessage$1;

    invoke-direct {v0, p0}, Lo/onItemsRemoved$onPostMessage$1;-><init>(Lo/onItemsRemoved$onPostMessage;)V

    return-object v0
.end method
