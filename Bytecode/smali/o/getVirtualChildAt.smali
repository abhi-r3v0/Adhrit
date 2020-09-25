.class public final Lo/getVirtualChildAt;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getVirtualChildAt$extraCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/addActionBarHideOffset;

.field private asBinder:Lo/getVirtualChildAt;

.field extraCallback:Landroid/app/Fragment;

.field private final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/getVirtualChildAt;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field onPostMessage:Lo/AppCompatImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    new-instance v0, Lo/addActionBarHideOffset;

    invoke-direct {v0}, Lo/addActionBarHideOffset;-><init>()V

    invoke-direct {p0, v0}, Lo/getVirtualChildAt;-><init>(Lo/addActionBarHideOffset;)V

    return-void
.end method

.method private constructor <init>(Lo/addActionBarHideOffset;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 33
    new-instance v0, Lo/getVirtualChildAt$extraCallback;

    invoke-direct {v0, p0}, Lo/getVirtualChildAt$extraCallback;-><init>(Lo/getVirtualChildAt;)V

    iput-object v0, p0, Lo/getVirtualChildAt;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/getVirtualChildAt;->onMessageChannelReady:Ljava/util/Set;

    .line 54
    iput-object p1, p0, Lo/getVirtualChildAt;->ICustomTabsCallback:Lo/addActionBarHideOffset;

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 180
    :try_start_0
    invoke-virtual {p0, p1}, Lo/getVirtualChildAt;->onPostMessage(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "RMFragment"

    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to register fragment with root"

    .line 184
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 210
    iget-object v0, p0, Lo/getVirtualChildAt;->ICustomTabsCallback:Lo/addActionBarHideOffset;

    invoke-virtual {v0}, Lo/addActionBarHideOffset;->onNavigationEvent()V

    .line 5169
    iget-object v0, p0, Lo/getVirtualChildAt;->asBinder:Lo/getVirtualChildAt;

    if-eqz v0, :cond_0

    .line 6090
    iget-object v0, v0, Lo/getVirtualChildAt;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5171
    iput-object v0, p0, Lo/getVirtualChildAt;->asBinder:Lo/getVirtualChildAt;

    :cond_0
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 4169
    iget-object v0, p0, Lo/getVirtualChildAt;->asBinder:Lo/getVirtualChildAt;

    if-eqz v0, :cond_0

    .line 5090
    iget-object v0, v0, Lo/getVirtualChildAt;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4171
    iput-object v0, p0, Lo/getVirtualChildAt;->asBinder:Lo/getVirtualChildAt;

    :cond_0
    return-void
.end method

.method final onPostMessage(Landroid/app/Activity;)V
    .locals 3

    .line 1169
    iget-object v0, p0, Lo/getVirtualChildAt;->asBinder:Lo/getVirtualChildAt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, v0, Lo/getVirtualChildAt;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1171
    iput-object v1, p0, Lo/getVirtualChildAt;->asBinder:Lo/getVirtualChildAt;

    .line 162
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 2712
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->onPostMessage:Lo/setWeightSum;

    .line 3343
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Lo/setWeightSum;->onNavigationEvent(Landroid/content/Context;)Z

    move-result p1

    .line 3342
    invoke-virtual {v0, v2, v1, p1}, Lo/setWeightSum;->extraCallback(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lo/getVirtualChildAt;

    move-result-object p1

    .line 162
    iput-object p1, p0, Lo/getVirtualChildAt;->asBinder:Lo/getVirtualChildAt;

    .line 163
    invoke-virtual {p0, p1}, Lo/getVirtualChildAt;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lo/getVirtualChildAt;->asBinder:Lo/getVirtualChildAt;

    .line 4085
    iget-object p1, p1, Lo/getVirtualChildAt;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 198
    iget-object v0, p0, Lo/getVirtualChildAt;->ICustomTabsCallback:Lo/addActionBarHideOffset;

    invoke-virtual {v0}, Lo/addActionBarHideOffset;->onMessageChannelReady()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 204
    iget-object v0, p0, Lo/getVirtualChildAt;->ICustomTabsCallback:Lo/addActionBarHideOffset;

    invoke-virtual {v0}, Lo/addActionBarHideOffset;->ICustomTabsCallback()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 6137
    invoke-virtual {p0}, Lo/getVirtualChildAt;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 6141
    :cond_1
    iget-object v1, p0, Lo/getVirtualChildAt;->extraCallback:Landroid/app/Fragment;

    .line 216
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
