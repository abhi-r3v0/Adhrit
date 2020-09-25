.class final Lo/updateAnchorFromChildren$asInterface$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateAnchorFromChildren$asInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/Boolean;",
        "Lo/AFHelper;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
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
.field private synthetic onMessageChannelReady:Lo/updateAnchorFromChildren$asInterface;


# direct methods
.method constructor <init>(Lo/updateAnchorFromChildren$asInterface;)V
    .locals 0

    iput-object p1, p0, Lo/updateAnchorFromChildren$asInterface$1;->onMessageChannelReady:Lo/updateAnchorFromChildren$asInterface;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1381
    iget-object p1, p0, Lo/updateAnchorFromChildren$asInterface$1;->onMessageChannelReady:Lo/updateAnchorFromChildren$asInterface;

    iget-object p1, p1, Lo/updateAnchorFromChildren$asInterface;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1382
    iget-object p1, p0, Lo/updateAnchorFromChildren$asInterface$1;->onMessageChannelReady:Lo/updateAnchorFromChildren$asInterface;

    iget-object p1, p1, Lo/updateAnchorFromChildren$asInterface;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iget-boolean p1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/updateAnchorFromChildren$asInterface$1;->onMessageChannelReady:Lo/updateAnchorFromChildren$asInterface;

    iget-object p1, p1, Lo/updateAnchorFromChildren$asInterface;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iget-boolean p1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/updateAnchorFromChildren$asInterface$1;->onMessageChannelReady:Lo/updateAnchorFromChildren$asInterface;

    iget-object p1, p1, Lo/updateAnchorFromChildren$asInterface;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iget-boolean p1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz p1, :cond_0

    .line 1383
    iget-object p1, p0, Lo/updateAnchorFromChildren$asInterface$1;->onMessageChannelReady:Lo/updateAnchorFromChildren$asInterface;

    iget-object p1, p1, Lo/updateAnchorFromChildren$asInterface;->onPostMessage:Lo/updateAnchorFromChildren;

    iget-object v0, p0, Lo/updateAnchorFromChildren$asInterface$1;->onMessageChannelReady:Lo/updateAnchorFromChildren$asInterface;

    iget-object v0, v0, Lo/updateAnchorFromChildren$asInterface;->extraCallback:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/updateAnchorFromChildren;->onPostMessage(Lo/updateAnchorFromChildren;Ljava/lang/String;)V

    .line 1384
    iget-object p1, p0, Lo/updateAnchorFromChildren$asInterface$1;->onMessageChannelReady:Lo/updateAnchorFromChildren$asInterface;

    iget-object p1, p1, Lo/updateAnchorFromChildren$asInterface;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-boolean p2, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 64
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
