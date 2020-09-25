.class public abstract Lo/setShuffleMode;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/rateWithExtras;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
.end method

.method public abstract ICustomTabsCallback(Lo/rateWithExtras;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
.end method

.method public ICustomTabsCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setShuffleMode;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
