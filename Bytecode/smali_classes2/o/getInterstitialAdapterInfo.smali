.class public final Lo/getInterstitialAdapterInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isInitialized;


# static fields
.field private static final ICustomTabsCallback:Lo/MethodNotAllowedException;
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

    .line 6
    new-instance v0, Lo/fK;

    const-string v1, "com.google.android.gms.measurement"

    .line 7
    invoke-static {v1}, Lo/PermissionNotGrantedException;->onNavigationEvent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/fK;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.service.audience.fix_skip_audience_with_failed_filters"

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v1

    sput-object v1, Lo/getInterstitialAdapterInfo;->ICustomTabsCallback:Lo/MethodNotAllowedException;

    const/4 v1, 0x0

    const-string v2, "measurement.audience.refresh_event_count_filters_timestamp"

    .line 9
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/getInterstitialAdapterInfo;->onMessageChannelReady:Lo/MethodNotAllowedException;

    const-string v2, "measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters"

    .line 10
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/getInterstitialAdapterInfo;->onPostMessage:Lo/MethodNotAllowedException;

    const-string v2, "measurement.audience.use_bundle_timestamp_for_event_count_filters"

    .line 11
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v0

    sput-object v0, Lo/getInterstitialAdapterInfo;->onNavigationEvent:Lo/MethodNotAllowedException;

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

    .line 5
    sget-object v0, Lo/getInterstitialAdapterInfo;->onNavigationEvent:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 4
    sget-object v0, Lo/getInterstitialAdapterInfo;->onPostMessage:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 3
    sget-object v0, Lo/getInterstitialAdapterInfo;->onMessageChannelReady:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
