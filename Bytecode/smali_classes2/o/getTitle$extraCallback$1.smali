.class Lo/getTitle$extraCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/build$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTitle$extraCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getTitle$extraCallback;

.field final synthetic onNavigationEvent:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Lo/getTitle$extraCallback;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lo/getTitle$extraCallback$1;->extraCallback:Lo/getTitle$extraCallback;

    iput-object p2, p0, Lo/getTitle$extraCallback$1;->onNavigationEvent:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback()V
    .locals 1

    .line 639
    iget-object v0, p0, Lo/getTitle$extraCallback$1;->onNavigationEvent:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
