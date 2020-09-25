.class final Lo/isItemChanged$cancel;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field private synthetic onNavigationEvent:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$cancel;->onNavigationEvent:Lo/isItemChanged;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1715
    iget-object p1, p0, Lo/isItemChanged$cancel;->onNavigationEvent:Lo/isItemChanged;

    .line 1721
    iget v0, p1, Lo/isItemChanged;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    .line 2721
    iput v0, p1, Lo/isItemChanged;->asBinder:I

    .line 1716
    iget-object p1, p0, Lo/isItemChanged$cancel;->onNavigationEvent:Lo/isItemChanged;

    .line 3077
    iget-object p1, p1, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4064
    invoke-virtual {p1, v0}, Lo/calculateScrollDistance;->extraCallback(I)V

    .line 67
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
