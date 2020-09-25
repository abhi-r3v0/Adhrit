.class public final Lo/onPause;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onPause$ICustomTabsCallback;,
        Lo/onPause$onPostMessage;,
        Lo/onPause$onNavigationEvent;,
        Lo/onPause$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private onNavigationEvent:Landroid/util/SparseArray;
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
    .locals 5

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/onPause;->onNavigationEvent:Landroid/util/SparseArray;

    .line 1015
    new-instance v0, Lo/getText;

    invoke-direct {v0}, Lo/getText;-><init>()V

    .line 1016
    new-instance v1, Lo/onPause$ICustomTabsCallback;

    invoke-direct {v1}, Lo/onPause$ICustomTabsCallback;-><init>()V

    .line 1017
    new-instance v2, Lo/getIconUri$onNavigationEvent;

    invoke-direct {v2}, Lo/getIconUri$onNavigationEvent;-><init>()V

    .line 1019
    iget-object v3, p0, Lo/onPause;->onNavigationEvent:Landroid/util/SparseArray;

    const/16 v4, 0x30

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1020
    iget-object v1, p0, Lo/onPause;->onNavigationEvent:Landroid/util/SparseArray;

    const/16 v3, 0x50

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1021
    iget-object v1, p0, Lo/onPause;->onNavigationEvent:Landroid/util/SparseArray;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1022
    iget-object v1, p0, Lo/onPause;->onNavigationEvent:Landroid/util/SparseArray;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Lo/ActivityChooserModel$ActivitySorter;
    .locals 1

    .line 1026
    iget-object v0, p0, Lo/onPause;->onNavigationEvent:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ActivityChooserModel$ActivitySorter;

    if-nez p1, :cond_0

    .line 1028
    iget-object p1, p0, Lo/onPause;->onNavigationEvent:Landroid/util/SparseArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ActivityChooserModel$ActivitySorter;

    :cond_0
    return-object p1
.end method
