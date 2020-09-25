.class public final Lo/FeaturePitch;
.super Lo/ContactReverseSyncResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field final extraCallback:Lo/CardLinkSuccessResponseJsonAdapter;

.field private final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Lo/InstrumentValidationSuccessRequest;


# direct methods
.method constructor <init>(Lo/CardLinkSuccessResponseJsonAdapter;Lo/InstrumentValidationSuccessRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    iput-object p1, p0, Lo/FeaturePitch;->extraCallback:Lo/CardLinkSuccessResponseJsonAdapter;

    iput-object p2, p0, Lo/FeaturePitch;->onPostMessage:Lo/InstrumentValidationSuccessRequest;

    iput-object p3, p0, Lo/FeaturePitch;->onNavigationEvent:Ljava/lang/String;

    invoke-static {}, Lo/getParcel;->cancelAll()Lo/FeaturePitchJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/FeaturePitchJsonAdapter;->ICustomTabsCallback(Lo/FeaturePitch;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/FeaturePitch;->onPostMessage:Lo/InstrumentValidationSuccessRequest;

    invoke-virtual {v0}, Lo/InstrumentValidationSuccessRequest;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo/FeaturePitch;->onPostMessage:Lo/InstrumentValidationSuccessRequest;

    iget-object v1, p0, Lo/FeaturePitch;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/InstrumentValidationSuccessRequest;->onNavigationEvent(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/FeaturePitch$$Parcelable;

    invoke-direct {v1, p0}, Lo/FeaturePitch$$Parcelable;-><init>(Lo/FeaturePitch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/FeaturePitch$$Parcelable;

    invoke-direct {v2, p0}, Lo/FeaturePitch$$Parcelable;-><init>(Lo/FeaturePitch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
