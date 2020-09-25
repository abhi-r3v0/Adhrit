.class public final Lo/MediaSeekBar$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSeekBar;


# static fields
.field private static final extraCallback:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Long;",
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
    .locals 4

    .line 6
    new-instance v0, Lo/fK;

    const-string v1, "com.google.android.gms.measurement"

    .line 7
    invoke-static {v1}, Lo/PermissionNotGrantedException;->onNavigationEvent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/fK;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    const-string v2, "measurement.client.consent_state_v1"

    .line 8
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/MediaSeekBar$1$1;->onPostMessage:Lo/MethodNotAllowedException;

    const-string v2, "measurement.service.consent_state_v1_W33"

    .line 9
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v1

    sput-object v1, Lo/MediaSeekBar$1$1;->onNavigationEvent:Lo/MethodNotAllowedException;

    const-string v1, "measurement.service.storage_consent_support_version"

    const-wide/32 v2, 0x31a1a

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lo/fK;->onPostMessage(Ljava/lang/String;J)Lo/MethodNotAllowedException;

    move-result-object v0

    sput-object v0, Lo/MediaSeekBar$1$1;->extraCallback:Lo/MethodNotAllowedException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    .line 5
    sget-object v0, Lo/MediaSeekBar$1$1;->extraCallback:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 3
    sget-object v0, Lo/MediaSeekBar$1$1;->onPostMessage:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 4
    sget-object v0, Lo/MediaSeekBar$1$1;->onNavigationEvent:Lo/MethodNotAllowedException;

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
