.class public final Lo/isPreInstalledApp;
.super Lo/setDebugLog;
.source ""


# direct methods
.method public constructor <init>(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;ZZLo/getInstallVersion;Lo/context;)V
    .locals 0

    .line 81
    invoke-direct/range {p0 .. p10}, Lo/setDebugLog;-><init>(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;ZZLo/getInstallVersion;Lo/context;)V

    return-void
.end method

.method public constructor <init>(Lo/getHostPrefix;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;Lo/getInstallVersion;Lo/context;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 58
    invoke-direct/range {v0 .. v9}, Lo/setDebugLog;-><init>(Lo/getHostPrefix;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;ZZLo/getInstallVersion;Lo/context;)V

    return-void
.end method

.method public constructor <init>(Lo/getHostPrefix;Lo/setPreinstallAttribution;)V
    .locals 11

    .line 37
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v4

    .line 40
    invoke-interface {p2}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    move-result-object v5

    .line 41
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onTransact()Lo/getHostPrefix$onMessageChannelReady;

    move-result-object v6

    .line 42
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onRelationshipValidationResult()Z

    move-result v7

    .line 43
    invoke-interface {p2}, Lo/setPreinstallAttribution;->asBinder()Z

    move-result v8

    .line 44
    invoke-interface {p2}, Lo/setPreinstallAttribution;->asInterface()Lo/getInstallVersion;

    move-result-object v9

    .line 45
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback$Stub()Lo/context;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    .line 35
    invoke-direct/range {v0 .. v10}, Lo/isPreInstalledApp;-><init>(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;ZZLo/getInstallVersion;Lo/context;)V

    return-void
.end method
