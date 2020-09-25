.class public Lo/checkOnClickListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final extraCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/getIconUri;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lo/checkOnClickListener;->onNavigationEvent:Z

    .line 24
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>()V

    iput-object v0, p0, Lo/checkOnClickListener;->extraCallback:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/checkOnClickListener;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;F)V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lo/checkOnClickListener;->onNavigationEvent:Z

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lo/checkOnClickListener;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getIconUri;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lo/getIconUri;

    invoke-direct {v0}, Lo/getIconUri;-><init>()V

    .line 51
    iget-object v1, p0, Lo/checkOnClickListener;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_1
    iget v1, v0, Lo/getIconUri;->onMessageChannelReady:F

    add-float/2addr v1, p2

    iput v1, v0, Lo/getIconUri;->onMessageChannelReady:F

    .line 1013
    iget p2, v0, Lo/getIconUri;->extraCallback:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lo/getIconUri;->extraCallback:I

    .line 1014
    iget p2, v0, Lo/getIconUri;->extraCallback:I

    const v1, 0x7fffffff

    if-ne p2, v1, :cond_2

    .line 1015
    iget p2, v0, Lo/getIconUri;->onMessageChannelReady:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iput p2, v0, Lo/getIconUri;->onMessageChannelReady:F

    .line 1016
    iget p2, v0, Lo/getIconUri;->extraCallback:I

    div-int/lit8 p2, p2, 0x2

    iput p2, v0, Lo/getIconUri;->extraCallback:I

    :cond_2
    const-string p2, "__container"

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lo/checkOnClickListener;->extraCallback:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method
