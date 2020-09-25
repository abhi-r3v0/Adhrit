.class final Lo/setBackgroundImage;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Flow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setBackgroundImage;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method

.method static synthetic extraCallback(Lo/setBackgroundImage;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lo/setBackgroundImage;->ICustomTabsCallback:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final extraCallback(Lo/FlowJsonAdapter;)V
    .locals 4

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v1, p0, Lo/setBackgroundImage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Flow;

    new-instance v3, Lo/GetProfilePicResponseJsonAdapter;

    invoke-direct {v3, p0, v2, p1}, Lo/GetProfilePicResponseJsonAdapter;-><init>(Lo/setBackgroundImage;Lo/Flow;Lo/FlowJsonAdapter;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/setBackgroundImage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
