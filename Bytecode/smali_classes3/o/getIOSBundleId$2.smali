.class final Lo/getIOSBundleId$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getIOSBundleId;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getIOSBundleId;


# direct methods
.method constructor <init>(Lo/getIOSBundleId;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lo/getIOSBundleId$2;->extraCallback:Lo/getIOSBundleId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lo/getIOSBundleId$2;->extraCallback:Lo/getIOSBundleId;

    .line 1056
    iget-object v0, v0, Lo/getIOSBundleId;->ICustomTabsCallback:Ljava/util/LinkedHashSet;

    .line 239
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    .line 240
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lo/getIOSBundleId$2;->extraCallback:Lo/getIOSBundleId;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method
