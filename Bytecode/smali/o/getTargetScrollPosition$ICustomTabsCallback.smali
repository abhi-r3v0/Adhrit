.class final Lo/getTargetScrollPosition$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Ljava/lang/CharSequence;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\r\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
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
.field private synthetic onPostMessage:Lo/getTargetScrollPosition;


# direct methods
.method constructor <init>(Lo/getTargetScrollPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getTargetScrollPosition$ICustomTabsCallback;->onPostMessage:Lo/getTargetScrollPosition;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1010
    sget-object v0, Lo/didStructureChange;->onNavigationEvent:Lo/didStructureChange;

    iget-object v1, p0, Lo/getTargetScrollPosition$ICustomTabsCallback;->onPostMessage:Lo/getTargetScrollPosition;

    .line 2008
    iget-object v1, v1, Lo/getTargetScrollPosition;->ICustomTabsCallback:Ljava/lang/String;

    .line 1010
    invoke-virtual {v0, v1}, Lo/didStructureChange;->extraCallback(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
