.class final Lo/FetchingScoresBlock;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/LeaderBoardDetailsResponse;


# direct methods
.method constructor <init>(Lo/LeaderBoardDetailsResponse;)V
    .locals 0

    iput-object p1, p0, Lo/FetchingScoresBlock;->onMessageChannelReady:Lo/LeaderBoardDetailsResponse;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lo/FetchingScoresBlock;->onMessageChannelReady:Lo/LeaderBoardDetailsResponse;

    invoke-static {p1}, Lo/LeaderBoardDetailsResponse;->onPostMessage(Lo/LeaderBoardDetailsResponse;)V

    return-void
.end method
