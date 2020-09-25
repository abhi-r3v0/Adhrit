.class final Lo/LeaderBoardDetailsResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onPostMessage:Lo/LeaderBoardDetailsResponse;


# direct methods
.method constructor <init>(Lo/LeaderBoardDetailsResponse;)V
    .locals 0

    iput-object p1, p0, Lo/LeaderBoardDetailsResponseJsonAdapter;->onPostMessage:Lo/LeaderBoardDetailsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/LeaderBoardDetailsResponseJsonAdapter;->onPostMessage:Lo/LeaderBoardDetailsResponse;

    invoke-static {v0}, Lo/LeaderBoardDetailsResponse;->onPostMessage(Lo/LeaderBoardDetailsResponse;)V

    return-void
.end method
