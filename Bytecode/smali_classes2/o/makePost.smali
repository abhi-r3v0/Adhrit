.class abstract Lo/makePost;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/currentHashLength;
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lo/makePost;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/appendKey;->onMessageChannelReady(Ljava/lang/String;)Lo/currentHashLength;

    move-result-object v0

    return-object v0
.end method
