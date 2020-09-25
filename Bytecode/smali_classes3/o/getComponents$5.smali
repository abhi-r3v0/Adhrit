.class final Lo/getComponents$5;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getComponents;


# direct methods
.method constructor <init>(Lo/getComponents;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lo/getComponents$5;->ICustomTabsCallback:Lo/getComponents;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    .line 387
    iget-object p1, p0, Lo/getComponents$5;->ICustomTabsCallback:Lo/getComponents;

    .line 1126
    iget-object p1, p1, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz p1, :cond_0

    .line 388
    iget-object p1, p0, Lo/getComponents$5;->ICustomTabsCallback:Lo/getComponents;

    .line 2126
    iget-object p1, p1, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 388
    invoke-virtual {p1, p2}, Lo/setFirebaseUIVersion;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 390
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
