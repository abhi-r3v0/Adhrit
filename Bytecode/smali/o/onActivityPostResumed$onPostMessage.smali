.class final Lo/onActivityPostResumed$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPostResumed;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/getBankCode;",
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
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;",
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
.field private synthetic extraCallback:Lo/onActivityPostResumed;


# direct methods
.method constructor <init>(Lo/onActivityPostResumed;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityPostResumed$onPostMessage;->extraCallback:Lo/onActivityPostResumed;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1074
    iget-object v0, p0, Lo/onActivityPostResumed$onPostMessage;->extraCallback:Lo/onActivityPostResumed;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    .line 2047
    invoke-interface {v0, v1, v2}, Lo/getAllowEnterTransitionOverlap;->onMessageChannelReady(Landroid/app/Activity;Ljava/lang/String;)Lo/getBankCode;

    move-result-object v0

    return-object v0
.end method
