.class final Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;
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
        "com/dreamplug/fabrik/ui/control/payments/CustomPaymentsView$toggleKeyboard$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult$2;->onMessageChannelReady:Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1154
    iget-object v0, p0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult$2;->onMessageChannelReady:Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;

    iget-object v0, v0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;->onPostMessage:Lo/getServerTime;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 39
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method