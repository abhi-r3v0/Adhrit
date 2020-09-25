.class final Lo/onRemoveFinished$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRemoveFinished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/compare;",
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
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
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
.field public static final onNavigationEvent:Lo/onRemoveFinished$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/onRemoveFinished$onPostMessage;

    invoke-direct {v0}, Lo/onRemoveFinished$onPostMessage;-><init>()V

    sput-object v0, Lo/onRemoveFinished$onPostMessage;->onNavigationEvent:Lo/onRemoveFinished$onPostMessage;

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
    .locals 3

    .line 1011
    sget-object v0, Lo/compare;->extraCallback:Lo/compare$extraCallback;

    sget-object v0, Lo/isMeasuring;->onPostMessage:Lo/isMeasuring;

    invoke-static {}, Lo/isMeasuring;->extraCallback()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Application;

    const/4 v1, 0x0

    const-string/jumbo v2, "upi_prefs"

    .line 1019
    invoke-static {v0, v2, v1}, Lo/compare$extraCallback;->onNavigationEvent(Landroid/app/Application;Ljava/lang/String;I)Lo/compare;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Application"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
