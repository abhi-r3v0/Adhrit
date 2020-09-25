.class public final Lo/copy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPivotX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPivotX<",
        "Lo/CredPointCountModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/CampaignResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;

.field final onMessageChannelReady:Lo/onPostMessage$extraCallback;

.field final onNavigationEvent:Landroid/content/Context;

.field final onPostMessage:Lo/weakContext;

.field private final onTransact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/setScaleType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/extraCallback$onNavigationEvent;)V
    .locals 1

    .line 38
    invoke-static {}, Lo/key;->onNavigationEvent()Lo/key;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lo/copy;-><init>(Landroid/content/Context;Lo/key;Lo/extraCallback$onNavigationEvent;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/key;Lo/extraCallback$onNavigationEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lo/copy;-><init>(Landroid/content/Context;Lo/key;Lo/extraCallback$onNavigationEvent;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/key;Lo/extraCallback$onNavigationEvent;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/key;",
            "Lo/extraCallback$onNavigationEvent;",
            "B)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lo/copy;->onNavigationEvent:Landroid/content/Context;

    .line 1302
    iget-object p3, p2, Lo/key;->onPostMessage:Lo/weakContext;

    if-nez p3, :cond_0

    .line 1303
    invoke-virtual {p2}, Lo/key;->extraCallback()Lo/weakContext;

    move-result-object p3

    iput-object p3, p2, Lo/key;->onPostMessage:Lo/weakContext;

    .line 1305
    :cond_0
    iget-object p3, p2, Lo/key;->onPostMessage:Lo/weakContext;

    .line 55
    iput-object p3, p0, Lo/copy;->onPostMessage:Lo/weakContext;

    .line 60
    new-instance p3, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;

    invoke-direct {p3}, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;-><init>()V

    iput-object p3, p0, Lo/copy;->extraCallback:Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 64
    invoke-static {}, Lo/BECampaign;->onPostMessage()Lo/BECampaign;

    move-result-object p4

    .line 2189
    invoke-virtual {p2}, Lo/key;->onMessageChannelReady()Lo/buildDrawingCache;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_0

    .line 2190
    :cond_1
    invoke-interface {p2}, Lo/buildDrawingCache;->ICustomTabsCallback()Lo/AFFacebookDeferredDeeplink$5;

    move-result-object p2

    .line 66
    :goto_0
    invoke-static {}, Lo/getTrimPathEnd;->onPostMessage()Lo/getTrimPathEnd;

    move-result-object v1

    iget-object v2, p0, Lo/copy;->onPostMessage:Lo/weakContext;

    .line 2621
    iget-object v2, v2, Lo/weakContext;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    .line 3040
    iput-object p1, p3, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->ICustomTabsCallback:Landroid/content/res/Resources;

    .line 3041
    iput-object p4, p3, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onPostMessage:Lo/BECampaign;

    .line 3042
    iput-object p2, p3, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->extraCallback:Lo/AFFacebookDeferredDeeplink$5;

    .line 3043
    iput-object v1, p3, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 3044
    iput-object v2, p3, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    .line 3045
    iput-object v0, p3, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onRelationshipValidationResult:Lo/getRotation;

    .line 3046
    iput-object v0, p3, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->asBinder:Lo/setPivotX;

    .line 70
    iput-object v0, p0, Lo/copy;->ICustomTabsCallback:Ljava/util/Set;

    .line 71
    iput-object v0, p0, Lo/copy;->onTransact:Ljava/util/Set;

    .line 74
    iput-object v0, p0, Lo/copy;->onMessageChannelReady:Lo/onPostMessage$extraCallback;

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lo/copy;->onPostMessage()Lo/CredPointCountModel;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Lo/CredPointCountModel;
    .locals 7

    .line 79
    new-instance v6, Lo/CredPointCountModel;

    iget-object v1, p0, Lo/copy;->onNavigationEvent:Landroid/content/Context;

    iget-object v2, p0, Lo/copy;->extraCallback:Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;

    iget-object v3, p0, Lo/copy;->onPostMessage:Lo/weakContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/CredPointCountModel;-><init>(Landroid/content/Context;Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;Lo/weakContext;Ljava/util/Set;Ljava/util/Set;)V

    .line 86
    iget-object v0, p0, Lo/copy;->onMessageChannelReady:Lo/onPostMessage$extraCallback;

    .line 3112
    iput-object v0, v6, Lo/CredPointCountModel;->extraCallback:Lo/onPostMessage$extraCallback;

    .line 3113
    check-cast v6, Lo/CredPointCountModel;

    return-object v6
.end method
