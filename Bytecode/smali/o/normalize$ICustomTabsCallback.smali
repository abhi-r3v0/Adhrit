.class final Lo/normalize$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/normalize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Landroid/app/AlarmManager;",
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
        "Landroid/app/AlarmManager;",
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
.field public static final ICustomTabsCallback:Lo/normalize$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/normalize$ICustomTabsCallback;

    invoke-direct {v0}, Lo/normalize$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/normalize$ICustomTabsCallback;->ICustomTabsCallback:Lo/normalize$ICustomTabsCallback;

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
    .locals 2

    .line 1023
    sget-object v0, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onNavigationEvent()Landroid/content/Context;

    move-result-object v0

    .line 1076
    const-class v1, Landroid/app/AlarmManager;

    invoke-static {v0, v1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method
