.class public Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;
.super Lo/setCustomErrorMessage;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$extraCallback;,
        Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$onPostMessage;
    }
.end annotation


# instance fields
.field public onNavigationEvent:Lo/setCheckedIcon;

.field private onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/setChipIconTint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/setCustomErrorMessage;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    .line 3
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onPostMessage:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub$Proxy()Lo/zzbfb;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/zzbfb;->onNavigationEvent(Ljava/lang/String;J)V

    return-void

    .line 19005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p1, p2, p3}, Lo/setChipIconSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 39005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearMeasurementEnabled(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6004
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/Boolean;)V

    return-void

    .line 6005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub$Proxy()Lo/zzbfb;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/zzbfb;->onMessageChannelReady(Ljava/lang/String;J)V

    return-void

    .line 20005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateEventId(Lo/setShowBuffering;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHelperTextEnabled;->ICustomTabsCallback$Stub()J

    move-result-wide v0

    .line 91
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Lo/setShowBuffering;J)V

    return-void

    .line 18005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAppInstanceId(Lo/setShowBuffering;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setChipIconEnabledResource;

    invoke-direct {v1, p0, p1}, Lo/setChipIconEnabledResource;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;)V

    .line 84
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 16005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCachedAppInstanceId(Lo/setShowBuffering;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->INotificationSideChannel()Ljava/lang/String;

    move-result-object v0

    .line 15255
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    return-void

    .line 15005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lo/setShowBuffering;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setHelperText;

    invoke-direct {v1, p0, p3, p1, p2}, Lo/setHelperText;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 40005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentScreenClass(Lo/setShowBuffering;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->read()Ljava/lang/String;

    move-result-object v0

    .line 14255
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    return-void

    .line 14005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentScreenName(Lo/setShowBuffering;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->IconCompatParcelizer()Ljava/lang/String;

    move-result-object v0

    .line 13255
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    return-void

    .line 13005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGmpAppId(Lo/setShowBuffering;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->write()Ljava/lang/String;

    move-result-object v0

    .line 17255
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    return-void

    .line 17005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxUserProperties(Ljava/lang/String;Lo/setShowBuffering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    .line 12004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p1, p2, v0}, Lo/setHelperTextEnabled;->onMessageChannelReady(Lo/setShowBuffering;I)V

    return-void

    .line 12005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTestFlag(Lo/setShowBuffering;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    .line 253
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->validateRelationship()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lo/setHelperTextEnabled;->onMessageChannelReady(Lo/setShowBuffering;Z)V

    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->IPostMessageService$Stub$Proxy()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lo/setHelperTextEnabled;->onMessageChannelReady(Lo/setShowBuffering;I)V

    return-void

    .line 240
    :cond_2
    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    .line 241
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->cancelAll()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 242
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "r"

    .line 243
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 244
    :try_start_0
    invoke-interface {p1, v2}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 247
    iget-object p2, p2, Lo/setChipTextResource;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Error returning double value to wrapper"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 237
    :cond_3
    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->cancel()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Lo/setShowBuffering;J)V

    return-void

    .line 234
    :cond_4
    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    .line 235
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    return-void

    .line 41005
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLo/setShowBuffering;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v7, Lo/setIconStartPaddingResource;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lo/setIconStartPaddingResource;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    invoke-virtual {v0, v7}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 32005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initForTests(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21004
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p1, :cond_0

    return-void

    .line 21005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Lo/getEventName;Lo/setStatusCode;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-nez v0, :cond_0

    .line 9
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lo/setCheckedIcon;->ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Attempting to initialize multiple times"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public isDataCollectionEnabled(Lo/setShowBuffering;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setHorizontalPadding;

    invoke-direct {v1, p0, p1}, Lo/setHorizontalPadding;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;)V

    .line 266
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 43005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 1004
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void

    .line 1005
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempting to perform action before initialize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lo/setShowBuffering;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_2

    .line 23004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v4, "app"

    .line 104
    new-instance v0, Landroid/os/Bundle;

    if-eqz p3, :cond_0

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, "_o"

    .line 105
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lo/zzir;

    new-instance v3, Lo/zzfa$zza;

    invoke-direct {v3, p3}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    move-object v1, v0

    move-object v2, p2

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    .line 107
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    .line 108
    invoke-virtual {p2}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p2

    new-instance p3, Lo/setCircularRevealScrimColor;

    invoke-direct {p3, p0, p4, v0, p1}, Lo/setCircularRevealScrimColor;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;Lo/zzir;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2, p3}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 23005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22005
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logHealthData(ILjava/lang/String;Lo/getEventName;Lo/getEventName;Lo/getEventName;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v6, v0

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p3}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    :goto_0
    if-nez p4, :cond_1

    move-object v7, v0

    goto :goto_1

    .line 189
    :cond_1
    invoke-static {p4}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    :goto_1
    if-nez p5, :cond_2

    goto :goto_2

    .line 190
    :cond_2
    invoke-static {p5}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    move-object v8, v0

    .line 191
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 33005
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityCreated(Lo/getEventName;Landroid/os/Bundle;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26004
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p3, :cond_1

    .line 131
    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p3

    .line 132
    iget-object p3, p3, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    if-eqz p3, :cond_0

    .line 135
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p4}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p4

    invoke-virtual {p4}, Lo/setChipIconSize;->ICustomTabsService$Stub$Proxy()V

    .line 136
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p3, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void

    .line 26005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityDestroyed(Lo/getEventName;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27004
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p2

    .line 141
    iget-object p2, p2, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    if-eqz p2, :cond_0

    .line 144
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p3

    invoke-virtual {p3}, Lo/setChipIconSize;->ICustomTabsService$Stub$Proxy()V

    .line 145
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 27005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityPaused(Lo/getEventName;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28004
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p2, :cond_1

    .line 149
    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p2

    .line 150
    iget-object p2, p2, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    if-eqz p2, :cond_0

    .line 153
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p3

    invoke-virtual {p3}, Lo/setChipIconSize;->ICustomTabsService$Stub$Proxy()V

    .line 154
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 28005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityResumed(Lo/getEventName;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29004
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p2, :cond_1

    .line 158
    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p2

    .line 159
    iget-object p2, p2, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    if-eqz p2, :cond_0

    .line 162
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p3

    invoke-virtual {p3}, Lo/setChipIconSize;->ICustomTabsService$Stub$Proxy()V

    .line 163
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 29005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivitySaveInstanceState(Lo/getEventName;Lo/setShowBuffering;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30004
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p3, :cond_1

    .line 167
    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p3

    .line 168
    iget-object p3, p3, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    .line 170
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->ICustomTabsService$Stub$Proxy()V

    .line 173
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p3, p1, p4}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 174
    :cond_0
    :try_start_0
    invoke-interface {p2, p4}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 177
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Error returning bundle value to wrapper"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 30005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityStarted(Lo/getEventName;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24004
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p2, :cond_1

    .line 113
    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p2

    .line 114
    iget-object p2, p2, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    if-eqz p2, :cond_0

    .line 117
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p3

    invoke-virtual {p3}, Lo/setChipIconSize;->ICustomTabsService$Stub$Proxy()V

    .line 118
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 24005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityStopped(Lo/getEventName;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25004
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p2, :cond_1

    .line 122
    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p2

    .line 123
    iget-object p2, p2, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    if-eqz p2, :cond_0

    .line 126
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p3

    invoke-virtual {p3}, Lo/setChipIconSize;->ICustomTabsService$Stub$Proxy()V

    .line 127
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 25005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performAction(Landroid/os/Bundle;Lo/setShowBuffering;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31004
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 180
    invoke-interface {p2, p1}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V

    return-void

    .line 31005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerOnMeasurementEventListener(Lo/getConversations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onPostMessage:Ljava/util/Map;

    invoke-interface {p1}, Lo/getConversations;->onMessageChannelReady()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setChipIconTint;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$onPostMessage;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$onPostMessage;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/getConversations;)V

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onPostMessage:Ljava/util/Map;

    invoke-interface {p1}, Lo/getConversations;->onMessageChannelReady()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/setChipIconSize;->onMessageChannelReady(Lo/setChipIconTint;)V

    return-void

    .line 35005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetAnalyticsData(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v1

    new-instance v2, Lo/setCloseIconSize;

    invoke-direct {v2, v0, p1, p2}, Lo/setCloseIconSize;-><init>(Lo/setChipIconSize;J)V

    .line 52
    invoke-virtual {v1, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 8005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 217
    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Conditional user property must not be null"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/setChipIconSize;->onPostMessage(Landroid/os/Bundle;J)V

    return-void

    .line 38005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConsent(Landroid/os/Bundle;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    .line 37
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v3, v2}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 42
    invoke-static {p1}, Lo/zzq;->ICustomTabsCallback(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Ignoring invalid consent setting"

    invoke-virtual {v2, v3, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-static {p1}, Lo/zzq;->extraCallback(Landroid/os/Bundle;)Lo/zzq;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1, p2, p3}, Lo/setChipIconSize;->onMessageChannelReady(Lo/zzq;IJ)V

    :cond_1
    return-void

    .line 7005
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentScreen(Lo/getEventName;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4004
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p4, :cond_0

    .line 26
    invoke-virtual {p4}, Lo/setCheckedIcon;->ICustomTabsService$Stub()Lo/setChipEndPadding;

    move-result-object p4

    .line 27
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p4, p1, p2, p3}, Lo/setChipEndPadding;->ICustomTabsCallback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataCollectionEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 260
    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v1

    new-instance v2, Lo/setIconEndPadding;

    invoke-direct {v2, v0, p1}, Lo/setIconEndPadding;-><init>(Lo/setChipIconSize;Z)V

    .line 261
    invoke-virtual {v1, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 42005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 3

    .line 44004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v1

    .line 271
    :goto_0
    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v1

    new-instance v2, Lo/setCloseIconResource;

    invoke-direct {v2, v0, p1}, Lo/setCloseIconResource;-><init>(Lo/setChipIconSize;Landroid/os/Bundle;)V

    .line 272
    invoke-virtual {v1, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 44005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEventInterceptor(Lo/getConversations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$extraCallback;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$extraCallback;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/getConversations;)V

    .line 196
    invoke-virtual {v0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 197
    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    new-instance v2, Lo/setShowMotionSpecResource;

    invoke-direct {v2, v0, v1}, Lo/setShowMotionSpecResource;-><init>(Lo/setChipIconSize;Lo/setChipIconTintResource;)V

    .line 198
    invoke-virtual {p1, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 34005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInstanceIdProvider(Lo/setConversations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37004
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p1, :cond_0

    return-void

    .line 37005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMeasurementEnabled(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5004
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/Boolean;)V

    return-void

    .line 5005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinimumSessionDuration(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v1

    new-instance v2, Lo/setCloseIconContentDescription;

    invoke-direct {v2, v0, p1, p2}, Lo/setCloseIconContentDescription;-><init>(Lo/setChipIconSize;J)V

    .line 58
    invoke-virtual {v1, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 9005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v1

    new-instance v2, Lo/setCloseIconTintResource;

    invoke-direct {v2, v0, p1, p2}, Lo/setCloseIconTintResource;-><init>(Lo/setChipIconSize;J)V

    .line 64
    invoke-virtual {v1, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 10005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserId(Ljava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-string v3, "_id"

    move-object v4, p1

    move-wide v6, p2

    .line 22
    invoke-virtual/range {v1 .. v7}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void

    .line 3005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Lo/getEventName;ZJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p3}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v4

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void

    .line 2005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to perform action before initialize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterOnMeasurementEventListener(Lo/getConversations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36004
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onPostMessage:Ljava/util/Map;

    invoke-interface {p1}, Lo/getConversations;->onMessageChannelReady()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setChipIconTint;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$onPostMessage;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$onPostMessage;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/getConversations;)V

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/setChipIconSize;->ICustomTabsCallback(Lo/setChipIconTint;)V

    return-void

    .line 36005
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to perform action before initialize."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
