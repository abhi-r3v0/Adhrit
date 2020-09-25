.class final Lo/onPanelClosed$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPanelClosed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/onPanelClosed$ICustomTabsCallback$5;",
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
        "club/cred/credcurrency/CredPointsCount$pointLiveData$2$1",
        "invoke",
        "()Lclub/cred/credcurrency/CredPointsCount$pointLiveData$2$1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/onPanelClosed$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/onPanelClosed$ICustomTabsCallback;

    invoke-direct {v0}, Lo/onPanelClosed$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/onPanelClosed$ICustomTabsCallback;->onNavigationEvent:Lo/onPanelClosed$ICustomTabsCallback;

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

    .line 1017
    new-instance v0, Lo/onPanelClosed$ICustomTabsCallback$5;

    invoke-direct {v0}, Lo/onPanelClosed$ICustomTabsCallback$5;-><init>()V

    return-object v0
.end method
