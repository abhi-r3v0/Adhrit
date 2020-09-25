.class final Lo/setLogLevel$ICustomTabsCallback;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLogLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getCardBackgroundColor;",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setPreinstallAttribution;

.field private synthetic extraCallback:Lo/setLogLevel;

.field private onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;


# direct methods
.method public constructor <init>(Lo/setLogLevel;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lo/setLogLevel$ICustomTabsCallback;->extraCallback:Lo/setLogLevel;

    .line 64
    invoke-direct {p0, p2}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 65
    iput-object p3, p0, Lo/setLogLevel$ICustomTabsCallback;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 66
    sget-object p1, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    iput-object p1, p0, Lo/setLogLevel$ICustomTabsCallback;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 10

    .line 58
    check-cast p1, Lo/getCardBackgroundColor;

    .line 1072
    iget-object v0, p0, Lo/setLogLevel$ICustomTabsCallback;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    sget-object v1, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    .line 2149
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lo/pauseAnimation;->onPostMessage(Ljava/io/InputStream;)Lo/setProgress;

    move-result-object v0

    .line 2150
    invoke-static {v0}, Lo/getFrame;->extraCallback(Lo/setProgress;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2151
    invoke-static {}, Lo/AppsFlyerInAppPurchaseValidatorListener;->ICustomTabsCallback()Lo/onPostMessage$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2155
    invoke-interface {v0}, Lo/onPostMessage$extraCallback;->onMessageChannelReady()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v0}, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage(Z)Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    move-result-object v0

    goto :goto_0

    .line 2156
    :cond_0
    sget-object v1, Lo/setProgress;->onPostMessage:Lo/setProgress;

    if-ne v0, v1, :cond_1

    .line 2159
    sget-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    goto :goto_0

    .line 2162
    :cond_1
    sget-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    .line 1073
    :goto_0
    iput-object v0, p0, Lo/setLogLevel$ICustomTabsCallback;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    goto :goto_1

    .line 2215
    :cond_2
    throw v2

    .line 1077
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/setLogLevel$ICustomTabsCallback;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    sget-object v1, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    if-eq v0, v1, :cond_7

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_8

    .line 1083
    iget-object v0, p0, Lo/setLogLevel$ICustomTabsCallback;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    sget-object v1, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    if-ne v0, v1, :cond_7

    if-eqz p1, :cond_7

    .line 1084
    iget-object p2, p0, Lo/setLogLevel$ICustomTabsCallback;->extraCallback:Lo/setLogLevel;

    .line 4020
    iget-object v5, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1084
    iget-object v7, p0, Lo/setLogLevel$ICustomTabsCallback;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    if-eqz p1, :cond_6

    if-eqz p1, :cond_5

    .line 5095
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->ICustomTabsCallback()Lo/getCardBackgroundColor;

    move-result-object v2

    :cond_5
    move-object v9, v2

    .line 4098
    new-instance p1, Lo/setLogLevel$1;

    .line 4100
    invoke-interface {v7}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v6

    const-string v8, "WebpTranscodeProducer"

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v3 .. v9}, Lo/setLogLevel$1;-><init>(Lo/setLogLevel;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/getCardBackgroundColor;)V

    .line 4143
    iget-object p2, p2, Lo/setLogLevel;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4215
    :cond_6
    throw v2

    .line 6020
    :cond_7
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1086
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    :cond_8
    return-void
.end method
