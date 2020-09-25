.class public final Lo/getSessionToken2Bundle;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSessionToken2Bundle$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/ActivityChooserModel$ActivitySorter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/getSessionToken2Bundle;->ICustomTabsCallback:Landroid/util/SparseArray;

    .line 1015
    new-instance v0, Lo/setIconBitmap;

    invoke-direct {v0}, Lo/setIconBitmap;-><init>()V

    .line 1017
    iget-object v1, p0, Lo/getSessionToken2Bundle;->ICustomTabsCallback:Landroid/util/SparseArray;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1018
    iget-object v1, p0, Lo/getSessionToken2Bundle;->ICustomTabsCallback:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1019
    iget-object v0, p0, Lo/getSessionToken2Bundle;->ICustomTabsCallback:Landroid/util/SparseArray;

    new-instance v1, Lo/onFastForward;

    invoke-direct {v1}, Lo/onFastForward;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1020
    iget-object v0, p0, Lo/getSessionToken2Bundle;->ICustomTabsCallback:Landroid/util/SparseArray;

    new-instance v1, Lo/onFastForward$onRelationshipValidationResult;

    invoke-direct {v1}, Lo/onFastForward$onRelationshipValidationResult;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Lo/ActivityChooserModel$ActivitySorter;
    .locals 1

    .line 1024
    iget-object v0, p0, Lo/getSessionToken2Bundle;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ActivityChooserModel$ActivitySorter;

    if-nez p1, :cond_0

    .line 1026
    iget-object p1, p0, Lo/getSessionToken2Bundle;->ICustomTabsCallback:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ActivityChooserModel$ActivitySorter;

    :cond_0
    return-object p1
.end method
