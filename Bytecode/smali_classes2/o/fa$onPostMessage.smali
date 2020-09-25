.class public abstract Lo/fa$onPostMessage;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/fa$onPostMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lo/fa<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zzc:Lo/eT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/eT<",
            "Lo/fa$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    .line 2
    invoke-static {}, Lo/eT;->onMessageChannelReady()Lo/eT;

    move-result-object v0

    iput-object v0, p0, Lo/fa$onPostMessage;->zzc:Lo/eT;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Lo/eT;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/eT<",
            "Lo/fa$extraCallback;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lo/fa$onPostMessage;->zzc:Lo/eT;

    invoke-virtual {v0}, Lo/eT;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/fa$onPostMessage;->zzc:Lo/eT;

    invoke-virtual {v0}, Lo/eT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/eT;

    iput-object v0, p0, Lo/fa$onPostMessage;->zzc:Lo/eT;

    .line 5
    :cond_0
    iget-object v0, p0, Lo/fa$onPostMessage;->zzc:Lo/eT;

    return-object v0
.end method
