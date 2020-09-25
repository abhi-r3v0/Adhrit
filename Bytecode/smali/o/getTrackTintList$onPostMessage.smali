.class public final Lo/getTrackTintList$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTrackTintList;
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


# static fields
.field public static final onMessageChannelReady:Lo/getTrackTintList$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getTrackTintList$onPostMessage;

    invoke-direct {v0}, Lo/getTrackTintList$onPostMessage;-><init>()V

    sput-object v0, Lo/getTrackTintList$onPostMessage;->onMessageChannelReady:Lo/getTrackTintList$onPostMessage;

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
    .locals 2

    .line 1080
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v0}, Lo/setTrackTintMode;->onMessageChannelReady()V

    .line 1081
    sget-object v0, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    .line 1165
    invoke-static {}, Lo/isPendingInitialRun;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    sget-object v0, Lo/isPendingInitialRun;->onMessageChannelReady:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "appContext"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lo/hasJumpTarget;->extraCallback(Landroid/content/Context;)V

    .line 2000
    sget-object v0, Lo/isPendingInitialRun;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/validate;

    .line 1167
    invoke-virtual {v0}, Lo/validate;->ICustomTabsCallback()V

    .line 24
    :cond_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
