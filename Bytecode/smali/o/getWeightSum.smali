.class public Lo/getWeightSum;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getWeightSum$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field extraCallback:Lo/AppCompatImageButton;

.field private final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/getWeightSum;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/addActionBarHideOffset;

.field private onPostMessage:Lo/getWeightSum;

.field private onRelationshipValidationResult:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    new-instance v0, Lo/addActionBarHideOffset;

    invoke-direct {v0}, Lo/addActionBarHideOffset;-><init>()V

    invoke-direct {p0, v0}, Lo/getWeightSum;-><init>(Lo/addActionBarHideOffset;)V

    return-void
.end method

.method private constructor <init>(Lo/addActionBarHideOffset;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 30
    new-instance v0, Lo/getWeightSum$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getWeightSum$ICustomTabsCallback;-><init>(Lo/getWeightSum;)V

    iput-object v0, p0, Lo/getWeightSum;->ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/getWeightSum;->onMessageChannelReady:Ljava/util/Set;

    .line 45
    iput-object p1, p0, Lo/getWeightSum;->onNavigationEvent:Lo/addActionBarHideOffset;

    return-void
.end method

.method private extraCallback(Landroid/content/Context;Lo/requestExtraBinder;)V
    .locals 1

    .line 1164
    iget-object v0, p0, Lo/getWeightSum;->onPostMessage:Lo/getWeightSum;

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, v0, Lo/getWeightSum;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1166
    iput-object v0, p0, Lo/getWeightSum;->onPostMessage:Lo/getWeightSum;

    .line 155
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 2712
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->onPostMessage:Lo/setWeightSum;

    .line 157
    invoke-virtual {v0, p1, p2}, Lo/setWeightSum;->onPostMessage(Landroid/content/Context;Lo/requestExtraBinder;)Lo/getWeightSum;

    move-result-object p1

    iput-object p1, p0, Lo/getWeightSum;->onPostMessage:Lo/getWeightSum;

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 159
    iget-object p1, p0, Lo/getWeightSum;->onPostMessage:Lo/getWeightSum;

    .line 3078
    iget-object p1, p1, Lo/getWeightSum;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method final extraCallback(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 113
    iput-object p1, p0, Lo/getWeightSum;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    .line 1126
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1127
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 1129
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 121
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lo/getWeightSum;->extraCallback(Landroid/content/Context;Lo/requestExtraBinder;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 172
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    move-object p1, p0

    .line 3126
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3127
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 3129
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    if-nez p1, :cond_2

    .line 176
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unable to register fragment with root, ancestor detached"

    .line 178
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 184
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lo/getWeightSum;->extraCallback(Landroid/content/Context;Lo/requestExtraBinder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 187
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Unable to register fragment with root"

    .line 188
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 214
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 215
    iget-object v0, p0, Lo/getWeightSum;->onNavigationEvent:Lo/addActionBarHideOffset;

    invoke-virtual {v0}, Lo/addActionBarHideOffset;->onNavigationEvent()V

    .line 4164
    iget-object v0, p0, Lo/getWeightSum;->onPostMessage:Lo/getWeightSum;

    if-eqz v0, :cond_0

    .line 5082
    iget-object v0, v0, Lo/getWeightSum;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4166
    iput-object v0, p0, Lo/getWeightSum;->onPostMessage:Lo/getWeightSum;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lo/getWeightSum;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    .line 3164
    iget-object v1, p0, Lo/getWeightSum;->onPostMessage:Lo/getWeightSum;

    if-eqz v1, :cond_0

    .line 4082
    iget-object v1, v1, Lo/getWeightSum;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3166
    iput-object v0, p0, Lo/getWeightSum;->onPostMessage:Lo/getWeightSum;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 202
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 203
    iget-object v0, p0, Lo/getWeightSum;->onNavigationEvent:Lo/addActionBarHideOffset;

    invoke-virtual {v0}, Lo/addActionBarHideOffset;->onMessageChannelReady()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 208
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 209
    iget-object v0, p0, Lo/getWeightSum;->onNavigationEvent:Lo/addActionBarHideOffset;

    invoke-virtual {v0}, Lo/addActionBarHideOffset;->ICustomTabsCallback()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5135
    :cond_0
    iget-object v1, p0, Lo/getWeightSum;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    .line 221
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
