.class final Lo/offsetPositionRecordsForRemove$onNavigationEvent$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetPositionRecordsForRemove$onNavigationEvent;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
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
.field private synthetic extraCallback:Lo/offsetPositionRecordsForRemove$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$onNavigationEvent$5;->extraCallback:Lo/offsetPositionRecordsForRemove$onNavigationEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1585
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$onNavigationEvent$5;->extraCallback:Lo/offsetPositionRecordsForRemove$onNavigationEvent;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->ICustomTabsCallback$Stub(Lo/offsetPositionRecordsForRemove;)V

    .line 56
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
