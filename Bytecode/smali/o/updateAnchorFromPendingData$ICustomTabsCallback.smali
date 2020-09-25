.class final Lo/updateAnchorFromPendingData$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateAnchorFromPendingData;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/WindowInsets;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/WindowInsets;",
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
.field private synthetic ICustomTabsCallback:Lo/updateAnchorFromPendingData;


# direct methods
.method constructor <init>(Lo/updateAnchorFromPendingData;)V
    .locals 0

    iput-object p1, p0, Lo/updateAnchorFromPendingData$ICustomTabsCallback;->ICustomTabsCallback:Lo/updateAnchorFromPendingData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1037
    iget-object p1, p0, Lo/updateAnchorFromPendingData$ICustomTabsCallback;->ICustomTabsCallback:Lo/updateAnchorFromPendingData;

    invoke-static {p1}, Lo/updateAnchorFromPendingData;->asInterface(Lo/updateAnchorFromPendingData;)V

    .line 23
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
