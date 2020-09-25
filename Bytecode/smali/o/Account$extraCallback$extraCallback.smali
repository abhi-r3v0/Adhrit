.class final Lo/Account$extraCallback$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Account$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/Account;

.field public final onNavigationEvent:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lo/Account;)V
    .locals 0

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p1, p0, Lo/Account$extraCallback$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    .line 736
    iput-object p2, p0, Lo/Account$extraCallback$extraCallback;->ICustomTabsCallback:Lo/Account;

    return-void
.end method
