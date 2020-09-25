.class public final Lo/getOutOfStore;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getOutOfStore$ICustomTabsCallback;,
        Lo/getOutOfStore$extraCallback;,
        Lo/getOutOfStore$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Lo/getTranslateY;

.field final asBinder:Ljava/lang/Runnable;

.field private final asInterface:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/isEncrypt;

.field private final getInterfaceDescriptor:Z

.field final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field final onNavigationEvent:Lo/Ι;

.field final onPostMessage:Z

.field final onRelationshipValidationResult:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/AFExecutor$1$1;

.field private final warmup:I


# direct methods
.method public constructor <init>(Lo/getTranslateY;Ljava/util/concurrent/Executor;Lo/isEncrypt;Lo/AFExecutor$1$1;ZZZLo/setDeviceTrackingDisabled;ILo/Ι;Lo/setPivotX;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTranslateY;",
            "Ljava/util/concurrent/Executor;",
            "Lo/isEncrypt;",
            "Lo/AFExecutor$1$1;",
            "ZZZ",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;I",
            "Lo/\u0399;",
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 96
    check-cast p1, Lo/getTranslateY;

    iput-object p1, p0, Lo/getOutOfStore;->ICustomTabsCallback$Stub:Lo/getTranslateY;

    if-eqz p2, :cond_3

    .line 97
    check-cast p2, Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lo/getOutOfStore;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    if-eqz p3, :cond_2

    .line 98
    check-cast p3, Lo/isEncrypt;

    iput-object p3, p0, Lo/getOutOfStore;->extraCallback:Lo/isEncrypt;

    if-eqz p4, :cond_1

    .line 99
    check-cast p4, Lo/AFExecutor$1$1;

    iput-object p4, p0, Lo/getOutOfStore;->onTransact:Lo/AFExecutor$1$1;

    .line 100
    iput-boolean p5, p0, Lo/getOutOfStore;->ICustomTabsCallback:Z

    .line 101
    iput-boolean p6, p0, Lo/getOutOfStore;->onPostMessage:Z

    if-eqz p8, :cond_0

    .line 102
    check-cast p8, Lo/setDeviceTrackingDisabled;

    iput-object p8, p0, Lo/getOutOfStore;->asInterface:Lo/setDeviceTrackingDisabled;

    .line 103
    iput-boolean p7, p0, Lo/getOutOfStore;->getInterfaceDescriptor:Z

    .line 104
    iput p9, p0, Lo/getOutOfStore;->warmup:I

    .line 105
    iput-object p10, p0, Lo/getOutOfStore;->onNavigationEvent:Lo/Ι;

    .line 106
    iput-object v0, p0, Lo/getOutOfStore;->asBinder:Ljava/lang/Runnable;

    .line 107
    iput-object p11, p0, Lo/getOutOfStore;->onRelationshipValidationResult:Lo/setPivotX;

    return-void

    .line 5215
    :cond_0
    throw v0

    .line 4215
    :cond_1
    throw v0

    .line 3215
    :cond_2
    throw v0

    .line 2215
    :cond_3
    throw v0

    .line 1215
    :cond_4
    throw v0
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 118
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 6150
    iget-object v0, v0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 120
    invoke-static {v0}, Lo/setLayoutDirection;->onMessageChannelReady(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lo/getOutOfStore$extraCallback;

    iget-boolean v5, p0, Lo/getOutOfStore;->getInterfaceDescriptor:Z

    iget v6, p0, Lo/getOutOfStore;->warmup:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lo/getOutOfStore$extraCallback;-><init>(Lo/getOutOfStore;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZI)V

    goto :goto_0

    .line 125
    :cond_0
    new-instance v4, Lo/getContentPaddingBottom$onNavigationEvent;

    iget-object v0, p0, Lo/getOutOfStore;->ICustomTabsCallback$Stub:Lo/getTranslateY;

    invoke-direct {v4, v0}, Lo/getContentPaddingBottom$onNavigationEvent;-><init>(Lo/getTranslateY;)V

    .line 126
    new-instance v8, Lo/getOutOfStore$ICustomTabsCallback;

    iget-object v5, p0, Lo/getOutOfStore;->onTransact:Lo/AFExecutor$1$1;

    iget-boolean v6, p0, Lo/getOutOfStore;->getInterfaceDescriptor:Z

    iget v7, p0, Lo/getOutOfStore;->warmup:I

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lo/getOutOfStore$ICustomTabsCallback;-><init>(Lo/getOutOfStore;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getContentPaddingBottom$onNavigationEvent;Lo/AFExecutor$1$1;ZI)V

    move-object v0, v8

    .line 135
    :goto_0
    iget-object p1, p0, Lo/getOutOfStore;->asInterface:Lo/setDeviceTrackingDisabled;

    invoke-interface {p1, v0, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 138
    throw p1
.end method
