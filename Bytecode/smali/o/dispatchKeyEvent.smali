.class public final Lo/dispatchKeyEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/getDrawerToggleDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getDrawerToggleDelegate<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lo/getDrawerToggleDelegate;

    invoke-direct {v0}, Lo/getDrawerToggleDelegate;-><init>()V

    iput-object v0, p0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    return-void
.end method
