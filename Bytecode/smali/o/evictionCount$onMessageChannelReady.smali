.class public final Lo/evictionCount$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/registerConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/evictionCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;,
        Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;,
        Lo/evictionCount$onMessageChannelReady$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/TimeTracker$Companion;",
        "",
        "()V",
        "IDEAL",
        "STARTED",
        "STOPPED",
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
.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/registerConversionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/registerConversionListener;",
            ">;)V"
        }
    .end annotation

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    .line 1025
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v1, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Lo/registerConversionListener;)V
    .locals 4

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    .line 1034
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 1036
    iget-object v3, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2062
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2064
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 2066
    :try_start_0
    invoke-interface {v2, p1, p2}, Lo/registerConversionListener;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerStart"

    const-string v4, "ForwardingRequestListener"

    .line 2202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5107
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5109
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 5111
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lo/registerConversionListener;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithCancellation"

    const-string v4, "ForwardingRequestListener"

    .line 5202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/getHostPrefix;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 5

    .line 1048
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1050
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 1052
    :try_start_0
    invoke-interface {v2, p1, p2, p3, p4}, Lo/registerConversionListener;->ICustomTabsCallback(Lo/getHostPrefix;Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onRequestStart"

    const-string v4, "ForwardingRequestListener"

    .line 1202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 5

    .line 10178
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 10180
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 10182
    :try_start_0
    invoke-interface {v2, p1}, Lo/registerConversionListener;->extraCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onRequestCancellation"

    const-string v4, "ForwardingRequestListener"

    .line 10202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 6121
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6123
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 6125
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lo/registerConversionListener;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onIntermediateChunkStart"

    const-string v4, "ForwardingRequestListener"

    .line 6202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4092
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4094
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 4096
    :try_start_0
    invoke-interface {v2, p1, p2, p3, p4}, Lo/registerConversionListener;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithFailure"

    const-string v4, "ForwardingRequestListener"

    .line 4202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 7135
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7137
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 7139
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lo/registerConversionListener;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithSuccess"

    const-string v4, "ForwardingRequestListener"

    .line 7202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Z
    .locals 4

    .line 11192
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11194
    iget-object v3, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/registerConversionListener;

    invoke-interface {v3, p1}, Lo/registerConversionListener;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3077
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3079
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 3081
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lo/registerConversionListener;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithSuccess"

    const-string v4, "ForwardingRequestListener"

    .line 3202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 5

    .line 9164
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9166
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 9168
    :try_start_0
    invoke-interface {v2, p1, p2, p3, p4}, Lo/registerConversionListener;->onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onRequestFailure"

    const-string v4, "ForwardingRequestListener"

    .line 9202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Z)V
    .locals 5

    .line 8149
    iget-object v0, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8151
    iget-object v2, p0, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/registerConversionListener;

    .line 8153
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lo/registerConversionListener;->onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onRequestSuccess"

    const-string v4, "ForwardingRequestListener"

    .line 8202
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
