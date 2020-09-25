.class final Lo/getScore;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/SubmitScoreRequestJsonAdapter;


# direct methods
.method constructor <init>(Lo/SubmitScoreRequestJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/getScore;->onMessageChannelReady:Lo/SubmitScoreRequestJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/getScore;->onMessageChannelReady:Lo/SubmitScoreRequestJsonAdapter;

    iget-object v0, v0, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    return-void
.end method
