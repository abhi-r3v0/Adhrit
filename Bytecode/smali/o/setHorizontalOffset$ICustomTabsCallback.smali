.class public final Lo/setHorizontalOffset$ICustomTabsCallback;
.super Lo/setHorizontalOffset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setHorizontalOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private volatile ICustomTabsCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lo/setHorizontalOffset;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lo/setHorizontalOffset$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lo/setHorizontalOffset$ICustomTabsCallback;->ICustomTabsCallback:Z

    return-void
.end method
