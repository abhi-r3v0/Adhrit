.class final Lo/onPanelClosed$extraCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onServiceConnected;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPanelClosed$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/onServiceConnected<",
        "TX;TY;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/onPanelClosed$extraCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/onPanelClosed$extraCallback$1;

    invoke-direct {v0}, Lo/onPanelClosed$extraCallback$1;-><init>()V

    sput-object v0, Lo/onPanelClosed$extraCallback$1;->onNavigationEvent:Lo/onPanelClosed$extraCallback$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 10
    check-cast p1, Lclub/cred/credcurrency/CredPointCountModel;

    if-eqz p1, :cond_0

    .line 2010
    iget-object p1, p1, Lclub/cred/credcurrency/CredPointCountModel;->extraCallback:Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v0, "COINS"

    .line 1034
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclub/cred/credcurrency/CredPointModel;

    if-eqz p1, :cond_0

    .line 2012
    iget-wide v0, p1, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
