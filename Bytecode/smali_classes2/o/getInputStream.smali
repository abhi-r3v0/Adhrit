.class final synthetic Lo/getInputStream;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dc;


# instance fields
.field private final onMessageChannelReady:Lo/da;


# direct methods
.method constructor <init>(Lo/da;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getInputStream;->onMessageChannelReady:Lo/da;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/getInputStream;->onMessageChannelReady:Lo/da;

    invoke-virtual {v0}, Lo/da;->onMessageChannelReady()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
