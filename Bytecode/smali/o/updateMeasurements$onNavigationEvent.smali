.class public final Lo/updateMeasurements$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateMeasurements;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lending/LendingViewProtocolKt$delay$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Landroid/view/View;

.field private synthetic onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/updateMeasurements;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/updateMeasurements;)V
    .locals 0

    iput-object p1, p0, Lo/updateMeasurements$onNavigationEvent;->extraCallback:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lo/updateMeasurements$onNavigationEvent;->onMessageChannelReady:I

    iput-object p2, p0, Lo/updateMeasurements$onNavigationEvent;->onNavigationEvent:Lo/updateMeasurements;

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1016
    iget-object v0, p0, Lo/updateMeasurements$onNavigationEvent;->extraCallback:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lo/updateMeasurements$onNavigationEvent;->onNavigationEvent:Lo/updateMeasurements;

    const/4 v1, 0x0

    .line 2021
    iput-object v1, v0, Lo/updateMeasurements;->ICustomTabsCallback$Stub$Proxy:Lo/updateDxDy$onMessageChannelReady;

    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
