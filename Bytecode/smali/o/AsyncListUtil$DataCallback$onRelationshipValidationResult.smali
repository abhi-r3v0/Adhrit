.class final Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(ZLo/getServerTime;)V
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
        "com/dreamplug/fabrik/ui/control/payments/CustomPaymentsView$toggleKeyboard$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/AsyncListUtil$DataCallback;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field final synthetic onPostMessage:Lo/getServerTime;


# direct methods
.method constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/AsyncListUtil$DataCallback;Lo/getServerTime;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;->ICustomTabsCallback:Lo/AsyncListUtil$DataCallback;

    iput-object p3, p0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;->onPostMessage:Lo/getServerTime;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1151
    iget-object v0, p0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;->ICustomTabsCallback:Lo/AsyncListUtil$DataCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {v0, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1152
    iget-object v0, p0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;->ICustomTabsCallback:Lo/AsyncListUtil$DataCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {v0, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    .line 1153
    iget-object v0, p0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;->ICustomTabsCallback:Lo/AsyncListUtil$DataCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {v0, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "payAmount"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    new-instance v2, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult$2;

    invoke-direct {v2, p0}, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult$2;-><init>(Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x96

    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 39
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
