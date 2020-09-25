.class public abstract Lo/updateChildren;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/fullLimitUpdateChild;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lo/updateChildren;->ICustomTabsCallback()Lo/fullLimitUpdateChild;

    move-result-object v0

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->close()V

    return-void
.end method

.method public abstract onMessageChannelReady()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
