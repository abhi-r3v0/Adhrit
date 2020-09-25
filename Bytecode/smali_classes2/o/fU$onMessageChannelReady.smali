.class public abstract Lo/fU$onMessageChannelReady;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/fU$onMessageChannelReady<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lo/fU<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zzre:Lo/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/av<",
            "Lo/fU$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    .line 2
    invoke-static {}, Lo/av;->ICustomTabsCallback()Lo/av;

    move-result-object v0

    iput-object v0, p0, Lo/fU$onMessageChannelReady;->zzre:Lo/av;

    return-void
.end method
