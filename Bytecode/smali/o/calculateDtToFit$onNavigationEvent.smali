.class final Lo/calculateDtToFit$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/calculateDtToFit;->extraCallback(Z)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/firebase/FirebaseWinDBViewModel$goOffline$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onNavigationEvent:Z

.field private synthetic onPostMessage:Lo/calculateDtToFit;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/calculateDtToFit;Z)V
    .locals 0

    iput-object p1, p0, Lo/calculateDtToFit$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/calculateDtToFit$onNavigationEvent;->onPostMessage:Lo/calculateDtToFit;

    iput-boolean p3, p0, Lo/calculateDtToFit$onNavigationEvent;->onNavigationEvent:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1103
    iget-boolean v0, p0, Lo/calculateDtToFit$onNavigationEvent;->onNavigationEvent:Z

    if-nez v0, :cond_0

    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/getTrackTintList;->onMessageChannelReady(Z)V

    .line 1104
    :cond_0
    iget-object v0, p0, Lo/calculateDtToFit$onNavigationEvent;->onPostMessage:Lo/calculateDtToFit;

    invoke-static {v0}, Lo/calculateDtToFit;->asBinder(Lo/calculateDtToFit;)Lo/isPresent;

    move-result-object v0

    iget-object v1, p0, Lo/calculateDtToFit$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/isPresent;->child(Ljava/lang/String;)Lo/isPresent;

    move-result-object v0

    invoke-virtual {v0}, Lo/isPresent;->removeValue()Lcom/google/android/gms/tasks/Task;

    .line 16
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
