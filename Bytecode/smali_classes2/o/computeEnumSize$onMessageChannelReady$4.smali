.class final Lo/computeEnumSize$onMessageChannelReady$4;
.super Lo/computeEnumSize$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeEnumSize$onMessageChannelReady;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/computeEnumSize<",
        "TK;TV;>.extraCallback<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/computeEnumSize$onMessageChannelReady;)V
    .locals 0

    .line 566
    iget-object p1, p1, Lo/computeEnumSize$onMessageChannelReady;->onMessageChannelReady:Lo/computeEnumSize;

    invoke-direct {p0, p1}, Lo/computeEnumSize$extraCallback;-><init>(Lo/computeEnumSize;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1568
    invoke-virtual {p0}, Lo/computeEnumSize$onMessageChannelReady$4;->onMessageChannelReady()Lo/computeEnumSize$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method
