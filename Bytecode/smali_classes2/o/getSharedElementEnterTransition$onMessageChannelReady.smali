.class final Lo/getSharedElementEnterTransition$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSharedElementEnterTransition;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
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
.field public static final onMessageChannelReady:Lo/getSharedElementEnterTransition$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getSharedElementEnterTransition$onMessageChannelReady;

    invoke-direct {v0}, Lo/getSharedElementEnterTransition$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/getSharedElementEnterTransition$onMessageChannelReady;->onMessageChannelReady:Lo/getSharedElementEnterTransition$onMessageChannelReady;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 7

    .line 1098
    new-instance v6, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/fabrik/ui/autodebit/Templates;)V

    return-object v6
.end method
