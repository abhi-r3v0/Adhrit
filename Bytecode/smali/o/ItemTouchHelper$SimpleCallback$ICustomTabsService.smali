.class final Lo/ItemTouchHelper$SimpleCallback$ICustomTabsService;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ItemTouchHelper$SimpleCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/onChildDraw;",
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
        "Lcom/dreamplug/fabrik/ui/lending/okyc/OkycCaptchaViewModel;",
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
.field private synthetic extraCallback:Lo/ItemTouchHelper$SimpleCallback;


# direct methods
.method constructor <init>(Lo/ItemTouchHelper$SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lo/ItemTouchHelper$SimpleCallback$ICustomTabsService;->extraCallback:Lo/ItemTouchHelper$SimpleCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1056
    iget-object v0, p0, Lo/ItemTouchHelper$SimpleCallback$ICustomTabsService;->extraCallback:Lo/ItemTouchHelper$SimpleCallback;

    .line 1229
    new-instance v1, Lo/setMetadata;

    invoke-direct {v1, v0}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class v0, Lo/onChildDraw;

    invoke-virtual {v1, v0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/onChildDraw;

    return-object v0
.end method
