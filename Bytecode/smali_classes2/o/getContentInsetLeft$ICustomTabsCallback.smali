.class final Lo/getContentInsetLeft$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetLeft;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/getMainThreadExecutor;",
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
        "Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
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
.field public static final onPostMessage:Lo/getContentInsetLeft$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getContentInsetLeft$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getContentInsetLeft$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/getContentInsetLeft$ICustomTabsCallback;->onPostMessage:Lo/getContentInsetLeft$ICustomTabsCallback;

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

    .line 1042
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    const-class v0, Lo/getMainThreadExecutor;

    invoke-static {v0}, Lo/factorInBindTime;->onPostMessage(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMainThreadExecutor;

    return-object v0
.end method
