.class public abstract Lo/getAttribute;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ep;


# instance fields
.field private ICustomTabsCallback:Z

.field private onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/getAttribute;->ICustomTabsCallback:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lo/getAttribute;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/ep;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lo/getAttribute;->ICustomTabsCallback()Lo/ep;

    move-result-object v0

    return-object v0
.end method
