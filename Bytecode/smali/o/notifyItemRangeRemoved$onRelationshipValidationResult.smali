.class final Lo/notifyItemRangeRemoved$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyItemRangeRemoved;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/notifyItemRangeRemoved;


# direct methods
.method constructor <init>(Lo/notifyItemRangeRemoved;)V
    .locals 0

    iput-object p1, p0, Lo/notifyItemRangeRemoved$onRelationshipValidationResult;->extraCallback:Lo/notifyItemRangeRemoved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 47
    check-cast p1, Ljava/lang/Boolean;

    .line 1097
    iget-object v0, p0, Lo/notifyItemRangeRemoved$onRelationshipValidationResult;->extraCallback:Lo/notifyItemRangeRemoved;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget-object v1, p0, Lo/notifyItemRangeRemoved$onRelationshipValidationResult;->extraCallback:Lo/notifyItemRangeRemoved;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result v1

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "it"

    .line 1098
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    const/4 v1, 0x0

    .line 1099
    iget-object v2, p0, Lo/notifyItemRangeRemoved$onRelationshipValidationResult;->extraCallback:Lo/notifyItemRangeRemoved;

    invoke-static {v2}, Lo/notifyItemRangeRemoved;->ICustomTabsCallback(Lo/notifyItemRangeRemoved;)Ljava/lang/String;

    move-result-object v2

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "profile_pic_medium"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 1099
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "profile_pic_success"

    .line 1099
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1100
    iget-object p1, p0, Lo/notifyItemRangeRemoved$onRelationshipValidationResult;->extraCallback:Lo/notifyItemRangeRemoved;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    :cond_1
    return-void
.end method
