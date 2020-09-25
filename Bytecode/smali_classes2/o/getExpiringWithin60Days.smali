.class public final Lo/getExpiringWithin60Days;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private onMessageChannelReady:Lo/MetaSlotMachineJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/MetaSlotMachineJsonAdapter;

    invoke-direct {v0}, Lo/MetaSlotMachineJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/getExpiringWithin60Days;->onMessageChannelReady:Lo/MetaSlotMachineJsonAdapter;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/MetaSlotMachineJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/getExpiringWithin60Days;->onMessageChannelReady:Lo/MetaSlotMachineJsonAdapter;

    return-object v0
.end method
