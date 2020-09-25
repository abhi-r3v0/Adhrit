.class final Lo/onSelected$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSelected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onSelected;

.field private synthetic onMessageChannelReady:Z


# direct methods
.method constructor <init>(Lo/onSelected;Z)V
    .locals 0

    iput-object p1, p0, Lo/onSelected$getInterfaceDescriptor;->extraCallback:Lo/onSelected;

    iput-boolean p2, p0, Lo/onSelected$getInterfaceDescriptor;->onMessageChannelReady:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1162
    iget-boolean v0, p0, Lo/onSelected$getInterfaceDescriptor;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lo/onSelected$getInterfaceDescriptor;->extraCallback:Lo/onSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/cachePreLayoutSpanMapping;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lo/cachePreLayoutSpanMapping;

    if-eqz v0, :cond_1

    .line 2005
    invoke-interface {v0, v2}, Lo/cachePreLayoutSpanMapping;->onMessageChannelReady(Lo/computeHorizontalScrollRange;)V

    .line 1168
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1169
    iget-boolean v1, p0, Lo/onSelected$getInterfaceDescriptor;->onMessageChannelReady:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "manual_flow"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1170
    iget-object v1, p0, Lo/onSelected$getInterfaceDescriptor;->extraCallback:Lo/onSelected;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    iget-object v2, p0, Lo/onSelected$getInterfaceDescriptor;->extraCallback:Lo/onSelected;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1171
    iget-object v0, p0, Lo/onSelected$getInterfaceDescriptor;->extraCallback:Lo/onSelected;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    .line 54
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
