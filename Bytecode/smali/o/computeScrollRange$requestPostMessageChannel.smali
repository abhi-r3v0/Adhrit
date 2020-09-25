.class final Lo/computeScrollRange$requestPostMessageChannel;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollRange;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/isCompatVectorFromResourcesEnabled;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/androidapp/ui/main/rewards/gempulldown/ReferredPeopleManager;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/computeScrollRange$requestPostMessageChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/computeScrollRange$requestPostMessageChannel;

    invoke-direct {v0}, Lo/computeScrollRange$requestPostMessageChannel;-><init>()V

    sput-object v0, Lo/computeScrollRange$requestPostMessageChannel;->ICustomTabsCallback:Lo/computeScrollRange$requestPostMessageChannel;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1426
    new-instance v0, Lo/isCompatVectorFromResourcesEnabled;

    invoke-direct {v0}, Lo/isCompatVectorFromResourcesEnabled;-><init>()V

    return-object v0
.end method
