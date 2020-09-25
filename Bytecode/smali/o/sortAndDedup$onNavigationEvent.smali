.class final Lo/sortAndDedup$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sortAndDedup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/sortAndDedup$ICustomTabsCallback;",
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
        "Lcom/dreamplug/utils/DeviceInfo$ScreenResolution;",
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
.field public static final onNavigationEvent:Lo/sortAndDedup$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/sortAndDedup$onNavigationEvent;

    invoke-direct {v0}, Lo/sortAndDedup$onNavigationEvent;-><init>()V

    sput-object v0, Lo/sortAndDedup$onNavigationEvent;->onNavigationEvent:Lo/sortAndDedup$onNavigationEvent;

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
    .locals 3

    .line 1023
    new-instance v0, Lo/sortAndDedup$ICustomTabsCallback;

    invoke-direct {v0}, Lo/sortAndDedup$ICustomTabsCallback;-><init>()V

    .line 1024
    sget-object v1, Lo/isMeasuring;->onPostMessage:Lo/isMeasuring;

    invoke-static {}, Lo/isMeasuring;->extraCallback()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/WindowManager;

    .line 1025
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1026
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1027
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1028
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 1043
    iput v1, v0, Lo/sortAndDedup$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 1029
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 2042
    iput v1, v0, Lo/sortAndDedup$ICustomTabsCallback;->extraCallback:I

    return-object v0

    .line 1024
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
