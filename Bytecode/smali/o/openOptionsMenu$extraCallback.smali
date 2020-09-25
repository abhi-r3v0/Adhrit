.class final Lo/openOptionsMenu$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/rerunTransactionQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/openOptionsMenu;->onPostMessage(Landroid/app/Application;Lo/getServerTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/rerunTransactionQueue<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lclub/cred/interjection/data/models/Campaign;",
        ">;",
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
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00052\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\n\u00a2\u0006\u0002\u0008\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "",
        "attributes",
        "",
        "",
        "campaign",
        "",
        "Lclub/cred/interjection/data/models/Campaign;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/openOptionsMenu$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/openOptionsMenu$extraCallback;

    invoke-direct {v0}, Lo/openOptionsMenu$extraCallback;-><init>()V

    sput-object v0, Lo/openOptionsMenu$extraCallback;->extraCallback:Lo/openOptionsMenu$extraCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Map;

    check-cast p3, Ljava/util/List;

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    sget-object v0, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    invoke-static {v0, p1, p2, p3}, Lo/openOptionsMenu;->onPostMessage(Lo/openOptionsMenu;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 9
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
