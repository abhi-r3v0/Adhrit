.class final Lo/clearOldPosition$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearOldPosition;
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
.field public static final extraCallback:Lo/clearOldPosition$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/clearOldPosition$extraCallback;

    invoke-direct {v0}, Lo/clearOldPosition$extraCallback;-><init>()V

    sput-object v0, Lo/clearOldPosition$extraCallback;->extraCallback:Lo/clearOldPosition$extraCallback;

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

    sget-object v0, Lo/getLayoutPosition;->extraCallback:Lo/getLayoutPosition;

    invoke-static {}, Lo/getLayoutPosition;->onPostMessage()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1019
    invoke-static {v0, v1, v2}, Lo/compare$extraCallback;->onNavigationEvent(Landroid/app/Application;Ljava/lang/String;I)Lo/compare;

    move-result-object v0

    return-object v0
.end method
