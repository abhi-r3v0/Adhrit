.class final Lo/requestExtraBinder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestExtraBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/requestExtraBinder;


# direct methods
.method constructor <init>(Lo/requestExtraBinder;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lo/requestExtraBinder$4;->ICustomTabsCallback:Lo/requestExtraBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 413
    iget-object v0, p0, Lo/requestExtraBinder$4;->ICustomTabsCallback:Lo/requestExtraBinder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    return-void
.end method
