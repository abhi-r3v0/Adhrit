.class final Lo/rate$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/rate;


# direct methods
.method constructor <init>(Lo/rate;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lo/rate$2;->onNavigationEvent:Lo/rate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 343
    iget-object v0, p0, Lo/rate$2;->onNavigationEvent:Lo/rate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/rate;->ICustomTabsCallback(I)V

    return-void
.end method
