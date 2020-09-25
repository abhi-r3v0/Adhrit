.class final Lo/setAndroidPackageName$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setHandleCodeInApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setAndroidPackageName;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setHandleCodeInApp<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setAndroidPackageName;


# direct methods
.method constructor <init>(Lo/setAndroidPackageName;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lo/setAndroidPackageName$4;->ICustomTabsCallback:Lo/setAndroidPackageName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/setAndroidPackageName$4;->ICustomTabsCallback:Lo/setAndroidPackageName;

    iget-object v0, v0, Lo/parseLink;->ICustomTabsCallback$Stub:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setHandleCodeInApp;

    .line 82
    invoke-interface {v1, p1}, Lo/setHandleCodeInApp;->ICustomTabsCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
