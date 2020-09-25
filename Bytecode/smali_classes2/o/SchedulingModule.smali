.class public final Lo/SchedulingModule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CustomEventAdapter;


# static fields
.field private static final onMessageChannelReady:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lo/fK;

    const-string v1, "com.google.android.gms.measurement"

    .line 5
    invoke-static {v1}, Lo/PermissionNotGrantedException;->onNavigationEvent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/fK;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x1

    const-string v2, "measurement.client.sessions.check_on_reset_and_enable2"

    .line 6
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/SchedulingModule;->onNavigationEvent:Lo/MethodNotAllowedException;

    const-string v2, "measurement.client.sessions.check_on_startup"

    .line 7
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/SchedulingModule;->onMessageChannelReady:Lo/MethodNotAllowedException;

    const-string v2, "measurement.client.sessions.start_session_before_view_screen"

    .line 8
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v0

    sput-object v0, Lo/SchedulingModule;->onPostMessage:Lo/MethodNotAllowedException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 3
    sget-object v0, Lo/SchedulingModule;->onNavigationEvent:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
