.class public final Lo/setLayoutTransition$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNestedScrollingEnabled;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutTransition;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/ContactItemHolder$bind$3",
        "Lcom/dreamplug/contacthelper/listeners/OnProfilePicFetchListener;",
        "onReady",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/setLayoutTransition;


# direct methods
.method constructor <init>(Lo/setLayoutTransition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lo/setLayoutTransition$ICustomTabsCallback;->onPostMessage:Lo/setLayoutTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lo/setLayoutTransition$ICustomTabsCallback;->onPostMessage:Lo/setLayoutTransition;

    .line 1041
    iget-object v0, v0, Lo/setLayoutTransition;->ICustomTabsCallback:Landroid/os/Handler;

    .line 67
    new-instance v1, Lo/setLayoutTransition$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {v1, p0, p1}, Lo/setLayoutTransition$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/setLayoutTransition$ICustomTabsCallback;Landroid/graphics/Bitmap;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
