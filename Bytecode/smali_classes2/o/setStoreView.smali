.class final Lo/setStoreView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildClient;


# static fields
.field static final ICustomTabsCallback:Lo/buildClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/setStoreView;

    invoke-direct {v0}, Lo/setStoreView;-><init>()V

    sput-object v0, Lo/setStoreView;->ICustomTabsCallback:Lo/buildClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lo/setHeadlineView;->onMessageChannelReady(I)Lo/setHeadlineView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
