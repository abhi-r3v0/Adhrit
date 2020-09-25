.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lcom/dreamplug/androidapp/DreamAppGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 15
    new-instance p1, Lcom/dreamplug/androidapp/DreamAppGlideModule;

    invoke-direct {p1}, Lcom/dreamplug/androidapp/DreamAppGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->ICustomTabsCallback:Lcom/dreamplug/androidapp/DreamAppGlideModule;

    const-string p1, "Glide"

    const/4 v0, 0x3

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Discovered AppGlideModule from annotation: com.dreamplug.androidapp.DreamAppGlideModule"

    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final synthetic onNavigationEvent()Lo/setWeightSum$onMessageChannelReady;
    .locals 1

    .line 1046
    new-instance v0, Lo/get;

    invoke-direct {v0}, Lo/get;-><init>()V

    return-object v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->ICustomTabsCallback:Lcom/dreamplug/androidapp/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/getVirtualChildCount;->onPostMessage()Z

    move-result v0

    return v0
.end method
