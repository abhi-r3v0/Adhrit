.class public final Lo/onDrawableLoadedFromResources;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Lo/dispatchFitSystemWindows;

.field public ICustomTabsCallback$Stub:Lo/initProgress;

.field public ICustomTabsCallback$Stub$Proxy:Lcom/bumptech/glide/Glide$onPostMessage;

.field public ICustomTabsService:Lo/initProgress;

.field public asBinder:Lo/setBaselineAlignedChildIndex;

.field public asInterface:Lo/getViewGroup;

.field public extraCallback:Lo/setLineHeight;

.field public getInterfaceDescriptor:I

.field public newSession:Lo/setWeightSum$onMessageChannelReady;

.field public onMessageChannelReady:Lo/ButtonBarLayout;

.field public onNavigationEvent:Lo/DecorToolbar;

.field public final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/access$000<",
            "**>;>;"
        }
    .end annotation
.end field

.field public onRelationshipValidationResult:Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;

.field public onTransact:Lo/initProgress;

.field public warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/layoutVertical<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    iput-object v0, p0, Lo/onDrawableLoadedFromResources;->onPostMessage:Ljava/util/Map;

    const/4 v0, 0x4

    .line 52
    iput v0, p0, Lo/onDrawableLoadedFromResources;->getInterfaceDescriptor:I

    .line 53
    new-instance v0, Lo/onDrawableLoadedFromResources$2;

    invoke-direct {v0}, Lo/onDrawableLoadedFromResources$2;-><init>()V

    iput-object v0, p0, Lo/onDrawableLoadedFromResources;->ICustomTabsCallback$Stub$Proxy:Lcom/bumptech/glide/Glide$onPostMessage;

    return-void
.end method
