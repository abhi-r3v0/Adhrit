.class final Lo/updateToolbarLogo$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateToolbarLogo;->onMessageChannelReady(Lo/asBinder;Lo/getServerTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/asBinder;

.field private synthetic onPostMessage:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Lo/asBinder;Landroid/app/KeyguardManager;)V
    .locals 0

    iput-object p1, p0, Lo/updateToolbarLogo$onMessageChannelReady;->onNavigationEvent:Lo/asBinder;

    iput-object p2, p0, Lo/updateToolbarLogo$onMessageChannelReady;->onPostMessage:Landroid/app/KeyguardManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1078
    sget-object v0, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    iget-object v0, p0, Lo/updateToolbarLogo$onMessageChannelReady;->onNavigationEvent:Lo/asBinder;

    iget-object v1, p0, Lo/updateToolbarLogo$onMessageChannelReady;->onPostMessage:Landroid/app/KeyguardManager;

    invoke-static {v0, v1}, Lo/updateToolbarLogo;->ICustomTabsCallback(Lo/asBinder;Landroid/app/KeyguardManager;)V

    .line 61
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
