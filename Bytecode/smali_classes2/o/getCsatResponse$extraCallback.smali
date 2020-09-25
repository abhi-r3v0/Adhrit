.class final Lo/getCsatResponse$extraCallback;
.super Lo/getChannelsWithAllMembersAway;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCsatResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/setChipIconTint;


# direct methods
.method constructor <init>(Lo/setChipIconTint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getChannelsWithAllMembersAway;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getCsatResponse$extraCallback;->onMessageChannelReady:Lo/setChipIconTint;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    .line 4
    iget-object v0, p0, Lo/getCsatResponse$extraCallback;->onMessageChannelReady:Lo/setChipIconTint;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lo/setChipIconTint;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 6
    iget-object v0, p0, Lo/getCsatResponse$extraCallback;->onMessageChannelReady:Lo/setChipIconTint;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
