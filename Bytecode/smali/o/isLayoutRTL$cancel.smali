.class final Lo/isLayoutRTL$cancel;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutRTL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/trimToSize;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/androidapp/utils/DownloadListeners;",
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
.field final synthetic ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

.field final synthetic extraCallback:Lo/isLayoutRTL;

.field final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;Lo/toDebugString$onMessageChannelReady;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutRTL$cancel;->extraCallback:Lo/isLayoutRTL;

    iput-object p2, p0, Lo/isLayoutRTL$cancel;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lo/isLayoutRTL$cancel;->onPostMessage:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 75
    check-cast p1, Lo/trimToSize;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1608
    new-instance v0, Lo/isLayoutRTL$cancel$5;

    invoke-direct {v0, p0}, Lo/isLayoutRTL$cancel$5;-><init>(Lo/isLayoutRTL$cancel;)V

    check-cast v0, Lo/nextTransactionOrder;

    const-string v1, "downloadFinishListener"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2104
    new-instance v1, Lo/trimToSize$onPostMessage;

    invoke-direct {v1, v0}, Lo/trimToSize$onPostMessage;-><init>(Lo/nextTransactionOrder;)V

    check-cast v1, Lo/trimToSize$onNavigationEvent;

    iput-object v1, p1, Lo/trimToSize;->onPostMessage:Lo/trimToSize$onNavigationEvent;

    .line 75
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
