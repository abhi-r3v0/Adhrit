.class final Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "postMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V
    .locals 0

    .line 2721
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 2745
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2740
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 2735
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 2725
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$updateVisuals;

    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-direct {v0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$updateVisuals;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 2730
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$postMessage;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 2753
    invoke-static {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2758
    invoke-static {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
