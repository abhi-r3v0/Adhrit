.class public abstract Lo/Campaign;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setMaxProgress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Campaign$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lo/Campaign<",
        "TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setMaxProgress;"
    }
.end annotation


# static fields
.field private static final asBinder:Ljava/lang/NullPointerException;

.field private static final extraCallback:Lo/CampaignResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CampaignResponseJsonAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final onTransact:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/CampaignResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public asInterface:Lo/getMinFrame;

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Ljava/lang/Object;

.field public onPostMessage:Lo/CampaignResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CampaignResponseJsonAdapter<",
            "-TINFO;>;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/setScaleType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lo/Campaign$1;

    invoke-direct {v0}, Lo/Campaign$1;-><init>()V

    sput-object v0, Lo/Campaign;->extraCallback:Lo/CampaignResponseJsonAdapter;

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/Campaign;->asBinder:Ljava/lang/NullPointerException;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lo/Campaign;->onTransact:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lo/CampaignResponseJsonAdapter;",
            ">;",
            "Ljava/util/Set<",
            "Lo/setScaleType;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lo/Campaign;->ICustomTabsCallback$Stub:Ljava/util/Set;

    .line 83
    iput-object p3, p0, Lo/Campaign;->onRelationshipValidationResult:Ljava/util/Set;

    const/4 p1, 0x0

    .line 1089
    iput-object p1, p0, Lo/Campaign;->onNavigationEvent:Ljava/lang/Object;

    .line 1090
    iput-object p1, p0, Lo/Campaign;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1094
    iput-object p1, p0, Lo/Campaign;->onPostMessage:Lo/CampaignResponseJsonAdapter;

    const/4 p2, 0x0

    .line 1098
    iput-boolean p2, p0, Lo/Campaign;->onMessageChannelReady:Z

    .line 1099
    iput-object p1, p0, Lo/Campaign;->asInterface:Lo/getMinFrame;

    return-void
.end method

.method protected static onPostMessage()Ljava/lang/String;
    .locals 2

    .line 347
    sget-object v0, Lo/Campaign;->onTransact:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Lo/getMinFrame;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lo/Campaign$onMessageChannelReady;)Lo/WorkDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMinFrame;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Ljava/lang/Object;",
            "Lo/Campaign$onMessageChannelReady;",
            ")",
            "Lo/WorkDatabase<",
            "TIMAGE;>;"
        }
    .end annotation
.end method

.method public final ICustomTabsCallback()Lo/getMinFrame;
    .locals 1

    .line 298
    iget-object v0, p0, Lo/Campaign;->asInterface:Lo/getMinFrame;

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsCallback(Lo/getMinFrame;)Lo/setMaxProgress;
    .locals 0

    .line 10291
    iput-object p1, p0, Lo/Campaign;->asInterface:Lo/getMinFrame;

    return-object p0
.end method

.method public final synthetic ICustomTabsCallback$Stub()Lo/getMinFrame;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lo/Campaign;->extraCallback()Lo/DataCampaign;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()Lo/DataCampaign;
    .locals 4

    .line 3330
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 3333
    invoke-virtual {p0}, Lo/Campaign;->onNavigationEvent()Lo/DataCampaign;

    move-result-object v0

    const/4 v1, 0x0

    .line 4273
    iput-boolean v1, v0, Lo/DataCampaign;->ICustomTabsCallback:Z

    const/4 v1, 0x0

    .line 5285
    iput-object v1, v0, Lo/DataCampaign;->onTransact:Ljava/lang/String;

    .line 7434
    iget-object v1, p0, Lo/Campaign;->ICustomTabsCallback$Stub:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 7435
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CampaignResponseJsonAdapter;

    .line 7436
    invoke-virtual {v0, v2}, Lo/DataCampaign;->onMessageChannelReady(Lo/CampaignResponseJsonAdapter;)V

    goto :goto_0

    .line 7439
    :cond_0
    iget-object v1, p0, Lo/Campaign;->onRelationshipValidationResult:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 7440
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setScaleType;

    .line 8306
    iget-object v3, v0, Lo/DataCampaign;->onMessageChannelReady:Lo/cancelAnimation;

    invoke-virtual {v3, v2}, Lo/cancelAnimation;->extraCallback(Lo/setScaleType;)V

    goto :goto_1

    .line 7444
    :cond_1
    iget-object v1, p0, Lo/Campaign;->onPostMessage:Lo/CampaignResponseJsonAdapter;

    if-eqz v1, :cond_2

    .line 7445
    invoke-virtual {v0, v1}, Lo/DataCampaign;->onMessageChannelReady(Lo/CampaignResponseJsonAdapter;)V

    .line 7447
    :cond_2
    iget-boolean v1, p0, Lo/Campaign;->onMessageChannelReady:Z

    if-eqz v1, :cond_3

    .line 7448
    sget-object v1, Lo/Campaign;->extraCallback:Lo/CampaignResponseJsonAdapter;

    invoke-virtual {v0, v1}, Lo/DataCampaign;->onMessageChannelReady(Lo/CampaignResponseJsonAdapter;)V

    .line 3339
    :cond_3
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/Campaign;->onNavigationEvent:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract onNavigationEvent()Lo/DataCampaign;
    .annotation build Lcom/facebook/infer/annotation/ReturnsOwnership;
    .end annotation
.end method

.method protected final onPostMessage(Lo/getMinFrame;Ljava/lang/String;)Lo/setPivotX;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMinFrame;",
            "Ljava/lang/String;",
            ")",
            "Lo/setPivotX<",
            "Lo/WorkDatabase<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 360
    iget-object v4, p0, Lo/Campaign;->ICustomTabsCallback:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 8407
    sget-object v6, Lo/Campaign$onMessageChannelReady;->extraCallback:Lo/Campaign$onMessageChannelReady;

    .line 9119
    iget-object v5, p0, Lo/Campaign;->onNavigationEvent:Ljava/lang/Object;

    .line 8418
    new-instance v7, Lo/Campaign$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lo/Campaign$3;-><init>(Lo/Campaign;Lo/getMinFrame;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lo/Campaign$onMessageChannelReady;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    .line 378
    sget-object p1, Lo/Campaign;->asBinder:Ljava/lang/NullPointerException;

    .line 10033
    new-instance v7, Lo/OverwritingInputMerger$5;

    invoke-direct {v7, p1}, Lo/OverwritingInputMerger$5;-><init>(Ljava/lang/Throwable;)V

    :cond_1
    return-object v7
.end method
