.class public final Lo/RemoteControlCardJsonAdapter;
.super Lo/CategoryJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final extraCallback:Lo/getTotalCreditLimit$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/getTotalCreditLimit$onMessageChannelReady;)V
    .locals 0

    invoke-direct {p0}, Lo/CategoryJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/RemoteControlCardJsonAdapter;->extraCallback:Lo/getTotalCreditLimit$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/DataItemBackgroundJsonAdapter;)V
    .locals 2

    iget-object v0, p0, Lo/RemoteControlCardJsonAdapter;->extraCallback:Lo/getTotalCreditLimit$onMessageChannelReady;

    new-instance v1, Lo/DataListItem;

    invoke-direct {v1, p1}, Lo/DataListItem;-><init>(Lo/DataItemBackgroundJsonAdapter;)V

    invoke-interface {v0, v1}, Lo/getTotalCreditLimit$onMessageChannelReady;->onMessageChannelReady(Lo/getTotalCreditLimit;)V

    return-void
.end method
