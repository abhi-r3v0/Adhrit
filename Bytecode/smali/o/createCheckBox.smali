.class public Lo/createCheckBox;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Lo/checkOnClickListener;

.field public ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Lo/setActionBarVisibilityCallback;",
            ">;"
        }
    .end annotation
.end field

.field public ICustomTabsCallback$Stub$Proxy:I

.field public ICustomTabsService:F

.field public asBinder:Lo/describeContents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/describeContents<",
            "Lo/isCurrent$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setSplitBackground;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/setActionBarVisibilityCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public getInterfaceDescriptor:F

.field public newSession:F

.field public final onMessageChannelReady:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/isCurrent$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;",
            ">;"
        }
    .end annotation
.end field

.field public onRelationshipValidationResult:Landroid/graphics/Rect;

.field public onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setActionBarVisibilityCallback;",
            ">;"
        }
    .end annotation
.end field

.field public warmup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lo/checkOnClickListener;

    invoke-direct {v0}, Lo/checkOnClickListener;-><init>()V

    iput-object v0, p0, Lo/createCheckBox;->ICustomTabsCallback:Lo/checkOnClickListener;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/createCheckBox;->onMessageChannelReady:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lo/createCheckBox;->ICustomTabsCallback$Stub$Proxy:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/setSplitBackground;
    .locals 6

    .line 182
    iget-object v0, p0, Lo/createCheckBox;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    :goto_0
    iget-object v2, p0, Lo/createCheckBox;->asInterface:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 184
    iget-object v2, p0, Lo/createCheckBox;->asInterface:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setSplitBackground;

    .line 1017
    iget-object v3, v2, Lo/setSplitBackground;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1023
    :cond_0
    iget-object v3, v2, Lo/setSplitBackground;->onMessageChannelReady:Ljava/lang/String;

    sget-object v5, Lo/setSplitBackground;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lo/setSplitBackground;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, v2, Lo/setSplitBackground;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lo/createCheckBox;->onTransact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setActionBarVisibilityCallback;

    const-string v3, "\t"

    .line 208
    invoke-virtual {v2, v3}, Lo/setActionBarVisibilityCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
