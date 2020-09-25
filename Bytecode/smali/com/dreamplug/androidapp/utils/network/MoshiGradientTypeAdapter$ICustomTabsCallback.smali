.class public final Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AFLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$Companion;",
        "",
        "()V",
        "TYPE_LINEAR",
        "",
        "TYPE_RADIAL",
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
.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AFLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/AFLogger;",
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

    iput-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

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

    check-cast v0, Lo/AFLogger;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setPreinstallAttribution;)V
    .locals 5

    .line 10185
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 10187
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 10189
    :try_start_0
    invoke-interface {v2, p1}, Lo/AFLogger;->ICustomTabsCallback(Lo/setPreinstallAttribution;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onRequestCancellation"

    const-string v4, "ForwardingRequestListener2"

    .line 10209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 6128
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6130
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 6132
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lo/AFLogger;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onIntermediateChunkStart"

    const-string v4, "ForwardingRequestListener2"

    .line 6209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPreinstallAttribution;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3078
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3080
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 3082
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lo/AFLogger;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithSuccess"

    const-string v4, "ForwardingRequestListener2"

    .line 3209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/setPreinstallAttribution;)V
    .locals 5

    .line 1047
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1049
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 1051
    :try_start_0
    invoke-interface {v2, p1}, Lo/AFLogger;->extraCallback(Lo/setPreinstallAttribution;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onRequestStart"

    const-string v4, "ForwardingRequestListener2"

    .line 1209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPreinstallAttribution;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4096
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4098
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 4100
    :try_start_0
    invoke-interface {v2, p1, p2, p3, p4}, Lo/AFLogger;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithFailure"

    const-string v4, "ForwardingRequestListener2"

    .line 4209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPreinstallAttribution;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5113
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5115
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 5117
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lo/AFLogger;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithCancellation"

    const-string v4, "ForwardingRequestListener2"

    .line 5209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z
    .locals 4

    .line 11199
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11201
    iget-object v3, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AFLogger;

    invoke-interface {v3, p1, p2}, Lo/AFLogger;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

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

.method public final onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V
    .locals 5

    .line 2061
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2063
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 2065
    :try_start_0
    invoke-interface {v2, p1, p2}, Lo/AFLogger;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerStart"

    const-string v4, "ForwardingRequestListener2"

    .line 2209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/setPreinstallAttribution;)V
    .locals 5

    .line 8157
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8159
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 8161
    :try_start_0
    invoke-interface {v2, p1}, Lo/AFLogger;->onNavigationEvent(Lo/setPreinstallAttribution;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onRequestSuccess"

    const-string v4, "ForwardingRequestListener2"

    .line 8209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V
    .locals 5

    .line 7143
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7145
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 7147
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lo/AFLogger;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithSuccess"

    const-string v4, "ForwardingRequestListener2"

    .line 7209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/Throwable;)V
    .locals 5

    .line 9171
    iget-object v0, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9173
    iget-object v2, p0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AFLogger;

    .line 9175
    :try_start_0
    invoke-interface {v2, p1, p2}, Lo/AFLogger;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InternalListener exception in onRequestFailure"

    const-string v4, "ForwardingRequestListener2"

    .line 9209
    invoke-static {v4, v3, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
