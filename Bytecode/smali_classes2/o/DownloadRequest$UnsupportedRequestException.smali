.class public final Lo/DownloadRequest$UnsupportedRequestException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TagPayloadReader$UnsupportedFormatException;


# static fields
.field private static final ICustomTabsCallback:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/MethodNotAllowedException;
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
    .locals 6

    .line 5
    new-instance v0, Lo/fK;

    const-string v1, "com.google.android.gms.measurement"

    .line 6
    invoke-static {v1}, Lo/PermissionNotGrantedException;->onNavigationEvent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/fK;-><init>(Landroid/net/Uri;)V

    const-wide/16 v1, 0x0

    const-string v3, "measurement.id.lifecycle.app_in_background_parameter"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Lo/fK;->onPostMessage(Ljava/lang/String;J)Lo/MethodNotAllowedException;

    move-result-object v3

    sput-object v3, Lo/DownloadRequest$UnsupportedRequestException;->onMessageChannelReady:Lo/MethodNotAllowedException;

    const/4 v3, 0x0

    const-string v4, "measurement.lifecycle.app_backgrounded_engagement"

    .line 8
    invoke-virtual {v0, v4, v3}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v4

    sput-object v4, Lo/DownloadRequest$UnsupportedRequestException;->onPostMessage:Lo/MethodNotAllowedException;

    const-string v4, "measurement.lifecycle.app_backgrounded_tracking"

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v0, v4, v5}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v4

    sput-object v4, Lo/DownloadRequest$UnsupportedRequestException;->onNavigationEvent:Lo/MethodNotAllowedException;

    const-string v4, "measurement.lifecycle.app_in_background_parameter"

    .line 10
    invoke-virtual {v0, v4, v3}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v3

    sput-object v3, Lo/DownloadRequest$UnsupportedRequestException;->extraCallback:Lo/MethodNotAllowedException;

    const-string v3, "measurement.id.lifecycle.app_backgrounded_tracking"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lo/fK;->onPostMessage(Ljava/lang/String;J)Lo/MethodNotAllowedException;

    move-result-object v0

    sput-object v0, Lo/DownloadRequest$UnsupportedRequestException;->ICustomTabsCallback:Lo/MethodNotAllowedException;

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

    .line 2
    sget-object v0, Lo/DownloadRequest$UnsupportedRequestException;->onPostMessage:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 3
    sget-object v0, Lo/DownloadRequest$UnsupportedRequestException;->onNavigationEvent:Lo/MethodNotAllowedException;

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
    sget-object v0, Lo/DownloadRequest$UnsupportedRequestException;->extraCallback:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
