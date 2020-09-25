.class final Lo/getVolumeControl$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getVolumeControl;->onMessageChannelReady(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Ljava/util/Map;

.field final synthetic extraCallback:Ljava/util/ArrayList;

.field final synthetic onMessageChannelReady:Lo/getVolumeControl;


# direct methods
.method constructor <init>(Lo/getVolumeControl;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lo/getVolumeControl$5;->onMessageChannelReady:Lo/getVolumeControl;

    iput-object p2, p0, Lo/getVolumeControl$5;->extraCallback:Ljava/util/ArrayList;

    iput-object p3, p0, Lo/getVolumeControl$5;->ICustomTabsCallback:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 317
    iget-object v0, p0, Lo/getVolumeControl$5;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 319
    iget-object v2, p0, Lo/getVolumeControl$5;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 320
    invoke-static {v2}, Lo/unregisterCallbackListener;->requestPostMessageChannel(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 321
    iget-object v4, p0, Lo/getVolumeControl$5;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    invoke-static {v2, v3}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
