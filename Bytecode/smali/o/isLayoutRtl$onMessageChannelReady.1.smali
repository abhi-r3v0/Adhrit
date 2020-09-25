.class public final Lo/isLayoutRtl$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutRtl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/BottomSheetAlertDialog$Companion;",
        "",
        "()V",
        "DARK",
        "",
        "LIGHT",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/content/res/AssetManager;

.field public ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

.field public ICustomTabsCallback$Stub$Proxy:I

.field public ICustomTabsService:Lo/endConnection;

.field private ICustomTabsService$Stub:Z

.field private ICustomTabsService$Stub$Proxy:Z

.field private IPostMessageService:Lo/Ι;

.field private IPostMessageService$Stub:Z

.field public asBinder:Lo/getInstallReferrer;

.field public asInterface:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:Lo/getTranslateY;

.field public extraCommand:Z

.field public getInterfaceDescriptor:Lo/isReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mayLaunchUrl:Z

.field public newSession:Lo/setPosition;

.field public onMessageChannelReady:Landroid/content/res/Resources;

.field public onNavigationEvent:Landroid/content/ContentResolver;

.field public onPostMessage:Lo/urlString;

.field public onRelationshipValidationResult:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public onTransact:Lo/getInstallReferrer;

.field private postMessage:Lo/isEncrypt;

.field private requestPostMessageChannel:Lo/AFExecutor$1$1;

.field public updateVisuals:I

.field private validateRelationship:I

