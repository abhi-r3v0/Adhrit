.class final Lo/setConsumeAFDeepLinks$onPostMessage;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setConsumeAFDeepLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
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
.field final ICustomTabsCallback:Lo/setPreinstallAttribution;

.field final ICustomTabsCallback$Stub:Lo/startTracking;

.field final synthetic asBinder:Lo/setConsumeAFDeepLinks;

.field extraCallback:Z

.field final onMessageChannelReady:Z

.field final onPostMessage:Lo/handleDeepLinkCallback;


# direct methods
.method constructor <init>(Lo/setConsumeAFDeepLinks;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZLo/handleDeepLinkCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            "Z",
            "Lo/handleDeepLinkCallback;",
            ")V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->asBinder:Lo/setConsumeAFDeepLinks;

    .line 96
    invoke-direct {p0, p2}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->extraCallback:Z

    .line 98
    iput-object p3, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 101
    invoke-interface {p3}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    .line 104
    iput-boolean p4, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->onMessageChannelReady:Z

    .line 107
    iput-object p5, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->onPostMessage:Lo/handleDeepLinkCallback;

    .line 109
    new-instance p3, Lo/setConsumeAFDeepLinks$onPostMessage$3;

    invoke-direct {p3, p0}, Lo/setConsumeAFDeepLinks$onPostMessage$3;-><init>(Lo/setConsumeAFDeepLinks$onPostMessage;)V

    .line 121
    new-instance p4, Lo/startTracking;

    .line 2046
    iget-object p1, p1, Lo/setConsumeAFDeepLinks;->extraCallback:Ljava/util/concurrent/Executor;

    const/16 p5, 0x64

    .line 121
    invoke-direct {p4, p1, p3, p5}, Lo/startTracking;-><init>(Ljava/util/concurrent/Executor;Lo/startTracking$ICustomTabsCallback;I)V

    iput-object p4, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback$Stub:Lo/startTracking;

    .line 123
    iget-object p1, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    new-instance p3, Lo/setConsumeAFDeepLinks$onPostMessage$1;

    invoke-direct {p3, p0, p2}, Lo/setConsumeAFDeepLinks$onPostMessage$1;-><init>(Lo/setConsumeAFDeepLinks$onPostMessage;Lo/waitForCustomerUserId;)V

    invoke-interface {p1, p3}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 10

    .line 82
    check-cast p1, Lo/getCardBackgroundColor;

    .line 2144
    iget-boolean v0, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->extraCallback:Z

    if-nez v0, :cond_26

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    .line 4020
    iget-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 2150
    invoke-interface {p1, v3, v2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    :cond_1
    return-void

    .line 4326
    :cond_2
    iget v4, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v4, :cond_3

    iget v4, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v4, :cond_4

    .line 4327
    :cond_3
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 4209
    :cond_4
    iget-object v4, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 2155
    iget-object v5, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 2157
    invoke-interface {v5}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v5

    iget-object v6, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->onPostMessage:Lo/handleDeepLinkCallback;

    iget-boolean v7, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->onMessageChannelReady:Z

    .line 2160
    invoke-interface {v6, v4, v7}, Lo/handleDeepLinkCallback;->createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 2159
    check-cast v6, Lo/AppsFlyerLibCore;

    const/4 v7, -0x2

    if-eqz p1, :cond_14

    .line 7326
    iget v8, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v8, :cond_5

    iget v8, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v8, :cond_6

    .line 7327
    :cond_5
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 7209
    :cond_6
    iget-object v8, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 6308
    sget-object v9, Lo/setProgress;->onPostMessage:Lo/setProgress;

    if-ne v8, v9, :cond_7

    goto/16 :goto_7

    .line 8326
    :cond_7
    iget v8, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v8, :cond_8

    iget v8, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v8, :cond_9

    .line 8327
    :cond_8
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 8209
    :cond_9
    iget-object v8, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 6312
    invoke-interface {v6, v8}, Lo/AppsFlyerLibCore;->onMessageChannelReady(Lo/setProgress;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 6313
    sget-object v5, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    goto :goto_8

    .line 9170
    :cond_a
    iget-object v8, v5, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 10137
    iget-boolean v9, v8, Lo/ɩ;->onPostMessage:Z

    if-nez v9, :cond_11

    .line 9324
    invoke-static {v8, p1}, Lo/getConversionData;->extraCallback(Lo/ɩ;Lo/getCardBackgroundColor;)I

    move-result v9

    if-nez v9, :cond_10

    .line 11120
    iget v9, v8, Lo/ɩ;->ICustomTabsCallback:I

    if-eq v9, v7, :cond_b

    const/4 v9, 0x1

    goto :goto_1

    :cond_b
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_f

    .line 11137
    iget-boolean v8, v8, Lo/ɩ;->onPostMessage:Z

    if-eqz v8, :cond_c

    goto :goto_2

    .line 10334
    :cond_c
    sget-object v8, Lo/getConversionData;->onNavigationEvent:Lo/getRotation;

    .line 11326
    iget v9, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v9, :cond_d

    iget v9, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v9, :cond_e

    .line 11327
    :cond_d
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 11224
    :cond_e
    iget v9, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 10334
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_3

    .line 11185
    :cond_f
    :goto_2
    iput v1, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_11

    :cond_10
    const/4 v8, 0x1

    goto :goto_4

    :cond_11
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_13

    .line 12170
    iget-object v8, v5, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 13166
    iget-object v5, v5, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 6318
    invoke-interface {v6, p1, v8, v5}, Lo/AppsFlyerLibCore;->extraCallback(Lo/getCardBackgroundColor;Lo/ɩ;Lo/ǃ;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_5

    :cond_12
    const/4 v5, 0x0

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v5, 0x1

    .line 6316
    :goto_6
    invoke-static {v5}, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage(Z)Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    move-result-object v5

    goto :goto_8

    .line 6309
    :cond_14
    :goto_7
    sget-object v5, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    :goto_8
    if-nez v0, :cond_15

    .line 2162
    sget-object v6, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    if-eq v5, v6, :cond_26

    .line 2166
    :cond_15
    sget-object v6, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    if-eq v5, v6, :cond_23

    .line 13181
    sget-object v0, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    const/4 v5, -0x1

    if-eq v4, v0, :cond_1c

    sget-object v0, Lo/getFrame;->ICustomTabsCallback$Stub$Proxy:Lo/setProgress;

    if-ne v4, v0, :cond_16

    goto :goto_c

    .line 18190
    :cond_16
    iget-object v0, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v0}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 19170
    iget-object v0, v0, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 20116
    iget v4, v0, Lo/ɩ;->ICustomTabsCallback:I

    if-ne v4, v5, :cond_17

    const/4 v4, 0x1

    goto :goto_9

    :cond_17
    const/4 v4, 0x0

    :goto_9
    if-nez v4, :cond_22

    .line 20120
    iget v4, v0, Lo/ɩ;->ICustomTabsCallback:I

    if-eq v4, v7, :cond_18

    const/4 v4, 0x1

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_22

    .line 21116
    iget v4, v0, Lo/ɩ;->ICustomTabsCallback:I

    if-ne v4, v5, :cond_19

    const/4 v1, 0x1

    :cond_19
    if-nez v1, :cond_1b

    .line 20133
    iget v0, v0, Lo/ɩ;->ICustomTabsCallback:I

    if-eqz p1, :cond_1a

    .line 22095
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->ICustomTabsCallback()Lo/getCardBackgroundColor;

    move-result-object p1

    goto :goto_b

    :cond_1a
    move-object p1, v3

    :goto_b
    if-eqz p1, :cond_22

    .line 22180
    iput v0, p1, Lo/getCardBackgroundColor;->onNavigationEvent:I

    goto :goto_e

    .line 20131
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Rotation is set to use EXIF"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13198
    :cond_1c
    :goto_c
    iget-object v0, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v0}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 14170
    iget-object v0, v0, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 15137
    iget-boolean v0, v0, Lo/ɩ;->onPostMessage:Z

    if-nez v0, :cond_22

    .line 15326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_1d

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_1e

    .line 15327
    :cond_1d
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 15218
    :cond_1e
    iget v0, p1, Lo/getCardBackgroundColor;->onNavigationEvent:I

    if-eqz v0, :cond_22

    .line 16326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_1f

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_20

    .line 16327
    :cond_1f
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 16218
    :cond_20
    iget v0, p1, Lo/getCardBackgroundColor;->onNavigationEvent:I

    if-eq v0, v5, :cond_22

    if-eqz p1, :cond_21

    .line 18095
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->ICustomTabsCallback()Lo/getCardBackgroundColor;

    move-result-object p1

    goto :goto_d

    :cond_21
    move-object p1, v3

    :goto_d
    if-eqz p1, :cond_22

    .line 18180
    iput v1, p1, Lo/getCardBackgroundColor;->onNavigationEvent:I

    .line 23020
    :cond_22
    :goto_e
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 13186
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void

    .line 2171
    :cond_23
    iget-object v1, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback$Stub:Lo/startTracking;

    invoke-virtual {v1, p1, p2}, Lo/startTracking;->onNavigationEvent(Lo/getCardBackgroundColor;I)Z

    move-result p1

    if-eqz p1, :cond_26

    if-nez v0, :cond_24

    .line 2174
    iget-object p1, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {p1}, Lo/setPreinstallAttribution;->asBinder()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 2175
    :cond_24
    iget-object p1, p0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback$Stub:Lo/startTracking;

    invoke-virtual {p1}, Lo/startTracking;->extraCallback()Z

    goto :goto_f

    .line 5215
    :cond_25
    throw v3

    :cond_26
    :goto_f
    return-void
.end method
