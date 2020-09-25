.class public final Lo/PlaybackStateCompat$Builder$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field public onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/PlaybackStateCompat$Builder$onPostMessage;
    .locals 3

    if-nez p2, :cond_0

    .line 798
    iget-object p2, p0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 800
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 801
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Boolean;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Byte;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Integer;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Long;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Float;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Double;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 816
    :cond_1
    const-class v1, [Z

    if-ne v0, v1, :cond_2

    .line 817
    iget-object v0, p0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    check-cast p2, [Z

    invoke-static {p2}, Lo/PlaybackStateCompat$Builder;->onPostMessage([Z)[Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 818
    :cond_2
    const-class v1, [B

    if-ne v0, v1, :cond_3

    .line 819
    iget-object v0, p0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    check-cast p2, [B

    invoke-static {p2}, Lo/PlaybackStateCompat$Builder;->onNavigationEvent([B)[Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 820
    :cond_3
    const-class v1, [I

    if-ne v0, v1, :cond_4

    .line 821
    iget-object v0, p0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    check-cast p2, [I

    invoke-static {p2}, Lo/PlaybackStateCompat$Builder;->extraCallback([I)[Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 822
    :cond_4
    const-class v1, [J

    if-ne v0, v1, :cond_5

    .line 823
    iget-object v0, p0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    check-cast p2, [J

    invoke-static {p2}, Lo/PlaybackStateCompat$Builder;->extraCallback([J)[Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 824
    :cond_5
    const-class v1, [F

    if-ne v0, v1, :cond_6

    .line 825
    iget-object v0, p0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    check-cast p2, [F

    invoke-static {p2}, Lo/PlaybackStateCompat$Builder;->extraCallback([F)[Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 826
    :cond_6
    const-class v1, [D

    if-ne v0, v1, :cond_7

    .line 827
    iget-object v0, p0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    check-cast p2, [D

    invoke-static {p2}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([D)[Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 829
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "Key %s has invalid type %s"

    .line 830
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 815
    :cond_8
    :goto_0
    iget-object v0, p0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/util/Map;)Lo/PlaybackStateCompat$Builder$onPostMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/PlaybackStateCompat$Builder$onPostMessage;"
        }
    .end annotation

    .line 777
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 778
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 779
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 780
    invoke-virtual {p0, v1, v0}, Lo/PlaybackStateCompat$Builder$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/PlaybackStateCompat$Builder$onPostMessage;

    goto :goto_0

    :cond_0
    return-object p0
.end method
