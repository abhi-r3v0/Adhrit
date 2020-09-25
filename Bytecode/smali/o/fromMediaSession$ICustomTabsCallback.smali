.class final Lo/fromMediaSession$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Landroid/content/Intent;

.field final onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/fromMediaSession$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lo/fromMediaSession$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lo/fromMediaSession$ICustomTabsCallback;->ICustomTabsCallback:Landroid/content/Intent;

    .line 81
    iput-object p2, p0, Lo/fromMediaSession$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayList;

    return-void
.end method