.field public warmup:Lo/isReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/getTranslateY;Lo/isEncrypt;Lo/AFExecutor$1$1;ZZZLo/urlString;Lo/CustomVersionedParcelable;Lo/getReferrerClickTimestampSeconds;Lo/getReferrerClickTimestampSeconds;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/setPosition;IIZILo/Ι;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/getTranslateY;",
            "Lo/isEncrypt;",
            "Lo/AFExecutor$1$1;",
            "ZZZ",
            "Lo/urlString;",
            "Lo/CustomVersionedParcelable;",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lo/getInstallReferrer;",
            "Lo/getInstallReferrer;",
            "Lo/endConnection;",
            "Lo/setPosition;",
            "IIZI",
            "Lo/\u0399;",
            "ZI)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p22

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onNavigationEvent:Landroid/content/ContentResolver;

    .line 1137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onMessageChannelReady:Landroid/content/res/Resources;

    .line 1138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback:Landroid/content/res/AssetManager;

    move-object v2, p2

    .line 1140
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->extraCallback:Lo/getTranslateY;

    move-object v2, p3

    .line 1141
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->postMessage:Lo/isEncrypt;

    move-object v2, p4

    .line 1142
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->requestPostMessageChannel:Lo/AFExecutor$1$1;

    move v2, p5

    .line 1143
    iput-boolean v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->IPostMessageService$Stub:Z

    move v2, p6

    .line 1144
    iput-boolean v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:Z

    move v2, p7

    .line 1145
    iput-boolean v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService$Stub:Z

    move-object v2, p8

    .line 1147
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    move-object v2, p9

    .line 1148
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/CustomVersionedParcelable;

    move-object v2, p10

    .line 1150
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->asInterface:Lo/getReferrerClickTimestampSeconds;

    move-object v2, p11

    .line 1151
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onRelationshipValidationResult:Lo/getReferrerClickTimestampSeconds;

    move-object v2, p12

    .line 1152
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->onTransact:Lo/getInstallReferrer;

    move-object/from16 v2, p13

    .line 1153
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->asBinder:Lo/getInstallReferrer;

    move-object/from16 v2, p14

    .line 1154
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    move-object/from16 v2, p15

    .line 1155
    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->newSession:Lo/setPosition;

    .line 1156
    new-instance v2, Lo/isReady;

    invoke-direct {v2, v1}, Lo/isReady;-><init>(I)V

    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->getInterfaceDescriptor:Lo/isReady;

    .line 1157
    new-instance v2, Lo/isReady;

    invoke-direct {v2, v1}, Lo/isReady;-><init>(I)V

    iput-object v2, v0, Lo/isLayoutRtl$onMessageChannelReady;->warmup:Lo/isReady;

    move/from16 v1, p16

    .line 1159
    iput v1, v0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    move/from16 v1, p17

    .line 1160
    iput v1, v0, Lo/isLayoutRtl$onMessageChannelReady;->updateVisuals:I

    move/from16 v1, p18

    .line 1161
    iput-boolean v1, v0, Lo/isLayoutRtl$onMessageChannelReady;->extraCommand:Z

    move/from16 v1, p19

    .line 1163
    iput v1, v0, Lo/isLayoutRtl$onMessageChannelReady;->validateRelationship:I

    move-object/from16 v1, p20

    .line 1164
    iput-object v1, v0, Lo/isLayoutRtl$onMessageChannelReady;->IPostMessageService:Lo/Ι;

    move/from16 v1, p21

    .line 1166
    iput-boolean v1, v0, Lo/isLayoutRtl$onMessageChannelReady;->mayLaunchUrl:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/getOutOfStore;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;)",
            "Lo/getOutOfStore;"
        }
    .end annotation

    .line 1199
    new-instance v12, Lo/getOutOfStore;

    iget-object v1, p0, Lo/isLayoutRtl$onMessageChannelReady;->extraCallback:Lo/getTranslateY;

    iget-object v0, p0, Lo/isLayoutRtl$onMessageChannelReady;->onPostMessage:Lo/urlString;

    .line 1201
    invoke-interface {v0}, Lo/urlString;->onNavigationEvent()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lo/isLayoutRtl$onMessageChannelReady;->postMessage:Lo/isEncrypt;

    iget-object v4, p0, Lo/isLayoutRtl$onMessageChannelReady;->requestPostMessageChannel:Lo/AFExecutor$1$1;

    iget-boolean v5, p0, Lo/isLayoutRtl$onMessageChannelReady;->IPostMessageService$Stub:Z

    iget-boolean v6, p0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:Z

    iget-boolean v7, p0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService$Stub:Z

    iget v9, p0, Lo/isLayoutRtl$onMessageChannelReady;->validateRelationship:I

    iget-object v10, p0, Lo/isLayoutRtl$onMessageChannelReady;->IPostMessageService:Lo/Ι;

    sget-object v11, Lo/getScaleY;->ICustomTabsCallback:Lo/setPivotX;

    move-object v0, v12

    move-object v8, p1

    invoke-direct/range {v0 .. v11}, Lo/getOutOfStore;-><init>(Lo/getTranslateY;Ljava/util/concurrent/Executor;Lo/isEncrypt;Lo/AFExecutor$1$1;ZZZLo/setDeviceTrackingDisabled;ILo/Ι;Lo/setPivotX;)V

    return-object v12
.end method

.method public final onPostMessage(Lo/setDeviceTrackingDisabled;)Lo/setPhoneNumber;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;)",
            "Lo/setPhoneNumber;"
        }
    .end annotation

    .line 1242
    new-instance v8, Lo/setPhoneNumber;

    iget-object v1, p0, Lo/isLayoutRtl$onMessageChannelReady;->onRelationshipValidationResult:Lo/getReferrerClickTimestampSeconds;

    iget-object v2, p0, Lo/isLayoutRtl$onMessageChannelReady;->onTransact:Lo/getInstallReferrer;

    iget-object v3, p0, Lo/isLayoutRtl$onMessageChannelReady;->asBinder:Lo/getInstallReferrer;

    iget-object v4, p0, Lo/isLayoutRtl$onMessageChannelReady;->ICustomTabsService:Lo/endConnection;

    iget-object v5, p0, Lo/isLayoutRtl$onMessageChannelReady;->getInterfaceDescriptor:Lo/isReady;

    iget-object v6, p0, Lo/isLayoutRtl$onMessageChannelReady;->warmup:Lo/isReady;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lo/setPhoneNumber;-><init>(Lo/getReferrerClickTimestampSeconds;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/isReady;Lo/isReady;Lo/setDeviceTrackingDisabled;)V

    return-object v8
.end method
