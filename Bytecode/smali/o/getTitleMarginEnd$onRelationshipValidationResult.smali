.class final Lo/getTitleMarginEnd$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTitleMarginEnd;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/getTitleMarginStart;",
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
        "Lcom/dreamplug/androidapp/gating/EligibilityViewModel;",
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
.field private synthetic onPostMessage:Lo/getTitleMarginEnd;


# direct methods
.method constructor <init>(Lo/getTitleMarginEnd;)V
    .locals 0

    iput-object p1, p0, Lo/getTitleMarginEnd$onRelationshipValidationResult;->onPostMessage:Lo/getTitleMarginEnd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1079
    iget-object v0, p0, Lo/getTitleMarginEnd$onRelationshipValidationResult;->onPostMessage:Lo/getTitleMarginEnd;

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2060
    new-instance v1, Lo/setMetadata;

    invoke-direct {v1, v0}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    .line 1079
    const-class v0, Lo/getTitleMarginStart;

    invoke-virtual {v1, v0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v0

    check-cast v0, Lo/getTitleMarginStart;

    return-object v0
.end method
