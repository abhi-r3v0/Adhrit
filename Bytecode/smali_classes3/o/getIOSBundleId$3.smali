.class final Lo/getIOSBundleId$3;
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
.field private synthetic ICustomTabsCallback:Lo/getIOSBundleId;


# direct methods
.method constructor <init>(Lo/getIOSBundleId;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lo/getIOSBundleId$3;->ICustomTabsCallback:Lo/getIOSBundleId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lo/getIOSBundleId$3;->ICustomTabsCallback:Lo/getIOSBundleId;

    .line 1056
    iget-object p1, p1, Lo/getIOSBundleId;->onNavigationEvent:Ljava/util/LinkedHashSet;

    .line 226
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 229
    :cond_0
    iget-object p1, p0, Lo/getIOSBundleId$3;->ICustomTabsCallback:Lo/getIOSBundleId;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method
