.class public final Lo/ensureMenuView$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/login/LoginActivity$Companion;",
        "",
        "()V",
        "FORCE_LOGOUT",
        "",
        "MESSAGE",
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
.field private final ICustomTabsCallback:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lo/evictionCount$onMessageChannelReady;

.field private asBinder:Lo/CampaignDatabase;

.field private asInterface:Lo/CredPointModel;

.field private final extraCallback:Lo/CoroutineWorker;

.field private getInterfaceDescriptor:Z

.field public final onMessageChannelReady:Lo/CampaignDatabase_Impl;

.field private final onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

.field public onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/onPostMessage$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Lo/AttributeJsonAdapter;

.field private onTransact:Lo/ActionJsonAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/CoroutineWorker;Lo/CredPointCountModelJsonAdapter;Lo/setPivotX;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CoroutineWorker;",
            "Lo/CredPointCountModelJsonAdapter;",
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->extraCallback:Lo/CoroutineWorker;

    .line 1051
    iput-object p2, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    .line 1052
    new-instance p1, Lo/CampaignDatabase_Impl;

    invoke-direct {p1}, Lo/CampaignDatabase_Impl;-><init>()V

    iput-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    .line 1053
    iput-object p3, p0, Lo/ensureMenuView$ICustomTabsCallback;->ICustomTabsCallback:Lo/setPivotX;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/CampaignDatabase_Impl;)V
    .locals 1

    .line 7136
    iget-boolean p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->getInterfaceDescriptor:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 7229
    :cond_0
    new-instance p1, Lo/CredPointModelJsonAdapter;

    invoke-direct {p1}, Lo/CredPointModelJsonAdapter;-><init>()V

    .line 7141
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onMessageChannelReady(Lo/CampaignDatabase_Impl;I)V
    .locals 1

    .line 5119
    iput p2, p1, Lo/CampaignDatabase_Impl;->IPostMessageService:I

    .line 4121
    iget-boolean p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->getInterfaceDescriptor:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 5147
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    .line 5354
    iget-object p1, p1, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    if-eqz p1, :cond_1

    .line 5148
    invoke-interface {p1}, Lo/setMaxFrame;->onMessageChannelReady()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5149
    invoke-interface {p1}, Lo/setMaxFrame;->onMessageChannelReady()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 5150
    iget-object p2, p0, Lo/ensureMenuView$ICustomTabsCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 6205
    iput v0, p2, Lo/CampaignDatabase_Impl;->requestPostMessageChannel:I

    .line 5151
    iget-object p2, p0, Lo/ensureMenuView$ICustomTabsCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 6209
    iput p1, p2, Lo/CampaignDatabase_Impl;->mayLaunchUrl:I

    .line 6229
    :cond_1
    new-instance p1, Lo/CredPointModelJsonAdapter;

    invoke-direct {p1}, Lo/CredPointModelJsonAdapter;-><init>()V

    .line 4128
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 3

    .line 1070
    iput-boolean p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->getInterfaceDescriptor:Z

    if-eqz p1, :cond_7

    .line 1156
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onTransact:Lo/ActionJsonAdapter;

    if-nez p1, :cond_0

    .line 1157
    new-instance p1, Lo/ActionJsonAdapter;

    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->extraCallback:Lo/CoroutineWorker;

    iget-object v1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    iget-object v2, p0, Lo/ensureMenuView$ICustomTabsCallback;->ICustomTabsCallback:Lo/setPivotX;

    invoke-direct {p1, v0, v1, p0, v2}, Lo/ActionJsonAdapter;-><init>(Lo/CoroutineWorker;Lo/CampaignDatabase_Impl;Lo/Action;Lo/setPivotX;)V

    iput-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onTransact:Lo/ActionJsonAdapter;

    .line 1160
    :cond_0
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onRelationshipValidationResult:Lo/AttributeJsonAdapter;

    if-nez p1, :cond_1

    .line 1161
    new-instance p1, Lo/AttributeJsonAdapter;

    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->extraCallback:Lo/CoroutineWorker;

    iget-object v1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    invoke-direct {p1, v0, v1}, Lo/AttributeJsonAdapter;-><init>(Lo/CoroutineWorker;Lo/CampaignDatabase_Impl;)V

    iput-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onRelationshipValidationResult:Lo/AttributeJsonAdapter;

    .line 1163
    :cond_1
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->asBinder:Lo/CampaignDatabase;

    if-nez p1, :cond_2

    .line 1164
    new-instance p1, Lo/inflateMenu$extraCallback;

    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    invoke-direct {p1, v0, p0}, Lo/inflateMenu$extraCallback;-><init>(Lo/CampaignDatabase_Impl;Lo/ensureMenuView$ICustomTabsCallback;)V

    iput-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->asBinder:Lo/CampaignDatabase;

    .line 1166
    :cond_2
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->asInterface:Lo/CredPointModel;

    if-nez p1, :cond_3

    .line 1167
    new-instance p1, Lo/CredPointModel;

    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    .line 1241
    iget-object v0, v0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    .line 1168
    iget-object v1, p0, Lo/ensureMenuView$ICustomTabsCallback;->asBinder:Lo/CampaignDatabase;

    invoke-direct {p1, v0, v1}, Lo/CredPointModel;-><init>(Ljava/lang/String;Lo/CampaignDatabase;)V

    iput-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->asInterface:Lo/CredPointModel;

    goto :goto_0

    .line 1171
    :cond_3
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    .line 2241
    iget-object v0, v0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    .line 3034
    iput-object v0, p1, Lo/CredPointModel;->onNavigationEvent:Ljava/lang/String;

    .line 1173
    :goto_0
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/evictionCount$onMessageChannelReady;

    if-nez p1, :cond_4

    .line 1174
    new-instance p1, Lo/evictionCount$onMessageChannelReady;

    const/4 v0, 0x2

    new-array v0, v0, [Lo/registerConversionListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/ensureMenuView$ICustomTabsCallback;->onRelationshipValidationResult:Lo/AttributeJsonAdapter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lo/ensureMenuView$ICustomTabsCallback;->asInterface:Lo/CredPointModel;

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Lo/evictionCount$onMessageChannelReady;-><init>([Lo/registerConversionListener;)V

    iput-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/evictionCount$onMessageChannelReady;

    .line 1073
    :cond_4
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->asBinder:Lo/CampaignDatabase;

    if-eqz p1, :cond_5

    .line 1074
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    invoke-virtual {v0, p1}, Lo/CredPointCountModelJsonAdapter;->onMessageChannelReady(Lo/CampaignDatabase;)V

    .line 1076
    :cond_5
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onTransact:Lo/ActionJsonAdapter;

    if-eqz p1, :cond_6

    .line 1077
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    .line 3306
    iget-object v0, v0, Lo/DataCampaign;->onMessageChannelReady:Lo/cancelAnimation;

    invoke-virtual {v0, p1}, Lo/cancelAnimation;->extraCallback(Lo/setScaleType;)V

    .line 1079
    :cond_6
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/evictionCount$onMessageChannelReady;

    if-eqz p1, :cond_a

    .line 1080
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    invoke-virtual {v0, p1}, Lo/CredPointCountModelJsonAdapter;->onMessageChannelReady(Lo/registerConversionListener;)V

    return-void

    .line 1083
    :cond_7
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->asBinder:Lo/CampaignDatabase;

    if-eqz p1, :cond_8

    .line 1084
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    invoke-virtual {v0, p1}, Lo/CredPointCountModelJsonAdapter;->onNavigationEvent(Lo/CampaignDatabase;)V

    .line 1086
    :cond_8
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->onTransact:Lo/ActionJsonAdapter;

    if-eqz p1, :cond_9

    .line 1087
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    .line 3310
    iget-object v0, v0, Lo/DataCampaign;->onMessageChannelReady:Lo/cancelAnimation;

    invoke-virtual {v0, p1}, Lo/cancelAnimation;->onPostMessage(Lo/setScaleType;)V

    .line 1089
    :cond_9
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/evictionCount$onMessageChannelReady;

    if-eqz p1, :cond_a

    .line 1090
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent:Lo/CredPointCountModelJsonAdapter;

    invoke-virtual {v0, p1}, Lo/CredPointCountModelJsonAdapter;->onNavigationEvent(Lo/registerConversionListener;)V

    :cond_a
    return-void
.end method
